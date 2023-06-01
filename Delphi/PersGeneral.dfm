object PersonGeneralForm: TPersonGeneralForm
  Left = 166
  Top = 88
  Caption = 'PersonGeneralForm'
  ClientHeight = 505
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel0B: TAlpinePanel
    Left = 0
    Top = 185
    Width = 972
    Height = 77
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
    Caption.Text = '<img src="idx:18"> Contact Information'
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
    object Label15: TLabel
      Left = 161
      Top = 23
      Width = 75
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pager:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 3
      Top = 23
      Width = 71
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Home Phone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 3
      Top = 46
      Width = 71
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Work Phone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 161
      Top = 46
      Width = 75
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mobile Phone:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 456
      Top = 23
      Width = 95
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Emergency Phone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 456
      Top = 46
      Width = 95
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Notify Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 324
      Top = 46
      Width = 39
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Carrier:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object PagerField: TAlpineEdit
      Left = 240
      Top = 21
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
      TabOrder = 2
      DataField = 'PAGER'
      CurrentPos = -1
      Text = '-  ----- - -'
    end
    object PhoneField: TAlpineEdit
      Left = 79
      Top = 21
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
      TabOrder = 0
      DataField = 'PHONE'
      CurrentPos = -1
      Text = '(  ---)- - -'
    end
    object OccPhoneField: TAlpineEdit
      Left = 79
      Top = 44
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
      TabOrder = 1
      DataField = 'OCCPHONE'
      CurrentPos = -1
      Text = '-  ----- - -'
    end
    object CellField: TAlpineEdit
      Left = 240
      Top = 44
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
      TabOrder = 3
      DataField = 'CELL'
      CurrentPos = -1
      Text = '-  ----- - -'
    end
    object EmergPhone: TAlpineEdit
      Left = 556
      Top = 21
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
      TabOrder = 5
      DataField = 'EMERGPHONE'
      CurrentPos = -1
      Text = '-  --  -'
    end
    object EmergNameField: TAlpineEdit
      Left = 556
      Top = 44
      Width = 212
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
      MaxLength = 48
      options = [efoCaretToEnd]
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 6
      DataField = 'EMERGNAME'
      CurrentPos = -1
    end
    object CellCarrierField: TAlpineEdit
      Left = 366
      Top = 44
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
      MaxLength = 17
      options = [efoCaretToEnd]
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXX'
      TabOrder = 4
      DataField = 'CELLCARRIER'
      CurrentPos = -1
      Text = '-  ----- - -'
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 262
    Width = 972
    Height = 243
    Align = alClient
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 2
    object Panel0C: TAlpinePanel
      Left = 0
      Top = 0
      Width = 770
      Height = 243
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
      BorderColor = clBtnFace
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = '<img src="idx:19"> Department Information'
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
      object JoinDateLabel: TLabel
        Left = 2
        Top = 29
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Join Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object ActDateLabel: TLabel
        Left = 2
        Top = 53
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Active Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object ResDateLabel: TLabel
        Left = 172
        Top = 29
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Resign Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LifeDateLabel: TLabel
        Left = 172
        Top = 53
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Life Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object FdidLabel: TLabel
        Left = 2
        Top = 169
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Agency'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object KeyCodeLabel: TLabel
        Left = 2
        Top = 146
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Key #'
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
        Top = 123
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ID #:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object PersTypeIDLabel: TLabel
        Left = 2
        Top = 77
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Type'
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
        Top = 100
        Width = 67
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
      object FdidDesc: TLabel
        Left = 158
        Top = 170
        Width = 182
        Height = 15
        AutoSize = False
        Caption = 'agencydesc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object PersTypeDesc: TLabel
        Left = 158
        Top = 77
        Width = 182
        Height = 15
        AutoSize = False
        Caption = 'pers type '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object PersStatDesc: TLabel
        Left = 158
        Top = 100
        Width = 182
        Height = 15
        AutoSize = False
        Caption = 'Personnel Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object Label21: TLabel
        Left = 2
        Top = 192
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Rank'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object ImageListIDLabel: TLabel
        Left = 361
        Top = 216
        Width = 68
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Image Link'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label10: TLabel
        Left = 358
        Top = 29
        Width = 110
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Years of Service'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EMSQualIDLabel: TLabel
        Left = 2
        Top = 214
        Width = 67
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'EMS Rank'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EMSQualIDDescr: TLabel
        Left = 158
        Top = 216
        Width = 182
        Height = 15
        AutoSize = False
        Caption = 'Personnel Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object PersRankIDDescr: TLabel
        Left = 158
        Top = 193
        Width = 182
        Height = 15
        AutoSize = False
        Caption = 'Personnel Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowAccelChar = False
        Transparent = True
      end
      object FingerCodeLabel: TLabel
        Left = 172
        Top = 146
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Finger Override'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object NYSIDLabel: TLabel
        Left = 172
        Top = 123
        Width = 90
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'NYS Training ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object ProbStartLabel: TLabel
        Left = 358
        Top = 77
        Width = 110
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Probie Start Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object ProbEndLabel: TLabel
        Left = 358
        Top = 100
        Width = 110
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Probie End Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object TotYOSLabel: TLabel
        Left = 358
        Top = 53
        Width = 110
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Years of Service'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object CrewSenseIDLabel: TLabel
        Left = 358
        Top = 146
        Width = 110
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Crew Sense ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object BadgeNumLabel: TLabel
        Left = 358
        Top = 123
        Width = 110
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Badge Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object JoinDateField: TAlpineDateTime
        Left = 74
        Top = 27
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'JOINDATE'
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object ActDateField: TAlpineDateTime
        Left = 74
        Top = 51
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'ACTDATE'
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object ResDateField: TAlpineDateTime
        Left = 265
        Top = 27
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'RESDATE'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object LifeDateField: TAlpineDateTime
        Left = 265
        Top = 51
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'LIFEDATE'
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object FdidField: TAlpineLookup
        Left = 74
        Top = 167
        Width = 81
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
        TabOrder = 10
        TabStop = True
        OnEnter = FdidFieldEnter
        ImageName = 'DOWNARROW'
        Descriptionlabel = FdidDesc
        DataFieldIsCharacter = True
        PictureMask = '!!!!!'
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
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'FDIDDISP'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object KeyCodeField: TAlpineEdit
        Left = 74
        Top = 144
        Width = 81
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
        MaxLength = 40
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
        TabOrder = 8
        OnExit = KeyCodeFieldExit
        DataField = 'KEYCODE'
        CurrentPos = -1
      end
      object PersCodeField: TAlpineEdit
        Left = 74
        Top = 121
        Width = 81
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
        MaxLength = 16
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 6
        OnExit = PersCodeFieldExit
        DataField = 'PERSCODE'
        CurrentPos = -1
      end
      object PersTypeIDField: TAlpineLookup
        Left = 74
        Top = 74
        Width = 81
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
        OnEnter = PersTypeIDFieldEnter
        ImageName = 'DOWNARROW'
        Descriptionlabel = PersTypeDesc
        DataFieldIsCharacter = True
        PictureMask = '!!!!!!!!'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSTYPEID'
        DisplayField = 'CODE'
        ReferencingTable = 'PERSTYPE'
        ReferencingField = 'PERSTYPEID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'CODEDESCR'
        OnChange = PersTypeIDFieldChange
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object AttendField: TAlpineCheckBox
        Left = 381
        Top = 162
        Width = 282
        Height = 24
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'Check this box to include in Usage'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 19
        Version = '1.6.0.0'
        DataField = 'ATTEND'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object PersStatIDField: TAlpineLookup
        Left = 74
        Top = 98
        Width = 81
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
        TabOrder = 5
        TabStop = True
        OnEnter = PersStatIDFieldEnter
        ImageName = 'DOWNARROW'
        Descriptionlabel = PersStatDesc
        DataFieldIsCharacter = True
        PictureMask = '!!!!!!!!'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSSTATID'
        DisplayField = 'CODE'
        ReferencingTable = 'PERSSTAT'
        ReferencingField = 'PERSSTATID'
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
      object PersRankIDField: TAlpineLookup
        Left = 74
        Top = 190
        Width = 81
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
        TabOrder = 11
        TabStop = True
        OnEnter = PersRankIDFieldEnter
        ImageName = 'DOWNARROW'
        Descriptionlabel = PersRankIDDescr
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSRANKID'
        DisplayField = 'CODE'
        ReferencingTable = 'PERSRANK'
        ReferencingField = 'PERSRANKID'
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
      object ResourceField: TAlpineCheckBox
        Left = 381
        Top = 184
        Width = 282
        Height = 24
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'Include in Rolodex?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 20
        OnClick = ResourceFieldClick
        Version = '1.6.0.0'
        DataField = 'ROLODEX'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object ImageListIDField: TAlpineLookup
        Left = 432
        Top = 214
        Width = 183
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
        TabOrder = 21
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 200
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'IMAGELISTID'
        DisplayField = 'DESCR'
        ReferencingTable = 'IMAGELIST'
        ReferencingField = 'IMAGELISTID'
        SqlExpr = 
          'SELECT IMAGELISTID, FILENAME, DESCR FROM VWIMAGELIST WHERE TABLE' +
          'NAME = '#39'PERS'#39' ORDER BY DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'IMAGELIST'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object YOSField: TAlpineEdit
        Left = 472
        Top = 27
        Width = 59
        Height = 21
        DataType = pftReal
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '###.##'
        TabOrder = 13
        OnClick = YOSFieldClick
        DataField = 'YOS'
        RightAlign = True
        CurrentPos = -1
        Text = '  0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object CalculateButton: TAlpineGlowButton
        Left = 537
        Top = 27
        Width = 70
        Height = 18
        Caption = 'Calculate'
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
        TabOrder = 22
        OnClick = CalculateButtonClick
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
      object EMSQualIDField: TAlpineLookup
        Left = 74
        Top = 213
        Width = 81
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
        TabOrder = 12
        TabStop = True
        OnEnter = EMSQualIDFieldEnter
        ImageName = 'DOWNARROW'
        Descriptionlabel = EMSQualIDDescr
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'EMSQUALID'
        DisplayField = 'CODE'
        ReferencingTable = 'EMSQUAL'
        ReferencingField = 'EMSQUALID'
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
      object FingerCodeField: TAlpineEdit
        Left = 265
        Top = 144
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
        MaxLength = 16
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 9
        OnExit = FingerCodeFieldExit
        DataField = 'FINGERCODE'
        CurrentPos = -1
      end
      object NYSIDField: TAlpineEdit
        Left = 265
        Top = 121
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
        MaxLength = 16
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 7
        OnExit = PersCodeFieldExit
        DataField = 'NYSID'
        CurrentPos = -1
      end
      object ProbStartDateField: TAlpineDateTime
        Left = 472
        Top = 74
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'PROBSTARTDATE'
        TabOrder = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
      end
      object ProbEndDateField: TAlpineDateTime
        Left = 472
        Top = 98
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'PROBENDDATE'
        TabOrder = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
      end
      object TotYOSField: TAlpineEdit
        Left = 472
        Top = 50
        Width = 59
        Height = 21
        DataType = pftReal
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '###.##'
        TabOrder = 14
        DataField = 'TOTYOS'
        RightAlign = True
        CurrentPos = -1
        Text = '  0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object TotYOSButton: TAlpineGlowButton
        Left = 537
        Top = 50
        Width = 70
        Height = 18
        Caption = 'Calculate'
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
        TabOrder = 23
        OnClick = TotYOSButtonClick
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
      object CrewSenseIDField: TAlpineEdit
        Left = 472
        Top = 144
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
        MaxLength = 16
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 18
        OnExit = PersCodeFieldExit
        DataField = 'CREWSENSEID'
        CurrentPos = -1
      end
      object BadgeNumField: TAlpineEdit
        Left = 472
        Top = 121
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
        MaxLength = 16
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 17
        OnExit = PersCodeFieldExit
        DataField = 'BADGENUM'
        CurrentPos = -1
      end
    end
    object FdidCompTeamPanel: TPanel
      Left = 770
      Top = 0
      Width = 202
      Height = 243
      Align = alRight
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object TeamSplitter: TSplitter
        Left = 0
        Top = 71
        Width = 202
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        AutoSnap = False
        Color = clBtnFace
        ParentColor = False
        ExplicitTop = 91
      end
      object FdidSplitter: TSplitter
        Left = 0
        Top = 158
        Width = 202
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        AutoSnap = False
        Color = clBtnFace
        ParentColor = False
        ExplicitLeft = 6
        ExplicitTop = 187
      end
      object FdidCompPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 202
        Height = 71
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
        Caption.CloseColor = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 18
        Caption.Indent = 2
        Caption.Text = '<img src="idx:18"> Select Company'
        Caption.Visible = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'A'
        RightCaption = 'Put Caption Here'
        Highlightcolor = clSilver
        FullHeight = 96
        object FdidCompBrowse: TAdvStringGrid
          Left = 2
          Top = 18
          Width = 198
          Height = 51
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          ColCount = 3
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 3
          FixedRows = 0
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
          OnCheckBoxClick = FdidCompBrowseCheckBoxClick
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
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
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
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
          SelectionColor = clBtnFace
          SortSettings.DefaultFormat = ssAutomatic
          Version = '7.1.0.1'
        end
      end
      object PersFdidPanel: TAlpinePanel
        Left = 0
        Top = 162
        Width = 202
        Height = 81
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
        BorderColor = clGray
        BorderWidth = 1
        Caption.Color = clBlack
        Caption.ColorTo = clNone
        Caption.CloseColor = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 18
        Caption.Indent = 2
        Caption.Text = '<img src="idx:18"> Select Agency'
        Caption.Visible = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'A'
        RightCaption = 'Put Caption Here'
        Highlightcolor = clSilver
        FullHeight = 81
        object FdidBrowse: TAdvStringGrid
          Left = 2
          Top = 18
          Width = 198
          Height = 61
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          ColCount = 3
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 3
          FixedRows = 0
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
          OnCheckBoxClick = FdidBrowseCheckBoxClick
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
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
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
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
          SelectionColor = clBtnFace
          SortSettings.DefaultFormat = ssAutomatic
          Version = '7.1.0.1'
        end
      end
      object PersTeamTypePanel: TAlpinePanel
        Left = 0
        Top = 75
        Width = 202
        Height = 83
        Align = alBottom
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
        Caption.CloseColor = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 18
        Caption.Indent = 2
        Caption.Text = '<img src="idx:18"> Select Team'
        Caption.Visible = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'A'
        RightCaption = 'Put Caption Here'
        Highlightcolor = clSilver
        FullHeight = 83
        object PersTeamTypeBrowse: TAdvStringGrid
          Left = 2
          Top = 18
          Width = 198
          Height = 63
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          ColCount = 3
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 3
          FixedRows = 0
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
          OnCheckBoxClick = PersTeamTypeBrowseCheckBoxClick
          ActiveCellFont.Charset = DEFAULT_CHARSET
          ActiveCellFont.Color = clWindowText
          ActiveCellFont.Height = -11
          ActiveCellFont.Name = 'Tahoma'
          ActiveCellFont.Style = [fsBold]
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
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
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
          SelectionColor = clBtnFace
          SortSettings.DefaultFormat = ssAutomatic
          Version = '7.1.0.1'
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object PageListBrowse: TAlpineBlockBrowse
      Left = 616
      Top = 0
      width = 356
      height = 185
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
      TabOrder = 1
      UseDockManager = True
      Visible = False
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
      Caption.Height = 21
      Caption.Indent = 2
      Caption.Text = '<img src="idx:18"> Paging and Email Setup'
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
      ButtonHeight = 25
      SearchFooter = False
      FullHeight = 124
    end
    object Panel0A: TAlpinePanel
      Left = 0
      Top = 0
      Width = 616
      Height = 185
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
      Caption.Height = 22
      Caption.Indent = 2
      Caption.Text = '<img src="idx:18"> General'
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
      object Label2: TLabel
        Left = 11
        Top = 26
        Width = 66
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Last Name:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 285
        Top = 26
        Width = 32
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'First:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 477
        Top = 27
        Width = 20
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'M:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label27: TLabel
        Left = 11
        Top = 49
        Width = 66
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Address:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 11
        Top = 95
        Width = 66
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'City:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 285
        Top = 96
        Width = 32
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'State:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 352
        Top = 96
        Width = 32
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Zip:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label18: TLabel
        Left = 11
        Top = 141
        Width = 66
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 11
        Top = 118
        Width = 66
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'County:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DistResLabel: TLabel
        Left = 409
        Top = 48
        Width = 88
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'District Resident?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object LNameField: TAlpineEdit
        Left = 80
        Top = 24
        Width = 203
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
        MaxLength = 30
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 0
        OnChange = LNameFieldChange
        DataField = 'LNAME'
        CurrentPos = -1
      end
      object FNameField: TAlpineEdit
        Left = 318
        Top = 24
        Width = 155
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
        MaxLength = 30
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 1
        DataField = 'FNAME'
        CurrentPos = -1
      end
      object MNameField: TAlpineEdit
        Left = 503
        Top = 24
        Width = 72
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 30
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 2
        DataField = 'MNAME'
        CurrentPos = -1
      end
      object Add1Field: TAlpineEdit
        Left = 80
        Top = 47
        Width = 270
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
        TabOrder = 3
        DataField = 'ADD1'
        CurrentPos = -1
      end
      object AlpineEdit3: TAlpineEdit
        Left = 80
        Top = 70
        Width = 270
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
        TabOrder = 4
        DataField = 'ADD2'
        CurrentPos = -1
      end
      object EMailField: TAlpineEdit
        Left = 80
        Top = 139
        Width = 270
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
        DataField = 'EMAIL'
        CurrentPos = -1
      end
      object CityField: TAlpineLookup
        Left = 80
        Top = 93
        Width = 204
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
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
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
        OnAfterLookup = CityFieldAfterLookup
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object StateField: TAlpineEdit
        Left = 319
        Top = 93
        Width = 31
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
        TabOrder = 6
        DataField = 'STATE'
        CurrentPos = -1
      end
      object ZipField: TAlpineEdit
        Left = 388
        Top = 93
        Width = 83
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
        MaxLength = 10
        options = [efoCaretToEnd]
        ParentFont = False
        PictureMask = '99999-9999'
        TabOrder = 7
        DataField = 'ZIP'
        CurrentPos = -1
        Text = '-    -----'
      end
      object AlpineEdit1: TAlpineEdit
        Left = 80
        Top = 116
        Width = 270
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
        DataField = 'COUNTY'
        CurrentPos = -1
      end
      object DistResField: TAlpineCheckBox
        Left = 503
        Top = 40
        Width = 12
        Height = 24
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = ' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 10
        OnClick = DistResFieldClick
        Version = '1.6.0.0'
        DataField = 'DISTRES'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
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
    Left = 536
    Top = 104
  end
end
