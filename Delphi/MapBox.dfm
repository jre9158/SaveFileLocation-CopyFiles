inherited MapBoxForm: TMapBoxForm
  Left = 163
  Top = 171
  Caption = 'GIS Point Entry Screen'
  ClientHeight = 539
  ClientWidth = 1055
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1071
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited BaseBottomPanel: TAdvPanel
    Top = 506
    Width = 1055
    TabOrder = 2
    ExplicitTop = 506
    ExplicitWidth = 1055
    FullHeight = 37
    inherited NewButton: TAlpineGlowButton
      Visible = False
    end
    inherited PrintButton: TAlpineGlowButton
      Left = 865
      ExplicitLeft = 865
    end
    inherited CloseButton: TAlpineGlowButton
      Left = 991
      ExplicitLeft = 991
    end
    inherited SaveButton: TAlpineGlowButton
      Left = 928
      Position = bpLeft
      ExplicitLeft = 928
    end
  end
  inherited BaseStatusPanel: TPanel
    Top = 503
    Width = 1055
    Height = 3
    TabOrder = 1
    Visible = False
    ExplicitTop = 503
    ExplicitWidth = 1055
    ExplicitHeight = 3
    inherited recid: TLabel
      Left = 679
      Height = 1
      ExplicitLeft = 332
      ExplicitHeight = 1
    end
    inherited SecRecLockLabel: TLabel
      Width = 678
      Height = 1
      ExplicitWidth = 331
      ExplicitHeight = 1
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 1055
    Height = 503
    Align = alClient
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object MapPanel: TAlpinePanel
      Left = 504
      Top = 0
      Width = 551
      Height = 503
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
      BorderColor = clBtnFace
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -13
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Text = 
        'Move pointer to better position the location of the Point of Int' +
        'erest'
      Caption.Visible = True
      ColorTo = clBtnFace
      ColorMirror = clBtnFace
      ColorMirrorTo = clBtnFace
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      FullHeight = 0
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 504
      Height = 503
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object Panel0B: TAlpinePanel
        Left = 0
        Top = 0
        Width = 504
        Height = 271
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
        Caption.Font.Height = -13
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Text = 'General'
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
        object InvNumLabel: TLabel
          Left = 10
          Top = 75
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Description'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label1: TLabel
          Left = 10
          Top = 199
          Width = 74
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Latitude'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 10
          Top = 223
          Width = 74
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Longitude'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 10
          Top = 108
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'API Key'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 10
          Top = 25
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Unique Code'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label2: TLabel
          Left = 10
          Top = 132
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Style'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 10
          Top = 248
          Width = 74
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Zoom'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 10
          Top = 155
          Width = 74
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dark Style'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 188
          Top = 200
          Width = 162
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Note: Must be in Decimal Format'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DescField: TAlpineEdit
          Left = 91
          Top = 73
          Width = 383
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 88
          ParentFont = False
          PictureMask = 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 1
          DataField = 'DESCR'
          CurrentPos = -1
        end
        object LatitudeField: TAlpineEdit
          Left = 91
          Top = 196
          Width = 91
          Height = 21
          DataType = pftReal
          AutoSize = False
          Controller = OvcController
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
          TabOrder = 5
          DataField = 'DEFLATITUDE'
          RightAlign = True
          CurrentPos = -1
          Text = '  0.00000000'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object LongitudeField: TAlpineEdit
          Left = 91
          Top = 220
          Width = 91
          Height = 21
          DataType = pftReal
          AutoSize = False
          Controller = OvcController
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
          TabOrder = 6
          DataField = 'DEFLONGITUDE'
          RightAlign = True
          CurrentPos = -1
          Text = '  0.00000000'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object APIKeyField: TAlpineEdit
          Left = 91
          Top = 106
          Width = 383
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 255
          ParentFont = False
          PictureMask = 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXX'
          TabOrder = 2
          DataField = 'MAPBOXAPIKEY'
          CurrentPos = -1
        end
        object CodeField: TAlpineEdit
          Left = 91
          Top = 23
          Width = 111
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 8
          ParentFont = False
          PictureMask = '!!!!!!!!'
          TabOrder = 0
          DataField = 'CODE'
          CurrentPos = -1
        end
        object StyleField: TAlpineEdit
          Left = 91
          Top = 130
          Width = 383
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 255
          ParentFont = False
          PictureMask = 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXX'
          TabOrder = 3
          DataField = 'MAPBOXSTYLE'
          CurrentPos = -1
        end
        object DefZoomField: TAlpineEdit
          Left = 91
          Top = 245
          Width = 91
          Height = 21
          DataType = pftReal
          AutoSize = False
          Controller = OvcController
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
          PictureMask = '##.##'
          TabOrder = 7
          DataField = 'DEFZOOM'
          RightAlign = True
          CurrentPos = -1
          Text = ' 0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object AlpineEdit1: TAlpineEdit
          Left = 91
          Top = 154
          Width = 383
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 255
          ParentFont = False
          PictureMask = 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXX'
          TabOrder = 4
          DataField = 'MAPBOXSTYLEDARK'
          CurrentPos = -1
        end
      end
      object AlpinePanel1: TAlpinePanel
        Left = 0
        Top = 367
        Width = 504
        Height = 136
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
        BorderColor = clBtnFace
        BorderWidth = 1
        Caption.Color = clBlack
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -13
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Text = 'Comments'
        Caption.Visible = True
        ColorTo = clBtnFace
        ColorMirror = clBtnFace
        ColorMirrorTo = clBtnFace
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'A'
        RightCaption = 'Put Caption Here'
        Highlightcolor = clSilver
        FullHeight = 0
        object NarrField: TAlpineMemo
          Left = 2
          Top = 20
          Width = 500
          Height = 114
          Align = alClient
          Caption = 'NarrField'
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
      end
      object AlpinePanel2: TAlpinePanel
        Left = 0
        Top = 271
        Width = 504
        Height = 96
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
        BorderColor = clBtnFace
        BorderWidth = 1
        Caption.Color = clBlack
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -13
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Text = 'Address of Point'
        Caption.Visible = True
        ColorTo = clBtnFace
        ColorMirror = clBtnFace
        ColorMirrorTo = clBtnFace
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'A'
        RightCaption = 'Put Caption Here'
        Highlightcolor = clSilver
        FullHeight = 0
        object Label11: TLabel
          Left = 2
          Top = 27
          Width = 82
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Location'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 2
          Top = 50
          Width = 82
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'City/State/Zip'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 2
          Top = 73
          Width = 82
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cross 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object StreetField: TAlpineEdit
          Left = 154
          Top = 25
          Width = 262
          Height = 21
          DataType = pftString
          Controller = OvcController
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
          DataField = 'STREET'
          CurrentPos = -1
        end
        object StrNumfield: TAlpineEdit
          Left = 91
          Top = 25
          Width = 61
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 8
          ParentFont = False
          PictureMask = '!!!!!!!!'
          TabOrder = 0
          DataField = 'STRNUM'
          CurrentPos = -1
        end
        object CityField: TAlpineEdit
          Left = 91
          Top = 48
          Width = 201
          Height = 21
          DataType = pftString
          Controller = OvcController
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
          TabOrder = 2
          DataField = 'CITY'
          CurrentPos = -1
        end
        object StateField: TAlpineEdit
          Left = 293
          Top = 48
          Width = 39
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 2
          ParentFont = False
          PictureMask = '!!'
          TabOrder = 3
          DataField = 'STATE'
          CurrentPos = -1
        end
        object ZipField: TAlpineEdit
          Left = 335
          Top = 48
          Width = 81
          Height = 21
          DataType = pftString
          Controller = OvcController
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 5
          options = [efoCaretToEnd]
          ParentFont = False
          PictureMask = '99999'
          TabOrder = 4
          DataField = 'ZIP'
          CurrentPos = -1
          Text = '-'
        end
        object cross1field: TAlpineEdit
          Left = 91
          Top = 71
          Width = 325
          Height = 21
          DataType = pftString
          Controller = OvcController
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
          TabOrder = 5
          DataField = 'CROSS1'
          CurrentPos = -1
        end
        object PlotButton: TAlpineGlowButton
          Left = 437
          Top = 32
          Width = 51
          Height = 50
          Caption = 'Plot'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 118
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
          TabOrder = 6
          OnClick = PlotButtonClick
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
    Left = 406
    Top = 21
  end
end
