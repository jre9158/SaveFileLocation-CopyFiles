object NfirsFireForm: TNfirsFireForm
  Left = 153
  Top = 27
  Caption = 'NfirsFireForm'
  ClientHeight = 684
  ClientWidth = 650
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
  object NfirsFirScrollBox: TMyScrollBox
    Left = 0
    Top = 0
    Width = 650
    Height = 684
    VertScrollBar.Range = 850
    Align = alClient
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    CanPan = False
    object FirePanel: TPanel
      Left = 705
      Top = 80
      Width = 409
      Height = 72
      BevelOuter = bvNone
      Caption = 'FirePanel'
      Color = clYellow
      TabOrder = 0
      Visible = False
      object Panel24: TPanel
        Left = 3
        Top = 3
        Width = 403
        Height = 66
        BevelOuter = bvNone
        Caption = 'Panel5'
        Color = clBlack
        TabOrder = 0
        object BlinkLabel1: TBlinkLabel
          Left = 9
          Top = 3
          Width = 380
          Height = 59
          Alignment = taCenter
          AutoSize = False
          Caption = 
            'This Fire Module is only used if it is an incident type of 100 s' +
            'eries'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
          Blink = True
          BlinkColor = clRed
        end
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 629
      Height = 209
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
      object BPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 231
        Height = 209
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
        LeftCaption = 'B'
        RightCaption = 'B - Property Details'
        Highlightcolor = clBlack
        FullHeight = 0
        object BLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 207
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
        object Label6: TLabel
          Left = 46
          Top = 53
          Width = 158
          Height = 36
          AutoSize = False
          Caption = 
            'Estimated number of residential living units in building of orig' +
            'in whether or not all units became involved.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label7: TLabel
          Left = 9
          Top = 27
          Width = 16
          Height = 25
          AutoSize = False
          Caption = 'B'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 9
          Top = 89
          Width = 16
          Height = 25
          AutoSize = False
          Caption = 'B'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 45
          Top = 121
          Width = 119
          Height = 11
          Caption = 'Number of buildings involved'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 9
          Top = 139
          Width = 16
          Height = 25
          AutoSize = False
          Caption = 'B'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 45
          Top = 178
          Width = 114
          Height = 11
          Caption = 'Acres burned (outside fires)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object LocationLabel: TLabel
          Left = 33
          Top = 7
          Width = 101
          Height = 16
          Caption = 'Property Details'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 16
          Top = 44
          Width = 13
          Height = 12
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
        object Label12: TLabel
          Left = 14
          Top = 108
          Width = 17
          Height = 12
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
        object Label13: TLabel
          Left = 20
          Top = 155
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
        object NotResFlagField: TAlpineCheckBox
          Left = 100
          Top = 33
          Width = 103
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'Not Residential'
          ReturnIsTab = False
          TabOrder = 3
          OnClick = NotResFlagFieldClick
          Version = '1.6.0.0'
          DataField = 'NotResFlag'
          ValueChecked = 'Y'
        end
        object BuildNoInvField: TAlpineCheckBox
          Left = 100
          Top = 92
          Width = 126
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'Buildings not Involved'
          ReturnIsTab = False
          TabOrder = 4
          OnClick = BuildNoInvFieldClick
          Version = '1.6.0.0'
          DataField = 'BuildNoInv'
          ValueChecked = 'Y'
        end
        object AcreNoneField: TAlpineCheckBox
          Left = 100
          Top = 138
          Width = 126
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 6
          OnClick = AcresNoneClick
          Version = '1.6.0.0'
          DataField = 'AcreNone'
          ValueChecked = 'Y'
        end
        object LESSONEACRField: TAlpineCheckBox
          Left = 100
          Top = 154
          Width = 126
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'Less than one acre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 5
          OnClick = LESSONEACRFieldClick
          Version = '1.6.0.0'
          DataField = 'LESSONEACR'
          ValueChecked = 'Y'
        end
        object NumResUnitField: TAlpineEdit
          Left = 45
          Top = 31
          Width = 53
          Height = 21
          DataType = pftReal
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
          MaxLength = 5
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '9,999'
          TabOrder = 0
          DataField = 'NUMRESUNIT'
          RightAlign = True
          CurrentPos = -1
          Text = '    0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object NumBuildField: TAlpineEdit
          Left = 45
          Top = 92
          Width = 53
          Height = 21
          DataType = pftReal
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
          MaxLength = 7
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '999,999'
          TabOrder = 1
          DataField = 'NUMBUILD'
          RightAlign = True
          CurrentPos = -1
          Text = '      0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object AcreBurnField: TAlpineEdit
          Left = 45
          Top = 142
          Width = 53
          Height = 21
          DataType = pftReal
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
          MaxLength = 7
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '999,999'
          TabOrder = 2
          DataField = 'ACREBURN'
          RightAlign = True
          CurrentPos = -1
          Text = '      0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
      end
      object CPanel: TAlpinePanel
        Left = 231
        Top = 0
        Width = 398
        Height = 209
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
        LeftCaption = 'C'
        RightCaption = 'C - Onsite Materials'
        Highlightcolor = clBlack
        FullHeight = 0
        object CLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 207
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
        end
        object Label26: TLabel
          Left = 125
          Top = 5
          Width = 195
          Height = 48
          Alignment = taCenter
          AutoSize = False
          Caption = 
            'Complete if there were any significant amounts of commercial, in' +
            'dustrial, energy or agricultural products or materials on the pr' +
            'operty, whether or not they become involved'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label27: TLabel
          Left = 5
          Top = 70
          Width = 102
          Height = 11
          Caption = 'Enter up to three codes.  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label32: TLabel
          Left = 6
          Top = 109
          Width = 76
          Height = 11
          Caption = 'On-site material (1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 6
          Top = 151
          Width = 78
          Height = 11
          Caption = 'On-site material (2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 6
          Top = 191
          Width = 78
          Height = 11
          Caption = 'On-site material (3)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label37: TLabel
          Left = 205
          Top = 109
          Width = 58
          Height = 11
          Caption = 'Storage Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label90: TLabel
          Left = 205
          Top = 151
          Width = 58
          Height = 11
          Caption = 'Storage Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label93: TLabel
          Left = 205
          Top = 192
          Width = 58
          Height = 11
          Caption = 'Storage Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 30
          Top = 7
          Width = 93
          Height = 28
          Caption = 'Onsite Materials or Products'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object onsite1field: TAlpineLookup
          Left = 6
          Top = 88
          Width = 197
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
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'ONSITE1'
          DisplayField = 'CODE'
          ReferencingTable = 'N5ONSITEMAT'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object onsite2field: TAlpineLookup
          Left = 6
          Top = 129
          Width = 197
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
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'ONSITE2'
          DisplayField = 'CODE'
          ReferencingTable = 'N5ONSITEMAT'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object onsite3field: TAlpineLookup
          Left = 6
          Top = 170
          Width = 197
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'ONSITE3'
          DisplayField = 'CODE'
          ReferencingTable = 'N5ONSITEMAT'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object storage1field: TAlpineLookup
          Left = 205
          Top = 89
          Width = 192
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
          DataFieldIsCharacter = True
          PictureMask = '!'
          EditWidth = 25
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'STORAGE1'
          DisplayField = 'CODE'
          ReferencingTable = 'N5ONSITESTOR'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object storage2field: TAlpineLookup
          Left = 205
          Top = 129
          Width = 192
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!'
          EditWidth = 25
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'STORAGE2'
          DisplayField = 'CODE'
          ReferencingTable = 'N5ONSITESTOR'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object storage3field: TAlpineLookup
          Left = 205
          Top = 170
          Width = 192
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!'
          EditWidth = 25
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'STORAGE3'
          DisplayField = 'CODE'
          ReferencingTable = 'N5ONSITESTOR'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object OnsiteNoneField: TAlpineCheckBox
          Left = 15
          Top = 44
          Width = 65
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 6
          OnClick = OnsiteNoneFieldClick
          Version = '1.6.0.0'
          DataField = 'ONSITENONE'
          ValueChecked = 'NNN'
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 209
      Width = 629
      Height = 203
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 2
      object DPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 231
        Height = 203
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
        LeftCaption = 'D'
        RightCaption = 'D - Ignition'
        Highlightcolor = clBlack
        FullHeight = 0
        object DLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 201
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
        end
        object Label96: TLabel
          Left = 7
          Top = 59
          Width = 71
          Height = 11
          Caption = 'Area of fire origin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label101: TLabel
          Left = 7
          Top = 101
          Width = 52
          Height = 11
          Caption = 'Heat Source'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label105: TLabel
          Left = 7
          Top = 143
          Width = 68
          Height = 11
          Caption = 'Item First Ignited'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label122: TLabel
          Left = 7
          Top = 185
          Width = 117
          Height = 11
          Caption = 'Type of Material First Ignited'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 33
          Top = 7
          Width = 48
          Height = 16
          Caption = 'Ignition'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AreaOriginField: TAlpineLookup
          Left = 8
          Top = 36
          Width = 221
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
          DataFieldIsCharacter = True
          PictureMask = '!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'AREAORIGIN'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FIREORIGIN'
          ReferencingField = 'code'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object HeatSourceField: TAlpineLookup
          Left = 8
          Top = 78
          Width = 221
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
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'HEATSOURCE'
          DisplayField = 'CODE'
          ReferencingTable = 'N5HEATSOURCE'
          ReferencingField = 'code'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object ItemFirstField: TAlpineLookup
          Left = 7
          Top = 121
          Width = 221
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
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'ITEMFIRST'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FIRSTIGNIT'
          ReferencingField = 'code'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object TypeMatField: TAlpineLookup
          Left = 7
          Top = 163
          Width = 221
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'TYPEMAT'
          DisplayField = 'CODE'
          ReferencingTable = 'N5TYPMAT'
          ReferencingField = 'code'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object ConfinedToField: TAlpineCheckBox
          Left = 80
          Top = 142
          Width = 139
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'Confined to Object or Origin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 4
          Version = '1.6.0.0'
          DataField = 'CONFINEDTO'
          ValueChecked = '1'
        end
      end
      object EPanel: TAlpinePanel
        Left = 231
        Top = 0
        Width = 398
        Height = 203
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
        RightCaption = 'E - Cause of Ignition'
        Highlightcolor = clBlack
        FullHeight = 0
        object ELabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 201
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
        end
        object Label31: TLabel
          Left = 29
          Top = 7
          Width = 107
          Height = 16
          Caption = 'Cause of Ignition'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 53
          Width = 70
          Height = 11
          Caption = 'Cause of Ignition'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 17
          Top = 15
          Width = 13
          Height = 12
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
        object Shape2: TShape
          Left = -1
          Top = 70
          Width = 203
          Height = 2
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object Label25: TLabel
          Left = 14
          Top = 92
          Width = 17
          Height = 12
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
        object Label28: TLabel
          Left = 9
          Top = 73
          Width = 16
          Height = 25
          AutoSize = False
          Caption = 'E'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 29
          Top = 79
          Width = 132
          Height = 32
          Caption = 'Factors Contributing to Ignition'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object ContIgn1Label: TLabel
          Left = 3
          Top = 146
          Width = 133
          Height = 11
          Caption = 'Factor contributing to ignition (1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object ContIgn2Label: TLabel
          Left = 3
          Top = 186
          Width = 135
          Height = 11
          Caption = 'Factor contributing to ignition (2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Shape3: TShape
          Left = 200
          Top = -1
          Width = 2
          Height = 205
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object Shape15: TShape
          Left = 201
          Top = 133
          Width = 701
          Height = 1
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object Label123: TLabel
          Left = 205
          Top = 155
          Width = 72
          Height = 22
          Caption = 'Estimated age of person involved'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object Label124: TLabel
          Left = 234
          Top = 182
          Width = 31
          Height = 16
          Alignment = taRightJustify
          Caption = 'Sex:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
        end
        object CauseIgnField: TAlpineLookup
          Left = 3
          Top = 32
          Width = 194
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
          OnSuccessfulValidate = CauseIgnFieldSuccessfulValidate
          DataFieldIsCharacter = True
          PictureMask = '!!'
          EditWidth = 25
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'CAUSEIGN'
          DisplayField = 'CODE'
          ReferencingTable = 'N5IGNCAUSE'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object ContIgn1Field: TAlpineLookup
          Left = 3
          Top = 125
          Width = 194
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
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'CONTIGN1'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FACTIGN'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object ContIgn2Field: TAlpineLookup
          Left = 3
          Top = 165
          Width = 194
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
          PictureMask = '!!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'CONTIGN2'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FACTIGN'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object Human7Field: TAlpineCheckBox
          Left = 217
          Top = 135
          Width = 153
          Height = 19
          Alignment = taLeftJustify
          ButtonType = btClassic
          Caption = 'Age was a factor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 3
          OnClick = Human7FieldClick
          Version = '1.6.0.0'
          DataField = 'Human7'
          ValueChecked = '7'
        end
        object CauseAgeField: TAlpineEdit
          Left = 280
          Top = 156
          Width = 29
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
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify, efoTrimBlanks]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '999'
          TabOrder = 4
          DataField = 'CAUSEAGE'
          RightAlign = True
          CurrentPos = -1
        end
        object HumanSexField: TAlpineLookup
          Left = 268
          Top = 179
          Width = 80
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!'
          EditWidth = 20
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'HUMANSEX'
          DisplayField = 'CODE'
          ReferencingTable = 'N5GENDER'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object HumanFactorsPanel: TPanel
          Left = 206
          Top = 1
          Width = 185
          Height = 131
          Color = clLime
          ParentBackground = False
          TabOrder = 6
          object E3Label: TLabel
            Left = -1
            Top = 0
            Width = 27
            Height = 50
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
          end
          object Label35: TLabel
            Left = 20
            Top = 17
            Width = 17
            Height = 12
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
          object Label118: TLabel
            Left = 30
            Top = 6
            Width = 95
            Height = 16
            Caption = 'Human Factors'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ShowAccelChar = False
            Transparent = True
          end
          object Human1Field: TAlpineCheckBox
            Left = 28
            Top = 30
            Width = 68
            Height = 17
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'Asleep'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 0
            Version = '1.6.0.0'
            DataField = 'Human1'
            ValueChecked = '1'
          end
          object Human2Field: TAlpineCheckBox
            Left = 28
            Top = 46
            Width = 153
            Height = 22
            Alignment = taLeftJustify
            ButtonType = btClassic
            ButtonVertAlign = tlCenter
            Caption = 'Impaired by alcohol or drugs'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 1
            Transparent = True
            Version = '1.6.0.0'
            DataField = 'Human2'
            ValueChecked = '2'
          end
          object Human3Field: TAlpineCheckBox
            Left = 28
            Top = 63
            Width = 153
            Height = 21
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'Unattended persons'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 2
            Version = '1.6.0.0'
            DataField = 'Human3'
            ValueChecked = '3'
          end
          object Human4Field: TAlpineCheckBox
            Left = 28
            Top = 79
            Width = 153
            Height = 21
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'Possibly mentally disabled'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 3
            Version = '1.6.0.0'
            DataField = 'Human4'
            ValueChecked = '4'
          end
          object Human5Field: TAlpineCheckBox
            Left = 28
            Top = 95
            Width = 153
            Height = 21
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'Physically disabled'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 4
            Version = '1.6.0.0'
            DataField = 'Human5'
            ValueChecked = '5'
          end
          object Human6Field: TAlpineCheckBox
            Left = 28
            Top = 111
            Width = 153
            Height = 21
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'Multiple persons involved'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 5
            Version = '1.6.0.0'
            DataField = 'Human6'
            ValueChecked = '6'
          end
          object NoHumanFactorsCheckBox: TAlpineCheckBox
            Left = 116
            Top = 29
            Width = 49
            Height = 21
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'None'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 6
            OnClick = NoHumanFactorsCheckBoxClick
            Version = '1.6.0.0'
            DataField = 'NOCAUSE'
            ValueChecked = 'N'
          end
        end
        object ExposureCheck: TAlpineCheckBox
          Left = 137
          Top = 2
          Width = 63
          Height = 38
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlCenter
          Caption = 'Check if Exposure'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 7
          OnClick = ExposureCheckClick
          Version = '1.6.0.0'
          DataField = 'EXPYN'
          ValueChecked = 'NNN'
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 412
      Width = 629
      Height = 222
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 3
      object FPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 432
        Height = 222
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
        RightCaption = 'F - Equipment Involved'
        Highlightcolor = clBlack
        FullHeight = 400
        object FLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 220
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
        object Shape17: TShape
          Left = 34
          Top = 280
          Width = 1
          Height = 218
        end
        object Label139: TLabel
          Left = 6
          Top = 284
          Width = 19
          Height = 11
          Caption = 'Year'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label148: TLabel
          Left = 9
          Top = 50
          Width = 81
          Height = 11
          Caption = 'Equipment Involved'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 9
          Top = 89
          Width = 25
          Height = 11
          Caption = 'Brand'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 9
          Top = 167
          Width = 27
          Height = 11
          Caption = 'Model'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 9
          Top = 128
          Width = 31
          Height = 11
          Caption = 'Serial #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 9
          Top = 206
          Width = 19
          Height = 11
          Caption = 'Year'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 31
          Top = 7
          Width = 194
          Height = 16
          Caption = 'Equipment Involved in Ignition'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape4: TShape
          Left = 230
          Top = -1
          Width = 2
          Height = 223
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object F2Label: TLabel
          Left = 232
          Top = 1
          Width = 27
          Height = 220
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
        object Label41: TLabel
          Left = 244
          Top = 17
          Width = 17
          Height = 12
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
        object Label42: TLabel
          Left = 264
          Top = 6
          Width = 113
          Height = 16
          Caption = 'Equipment Power'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label43: TLabel
          Left = 9
          Top = 17
          Width = 17
          Height = 12
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
        object Shape5: TShape
          Left = 231
          Top = 87
          Width = 233
          Height = 2
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object Label44: TLabel
          Left = 264
          Top = 98
          Width = 137
          Height = 16
          Caption = 'Equipment Portability'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
        end
        object Label45: TLabel
          Left = 240
          Top = 90
          Width = 16
          Height = 25
          AutoSize = False
          Caption = 'F'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label46: TLabel
          Left = 244
          Top = 107
          Width = 17
          Height = 12
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
        object EquBrandField: TAlpineEdit
          Left = 9
          Top = 69
          Width = 203
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
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 1
          DataField = 'EQUBRAND'
          CurrentPos = -1
        end
        object EquModelField: TAlpineEdit
          Left = 9
          Top = 147
          Width = 203
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
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 3
          DataField = 'EQUMODEL'
          CurrentPos = -1
        end
        object EquSerialField: TAlpineEdit
          Left = 9
          Top = 108
          Width = 203
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
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 2
          DataField = 'EQUSERIAL'
          CurrentPos = -1
        end
        object EquYearField: TAlpineEdit
          Left = 9
          Top = 186
          Width = 51
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
          PictureMask = '9999'
          TabOrder = 4
          DataField = 'EQUYEAR'
          CurrentPos = -1
        end
        object EquPowerField: TAlpineLookup
          Left = 236
          Top = 34
          Width = 192
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'EQUPOWER'
          DisplayField = 'CODE'
          ReferencingTable = 'N5EQUIPPOWER'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object EquPortField: TAlpineLookup
          Left = 236
          Top = 124
          Width = 192
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'EQUPORT'
          DisplayField = 'CODE'
          ReferencingTable = 'N5EQUIPPORT'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object EquInvField: TAlpineLookup
          Left = 9
          Top = 30
          Width = 216
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
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'EQUINV'
          DisplayField = 'CODE'
          ReferencingTable = 'N5EQUIP'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
      end
      object GPanel: TAlpinePanel
        Left = 432
        Top = 0
        Width = 197
        Height = 222
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
        LeftCaption = 'G'
        RightCaption = 'G - Fire Suppression'
        Highlightcolor = clBlack
        FullHeight = 400
        object GLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 220
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
        object Shape1: TShape
          Left = 34
          Top = 280
          Width = 1
          Height = 218
        end
        object Label22: TLabel
          Left = 6
          Top = 246
          Width = 31
          Height = 11
          Caption = 'Serial #'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 6
          Top = 284
          Width = 19
          Height = 11
          Caption = 'Year'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label143: TLabel
          Left = 5
          Top = 49
          Width = 98
          Height = 11
          Caption = 'Enter up to three codes.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label144: TLabel
          Left = 5
          Top = 87
          Width = 107
          Height = 11
          Caption = 'Fire suppression factor (1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label145: TLabel
          Left = 5
          Top = 135
          Width = 109
          Height = 11
          Caption = 'Fire suppression factor (2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label146: TLabel
          Left = 5
          Top = 186
          Width = 109
          Height = 11
          Caption = 'Fire suppression factor (3)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label47: TLabel
          Left = 29
          Top = 6
          Width = 107
          Height = 32
          Caption = 'Fire Suppression Factors'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ShowAccelChar = False
          Transparent = True
          WordWrap = True
        end
        object FireSupp1Field: TAlpineLookup
          Left = 5
          Top = 67
          Width = 164
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
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'FIRESUPP1'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FIRESUP'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object FireSupp2Field: TAlpineLookup
          Left = 5
          Top = 115
          Width = 164
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
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'FIRESUPP2'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FIRESUP'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object FireSupp3Field: TAlpineLookup
          Left = 5
          Top = 165
          Width = 164
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = '!!!'
          EditWidth = 35
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'FIRESUPP3'
          DisplayField = 'CODE'
          ReferencingTable = 'N5FIRESUP'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 3
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object NoSuppressionFactorsCheckBox: TAlpineCheckBox
          Left = 114
          Top = 46
          Width = 49
          Height = 17
          Alignment = taLeftJustify
          ButtonType = btClassic
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 0
          OnClick = NoSuppressionFactorsCheckBoxClick
          Version = '1.6.0.0'
          DataField = 'NOFIRESUPP'
          ValueChecked = 'N'
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 634
      Width = 629
      Height = 216
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 4
      object HPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 629
        Height = 216
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
        LeftCaption = 'H'
        RightCaption = 'H - Mobile Involved'
        Highlightcolor = clBlack
        FullHeight = 300
        object HLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 214
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
        object Label30: TLabel
          Left = 14
          Top = 62
          Width = 104
          Height = 11
          Caption = 'Mobile Property Involved'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label164: TLabel
          Left = 12
          Top = 138
          Width = 89
          Height = 11
          Caption = 'Mobile Property Type'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label167: TLabel
          Left = 12
          Top = 187
          Width = 93
          Height = 11
          Caption = 'Mobile Property Make'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label165: TLabel
          Left = 265
          Top = 42
          Width = 96
          Height = 11
          Caption = 'Mobile Property Model'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label166: TLabel
          Left = 265
          Top = 124
          Width = 91
          Height = 11
          Caption = 'License Plate Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label168: TLabel
          Left = 265
          Top = 79
          Width = 19
          Height = 11
          Caption = 'Year'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label169: TLabel
          Left = 429
          Top = 124
          Width = 22
          Height = 11
          Caption = 'State'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label170: TLabel
          Left = 265
          Top = 167
          Width = 50
          Height = 11
          Caption = 'VIN Number'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 18
          Top = 16
          Width = 12
          Height = 12
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
        object Label50: TLabel
          Left = 31
          Top = 7
          Width = 159
          Height = 16
          Caption = 'Mobile Property Involved'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape6: TShape
          Left = 230
          Top = -1
          Width = 2
          Height = 84
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object Shape7: TShape
          Left = -1
          Top = 82
          Width = 233
          Height = 2
          Brush.Color = clGray
          Pen.Color = clGray
        end
        object Label52: TLabel
          Left = 15
          Top = 99
          Width = 17
          Height = 12
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
        object Label51: TLabel
          Left = 5
          Top = 84
          Width = 16
          Height = 25
          AutoSize = False
          Caption = 'H'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object MobTypeField: TAlpineLookup
          Left = 12
          Top = 115
          Width = 233
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
          DataFieldIsCharacter = True
          PictureMask = '!!'
          EditWidth = 50
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'MOBTYPE'
          DisplayField = 'CODE'
          ReferencingTable = 'MobTy'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object MobMakeField: TAlpineLookup
          Left = 12
          Top = 165
          Width = 239
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
          DataField = 'MOBMAKE'
          DisplayField = 'CODE'
          ReferencingTable = 'MobMa'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object MobModelField: TAlpineEdit
          Left = 265
          Top = 20
          Width = 308
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
          MaxLength = 25
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 3
          DataField = 'MOBMODEL'
          CurrentPos = -1
        end
        object MobLicField: TAlpineEdit
          Left = 265
          Top = 102
          Width = 158
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
          PictureMask = 'XXXXXXXXXX'
          TabOrder = 5
          DataField = 'MOBLIC'
          CurrentPos = -1
        end
        object MobYearField: TAlpineEdit
          Left = 265
          Top = 57
          Width = 44
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
          PictureMask = '9999'
          TabOrder = 4
          DataField = 'MOBYEAR'
          CurrentPos = -1
        end
        object MobStateField: TAlpineEdit
          Left = 428
          Top = 102
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
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '!!'
          TabOrder = 6
          DataField = 'MOBSTATE'
          CurrentPos = -1
        end
        object MobSerField: TAlpineEdit
          Left = 265
          Top = 145
          Width = 191
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
          MaxLength = 17
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXX'
          TabOrder = 7
          DataField = 'MOBSER'
          CurrentPos = -1
        end
        object MobInvField: TAlpineLookup
          Left = 14
          Top = 38
          Width = 210
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
          OnSuccessfulValidate = MobInvFieldSuccessfulValidate
          DataFieldIsCharacter = True
          PictureMask = '!'
          EditWidth = 50
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'MOBINV'
          DisplayField = 'CODE'
          ReferencingTable = 'MobI'
          ReferencingField = 'CODE'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
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
    Left = 600
    Top = 6
  end
end
