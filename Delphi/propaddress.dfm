object PropAddressForm: TPropAddressForm
  Left = 106
  Top = 88
  Caption = 'Property Entry Screen'
  ClientHeight = 565
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 300
    Top = 23
    Width = 77
    Height = 17
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Phone'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object AlpinePanel3: TAlpinePanel
    Left = 0
    Top = 398
    Width = 974
    Height = 167
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
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.Text = 'Owner Information'
    Caption.TopIndent = 2
    Caption.Visible = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    LeftCaption = 'A'
    RightCaption = 'Put Caption Here'
    Highlightcolor = clBtnFace
    FullHeight = 0
    object FIRSTPERSLabel: TLabel
      Left = 5
      Top = 23
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'First Person to Call'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ophonelabel: TLabel
      Left = 294
      Top = 23
      Width = 77
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Phone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object OLASTNAMELabel: TLabel
      Left = 5
      Top = 46
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Owner Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 69
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Owner Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 5
      Top = 92
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Town/State/Zip'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 5
      Top = 141
      Width = 103
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 31
      Top = 116
      Width = 77
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Phone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 570
      Top = 46
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Owner 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 570
      Top = 69
      Width = 50
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Address 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FIRSTPERSfield: TAlpineEdit
      Left = 114
      Top = 21
      Width = 184
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
      MaxLength = 26
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 0
      DataField = 'FIRSTPERS'
      CurrentPos = -1
    end
    object OPhoneField: TAlpineEdit
      Left = 377
      Top = 21
      Width = 185
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
      MaxLength = 26
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 1
      DataField = 'OPHONE'
      CurrentPos = -1
    end
    object OLastNameField: TAlpineEdit
      Left = 114
      Top = 44
      Width = 450
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
      MaxLength = 61
      ParentFont = False
      PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 2
      DataField = 'OLASTNAME'
      CurrentPos = -1
    end
    object OAddressField: TAlpineEdit
      Left = 114
      Top = 67
      Width = 450
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
      MaxLength = 61
      ParentFont = False
      PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 4
      DataField = 'OADDRESS'
      CurrentPos = -1
    end
    object CityField: TAlpineLookup
      Left = 114
      Top = 90
      Width = 317
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
      InitialSeek = True
      DataFieldIsCharacter = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
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
      OnAfterLookup = CityFieldAfterLookup
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object StateField: TAlpineEdit
      Left = 438
      Top = 90
      Width = 31
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
      MaxLength = 2
      ParentFont = False
      PictureMask = '!!'
      TabOrder = 7
      DataField = 'OSTATE'
      CurrentPos = -1
    end
    object ZipField: TAlpineEdit
      Left = 480
      Top = 90
      Width = 83
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
      MaxLength = 10
      options = [efoCaretToEnd]
      ParentFont = False
      PictureMask = '99999-9999'
      TabOrder = 8
      DataField = 'OZIP'
      CurrentPos = -1
      Text = '-    -----'
    end
    object EMAIL2field: TAlpineEdit
      Left = 114
      Top = 138
      Width = 450
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
      MaxLength = 61
      ParentFont = False
      PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 10
      DataField = 'EMAIL2'
      CurrentPos = -1
    end
    object AlpineEdit7: TAlpineEdit
      Left = 114
      Top = 114
      Width = 186
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
      MaxLength = 26
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 9
      DataField = 'SECONDPHONE'
      CurrentPos = -1
      Text = 'd'
    end
    object OFirstNameField: TAlpineEdit
      Left = 627
      Top = 44
      Width = 322
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
      MaxLength = 61
      ParentFont = False
      PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 3
      DataField = 'OFIRSTNAME'
      CurrentPos = -1
    end
    object OAddress2Field: TAlpineEdit
      Left = 627
      Top = 67
      Width = 322
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
      MaxLength = 61
      ParentFont = False
      PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 5
      DataField = 'OADDRESS2'
      CurrentPos = -1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 974
    Height = 286
    Align = alTop
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object HydNarrPanel: TAlpinePanel
      Left = 0
      Top = 0
      Width = 571
      Height = 286
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
      OnClick = HydNarrPanelClick
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
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
      Highlightcolor = clBtnFace
      FullHeight = 0
      object Label2: TLabel
        Left = 5
        Top = 72
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Street Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StrNumLabel: TLabel
        Left = 5
        Top = 48
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Street Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 5
        Top = 97
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Suite/Apt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object OccupantLabel: TLabel
        Left = 5
        Top = 122
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Occupant'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 5
        Top = 210
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Nearest Cross Street'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 5
        Top = 233
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Second Cross Street'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 5
        Top = 174
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Range Record ID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RangePropIDDescr: TLabel
        Left = 114
        Top = 192
        Width = 449
        Height = 15
        AutoSize = False
        Caption = 'Nearest Cross Street'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 5
        Top = 25
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Address Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 5
        Top = 260
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Knox Box Location'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object phonelabel: TLabel
        Left = 201
        Top = 97
        Width = 89
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Occupant Phone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object FaxLabel: TLabel
        Left = 401
        Top = 97
        Width = 76
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Occupant Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object EmailLabel: TLabel
        Left = 5
        Top = 145
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email Address'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BuildingLabel: TLabel
        Left = 343
        Top = 23
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Building #'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 343
        Top = 48
        Width = 103
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Census'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StrNumField: TAlpineEdit
        Left = 114
        Top = 45
        Width = 81
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
        MaxLength = 8
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 2
        DataField = 'STRNUM'
        CurrentPos = -1
      end
      object AlpineEdit6: TAlpineEdit
        Left = 114
        Top = 95
        Width = 81
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
        MaxLength = 8
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 5
        DataField = 'ROOMAPT'
        CurrentPos = -1
      end
      object pLastNameField: TAlpineEdit
        Left = 114
        Top = 119
        Width = 449
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
        MaxLength = 194
        ParentFont = False
        PictureMask = 
          '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XX'
        TabOrder = 8
        DataField = 'PLASTNAME'
        CurrentPos = -1
      end
      object RangePropIDField: TAlpineLookup
        Left = 114
        Top = 171
        Width = 449
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TabStop = True
        OnEnter = RangePropIDFieldEnter
        OnExit = RangePropIDFieldExit
        ImageName = 'DOWNARROW'
        InitialSeek = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXX'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'RANGEPROPID'
        DisplayField = 'STREET'
        ReferencingTable = 'PROP'
        ReferencingField = 'PROPID'
        ReturnField = 'STREET'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'RANGEPROP'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object StreetField: TAlpineLookup
        Left = 114
        Top = 70
        Width = 449
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXX'
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
      object PropSubTypeIDField: TAlpineLookup
        Left = 114
        Top = 21
        Width = 243
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
        PictureMask = '!!!!!!!!'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PROPSUBTYPEID'
        DisplayField = 'CODE'
        ReferencingTable = 'PROPSUBTYPE'
        ReferencingField = 'PROPSUBTYPEID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clMaroon
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'CODEDESCR'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object Cross1Field: TAlpineLookup
        Left = 114
        Top = 208
        Width = 449
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXX'
        EditWidth = 189
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'CROSS1'
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
      object cross2field: TAlpineLookup
        Left = 114
        Top = 231
        Width = 449
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXX'
        EditWidth = 189
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'CROSS2'
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
      object KnoxBoxLocField: TAlpineEdit
        Left = 114
        Top = 258
        Width = 449
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
        MaxLength = 120
        ParentFont = False
        PictureMask = 
          '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 13
        DataField = 'LOCKBOXLOC'
        CurrentPos = -1
      end
      object FaxField: TAlpineEdit
        Left = 482
        Top = 95
        Width = 81
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
        MaxLength = 18
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXX'
        TabOrder = 7
        DataField = 'FAX'
        CurrentPos = -1
      end
      object EmailField: TAlpineEdit
        Left = 113
        Top = 143
        Width = 450
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
        MaxLength = 61
        ParentFont = False
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 9
        DataField = 'EMAIL'
        CurrentPos = -1
      end
      object PhoneField: TAlpineEdit
        Left = 294
        Top = 95
        Width = 101
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
        MaxLength = 26
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 6
        DataField = 'PHONE'
        CurrentPos = -1
      end
      object BuildingField: TAlpineEdit
        Left = 452
        Top = 21
        Width = 111
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
        MaxLength = 8
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 1
        DataField = 'BUILDINGNUM'
        CurrentPos = -1
      end
      object CensusField: TAlpineEdit
        Left = 452
        Top = 45
        Width = 111
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
        MaxLength = 21
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 3
        DataField = 'CENSUS'
        CurrentPos = -1
      end
    end
    object ParentChildPanel: TPanel
      Left = 571
      Top = 0
      Width = 403
      Height = 286
      Align = alRight
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object PropChildBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 122
        width = 403
        height = 164
        Align = alBottom
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
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Children of this Address'
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
        ButtonPanelVisible = False
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
        FullHeight = 124
      end
      object ParentPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 403
        Height = 122
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
        Caption.Font.Color = clWhite
        Caption.Font.Height = -11
        Caption.Font.Name = 'MS Sans Serif'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Parent or Child Entry Information'
        Caption.TopIndent = 2
        Caption.Visible = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'A'
        RightCaption = 'Put Caption Here'
        Highlightcolor = clBtnFace
        FullHeight = 74
        object Label31: TLabel
          Left = 2
          Top = 25
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Parent?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ParentPropIDLabel: TLabel
          Left = 2
          Top = 97
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Occupant'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 2
          Top = 48
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Parent ID'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 2
          Top = 72
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Address'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DispE911Label: TLabel
          Left = 194
          Top = 25
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'E911 Test'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ParentPropField: TAlpineCheckBox
          Left = 78
          Top = 20
          Width = 16
          Height = 22
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlBottom
          Caption = ' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 0
          Version = '1.6.0.0'
          DataField = 'PARENTPROP'
          ValueChecked = 'Y'
          ValueUnChecked = ' '
        end
        object ParentPropIDField: TAlpineLookup
          Left = 78
          Top = 46
          Width = 317
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
          OnEnter = ParentPropIDFieldEnter
          OnExit = ParentPropIDFieldExit
          ImageName = 'DOWNARROW'
          InitialSeek = True
          PictureMask = 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXX'
          EditWidth = 60
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'PARENTPROPID'
          DisplayField = 'PROPID'
          ReferencingTable = 'PROP'
          ReferencingField = 'PROPID'
          ReturnField = 'STREET'
          ReturnFieldFont.Charset = ANSI_CHARSET
          ReturnFieldFont.Color = clNavy
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'Comic Sans MS'
          ReturnFieldFont.Style = []
          LookupCode = 'PROP'
          DisplayDescription = False
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object ParentPropNameField: TAlpineEdit
          Left = 78
          Top = 95
          Width = 317
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 61
          ParentFont = False
          PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 2
          CurrentPos = -1
        end
        object ParentPropAddrField: TAlpineEdit
          Left = 78
          Top = 70
          Width = 317
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 61
          ParentFont = False
          PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 3
          CurrentPos = -1
        end
        object DispE911Field: TAlpineCheckBox
          Left = 270
          Top = 20
          Width = 16
          Height = 22
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlBottom
          Caption = ' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 4
          Version = '1.6.0.0'
          DataField = 'DISPE911'
          ValueChecked = 'Y'
          ValueUnChecked = ' '
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 286
    Width = 974
    Height = 112
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object AlpinePanel2: TAlpinePanel
      Left = 0
      Top = 0
      Width = 462
      Height = 112
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
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Handicap'
      Caption.TopIndent = 2
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clBtnFace
      FullHeight = 74
      object AlpineMemo3: TAlpineMemo
        Left = 2
        Top = 20
        Width = 458
        Height = 90
        Align = alClient
        Color = clWhite
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        DataField = 'HANDICAP'
        ReadOnly = False
        ScrollBars = ssVertical
      end
    end
    object AlpinePanel1: TAlpinePanel
      Left = 462
      Top = 0
      Width = 512
      Height = 112
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
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'General Comments'
      Caption.TopIndent = 2
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clBtnFace
      FullHeight = 74
      object AlpineMemo2: TAlpineMemo
        Left = 2
        Top = 20
        Width = 508
        Height = 90
        Align = alClient
        Color = clWhite
        Ctl3D = False
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
    Left = 712
    Top = 37
  end
end
