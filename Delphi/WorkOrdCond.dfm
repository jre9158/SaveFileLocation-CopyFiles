object WorkOrdCondForm: TWorkOrdCondForm
  Left = 248
  Top = 111
  Caption = 'Work Order Condition'
  ClientHeight = 518
  ClientWidth = 539
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
  object DatePanel: TAdvPanel
    Left = 0
    Top = 105
    Width = 539
    Height = 116
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 21
    Caption.Indent = 2
    Caption.Text = 'Request Parameters'
    Caption.TopIndent = 2
    Caption.Visible = True
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 132
    object InitialDateLabel: TLabel
      Left = 5
      Top = 50
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Request Date Range'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 131
      Top = 71
      Width = 88
      Height = 12
      AutoSize = False
      Caption = 'Lower Date Range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 224
      Top = 71
      Width = 88
      Height = 12
      AutoSize = False
      Caption = 'Upper Date Range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 5
      Top = 28
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Request Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 5
      Top = 92
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Requested by'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ReqDateStartField: TAlpineDateTime
      Left = 131
      Top = 48
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      OnChange = InvIDFieldChange
      ShowTime = False
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object ReqDateEndField: TAlpineDateTime
      Left = 224
      Top = 48
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      OnChange = InvIDFieldChange
      ShowTime = False
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object WOReqTypeIDField: TAlpineLookup
      Left = 131
      Top = 25
      Width = 184
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
      InitialSeek = True
      DataFieldIsCharacter = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 120
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'WOREQTYPEID'
      DisplayField = 'DESCR'
      ReferencingTable = 'WOREQTYPE'
      ReferencingField = 'WOREQTYPEID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clNavy
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Comic Sans MS'
      ReturnFieldFont.Style = []
      LookupCode = 'DESCR'
      OnChange = InvIDFieldChange
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object ReqPersIDField: TAlpineLookup
      Left = 131
      Top = 89
      Width = 306
      Height = 21
      BorderStyle = bsNone
      Ctl3d = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnEnter = ReqPersIDFieldEnter
      ImageName = 'DOWNARROW'
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 76
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'REQPERSID'
      DisplayField = 'PERSCODE'
      ReferencingTable = 'PERS'
      ReferencingField = 'PERSID'
      ReturnField = 'LNAME'
      ReturnFieldFont.Charset = DEFAULT_CHARSET
      ReturnFieldFont.Color = clWindowText
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'PERS'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
  end
  object StatusPanel: TAdvPanel
    Left = 0
    Top = 365
    Width = 539
    Height = 153
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 21
    Caption.Indent = 2
    Caption.Text = 'Work Order Status Parameters'
    Caption.TopIndent = 2
    Caption.Visible = True
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 132
    object Label2: TLabel
      Left = 5
      Top = 54
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Close Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 131
      Top = 75
      Width = 88
      Height = 12
      AutoSize = False
      Caption = 'Lower Date Range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 224
      Top = 75
      Width = 88
      Height = 12
      AutoSize = False
      Caption = 'Upper Date Range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 5
      Top = 28
      Width = 121
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
    object Label14: TLabel
      Left = 5
      Top = 95
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Closed By'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object CloseDateStartField: TAlpineDateTime
      Left = 131
      Top = 52
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      OnChange = InvIDFieldChange
      ShowTime = False
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object CloseDateEndField: TAlpineDateTime
      Left = 224
      Top = 52
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      OnChange = InvIDFieldChange
      ShowTime = False
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TimeEndOfDay = True
    end
    object WOStatusIDField: TAlpineLookup
      Left = 131
      Top = 25
      Width = 184
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
      InitialSeek = True
      DataFieldIsCharacter = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 120
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'WOSTATUSID'
      DisplayField = 'DESCR'
      ReferencingTable = 'WOSTATUS'
      ReferencingField = 'WOSTATUSID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clNavy
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Comic Sans MS'
      ReturnFieldFont.Style = []
      LookupCode = 'DESCR'
      OnChange = InvIDFieldChange
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object ClosePersIDField: TAlpineLookup
      Left = 131
      Top = 93
      Width = 306
      Height = 21
      BorderStyle = bsNone
      Ctl3d = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnEnter = ReqPersIDFieldEnter
      ImageName = 'DOWNARROW'
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 76
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'CLOSEPERSID'
      DisplayField = 'PERSCODE'
      ReferencingTable = 'PERS'
      ReferencingField = 'PERSID'
      ReturnField = 'LNAME'
      ReturnFieldFont.Charset = DEFAULT_CHARSET
      ReturnFieldFont.Color = clWindowText
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'PERS'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object INDWOSTATUSCheck: TRadioButton
      Left = 348
      Top = 29
      Width = 166
      Height = 17
      Caption = 'All or Selected Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = INDWOSTATUSCheckClick
    end
    object OPENWOSTATUSCheck: TRadioButton
      Left = 348
      Top = 49
      Width = 166
      Height = 17
      Caption = 'All Open Work Orders'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = OPENWOSTATUSCheckClick
    end
    object CLOSEDWOSTATUSCHECK: TRadioButton
      Left = 348
      Top = 69
      Width = 166
      Height = 17
      Caption = 'All Closed Work Orders'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = CLOSEDWOSTATUSCHECKClick
    end
  end
  object AssignPanel: TAdvPanel
    Left = 0
    Top = 221
    Width = 539
    Height = 144
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 21
    Caption.Indent = 2
    Caption.Text = 'Assigned To Parameters'
    Caption.TopIndent = 2
    Caption.Visible = True
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 132
    object Label1: TLabel
      Left = 5
      Top = 50
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Assigned Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 131
      Top = 71
      Width = 88
      Height = 12
      AutoSize = False
      Caption = 'Lower Date Range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 224
      Top = 71
      Width = 88
      Height = 12
      AutoSize = False
      Caption = 'Upper Date Range'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 5
      Top = 28
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Assigned Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 5
      Top = 91
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Assigned to Personnel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 5
      Top = 114
      Width = 121
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Assigned to Vendor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object AssDateStartField: TAlpineDateTime
      Left = 131
      Top = 48
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      OnChange = InvIDFieldChange
      ShowTime = False
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object AssDateEndField: TAlpineDateTime
      Left = 224
      Top = 47
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      OnChange = InvIDFieldChange
      ShowTime = False
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TimeEndOfDay = True
    end
    object WOAssTypeIDField: TAlpineLookup
      Left = 131
      Top = 25
      Width = 184
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
      InitialSeek = True
      DataFieldIsCharacter = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 120
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DisplayField = 'DESCR'
      ReferencingTable = 'WOASSTYPE'
      ReferencingField = 'WOASSTYPEID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clNavy
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Comic Sans MS'
      ReturnFieldFont.Style = []
      LookupCode = 'DESCR'
      OnChange = InvIDFieldChange
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object AssPersIDField: TAlpineLookup
      Left = 131
      Top = 89
      Width = 306
      Height = 21
      BorderStyle = bsNone
      Ctl3d = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnEnter = ReqPersIDFieldEnter
      ImageName = 'DOWNARROW'
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 76
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DisplayField = 'PERSCODE'
      ReferencingTable = 'PERS'
      ReferencingField = 'PERSID'
      ReturnField = 'LNAME'
      ReturnFieldFont.Charset = DEFAULT_CHARSET
      ReturnFieldFont.Color = clWindowText
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'PERS'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object RolodexIDField: TAlpineLookup
      Left = 131
      Top = 112
      Width = 184
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
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
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
  end
  object InvPanel: TAdvPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 105
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 21
    Caption.Indent = 2
    Caption.Text = 'Item Type'
    Caption.TopIndent = 2
    Caption.Visible = True
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 108
    object InvIDLabel: TLabel
      Left = 5
      Top = 76
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inventory or Apparatus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 5
      Top = 29
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Primary Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 5
      Top = 53
      Width = 121
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inventory Sub Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object InvIDField: TAlpineLookup
      Left = 131
      Top = 73
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
      TabOrder = 2
      TabStop = True
      ImageName = 'DOWNARROW'
      DataFieldIsCharacter = True
      PictureMask = '!!!!!!!!!!!!!!!!'
      EditWidth = 70
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DisplayField = 'INVNUM'
      ReferencingTable = 'INV'
      ReferencingField = 'INVID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clMaroon
      ReturnFieldFont.Height = -13
      ReturnFieldFont.Name = 'Arial'
      ReturnFieldFont.Style = []
      LookupCode = 'INV'
      OnChange = InvIDFieldChange
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object InvTypeField: TAlpineLookup
      Left = 131
      Top = 26
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
      OnExit = InvTypeFieldExit
      ImageName = 'DOWNARROW'
      DataFieldIsCharacter = True
      PictureMask = '!!!!!!!!!!!!!!!!'
      EditWidth = 70
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DisplayField = 'CODE'
      ReferencingTable = 'WOINVTYPE'
      ReferencingField = 'CODE'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clMaroon
      ReturnFieldFont.Height = -13
      ReturnFieldFont.Name = 'Arial'
      ReturnFieldFont.Style = []
      LookupCode = 'STDLOOK'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object InvSubTypeField: TAlpineLookup
      Left = 131
      Top = 49
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
      OnEnter = InvSubTypeFieldEnter
      OnExit = InvSubTypeFieldExit
      ImageName = 'DOWNARROW'
      PictureMask = '!!!!!!!!!!!!!!!!'
      EditWidth = 70
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'INVSUBTYPEID'
      DisplayField = 'CODE'
      ReferencingTable = 'INVSUBTYPE'
      ReferencingField = 'INVSUBTYPEID'
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
    Left = 491
    Top = 28
  end
end