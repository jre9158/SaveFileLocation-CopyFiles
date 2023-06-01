inherited InvInspHistForm: TInvInspHistForm
  Left = 163
  Top = 86
  Caption = 'Inspection History'
  ClientHeight = 686
  ClientWidth = 646
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 662
  ExplicitHeight = 725
  PixelsPerInch = 96
  TextHeight = 13
  inherited BaseBottomPanel: TAdvPanel
    Top = 653
    Width = 646
    TabOrder = 5
    ExplicitTop = 653
    ExplicitWidth = 646
    FullHeight = 0
    inherited NewButton: TAlpineGlowButton
      Left = 64
      Width = 24
      Caption = ' '
      Visible = False
      ExplicitLeft = 64
      ExplicitWidth = 24
    end
    inherited PrintButton: TAlpineGlowButton
      Left = 456
      Visible = True
      ExplicitLeft = 456
    end
    inherited DeleteButton: TAlpineGlowButton
      Left = 88
      Width = 24
      Caption = ' '
      ExplicitLeft = 88
      ExplicitWidth = 24
    end
    inherited FindButton: TAlpineGlowButton
      Left = 112
      Width = 24
      Caption = ' '
      ExplicitLeft = 112
      ExplicitWidth = 24
    end
    inherited AuditButton: TAlpineGlowButton
      Left = 1
      Position = bpStandalone
      Visible = True
      ExplicitLeft = 1
    end
    inherited CloseButton: TAlpineGlowButton
      Left = 582
      ExplicitLeft = 582
    end
    inherited SaveButton: TAlpineGlowButton
      Left = 519
      ExplicitLeft = 519
    end
    inherited LockButton: TAlpineGlowButton
      Left = 136
      Width = 24
      Caption = ' '
      ExplicitLeft = 136
      ExplicitWidth = 24
    end
    object TagButton: TAlpineGlowButton
      Left = 256
      Top = 1
      Width = 90
      Height = 31
      Caption = 'Tag SCBA'#39's'
      ImageIndex = 135
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00578596003354640036596F00718EA900FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF003D6B79002D434C001F61850023537400303941006480
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF002E41460004ABEE0000A6FF000099FF00116BBA003333
        3300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF002658660000B6FF0000A6FF000099FF000284F5003039
        4100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00245D6E0000B6FF0000A6FF000099FF000088FF002E3A
        4700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00245F710000B6FF0000A6FF000099FF000088FF002E3A
        4700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF002B49520019759900196D990019659900196599003037
        3D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000D7FCC00196599000D7FCC00196599000D7FCC001965
        99003A4E6900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00264F6600215C78001F5D820021567800215678002C42
        51006D819C0052525200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00245F710000B6FF0000A6FF000099FF000088FF002E3A
        4700FF00FF006666660099999900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00245D6E0000B6FF0000A6FF000099FF000088FF002E3A
        4700FF00FF008383830083838300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0028515D00558FA60011A5F4000099FF000284F5003037
        3D00FF00FF00737373008E8E8E00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0066666600666666007373730066666600303941003042
        58007A7A7A0066666600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0066666600666666003D3D3D003D3D3D0066666600494E
        520083838300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0052525200333333003333330073737300FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF005757570073737300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 8
      Visible = False
      OnClick = TagButtonClick
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
      ImageName = 'SCBA'
    end
  end
  inherited BaseStatusPanel: TPanel
    Top = 649
    Width = 646
    Height = 4
    TabOrder = 4
    Visible = False
    ExplicitTop = 649
    ExplicitWidth = 646
    ExplicitHeight = 4
    inherited recid: TLabel
      Left = 270
      Height = 2
      ExplicitLeft = 466
      ExplicitHeight = 2
    end
    inherited SecRecLockLabel: TLabel
      Width = 269
      Height = 2
      ExplicitWidth = 465
      ExplicitHeight = 2
    end
  end
  object GenInfoPanel: TAlpinePanel [2]
    Left = 0
    Top = 0
    Width = 646
    Height = 95
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
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Apparatus'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 49
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Type'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 264
      Top = 73
      Width = 56
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Additional'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 2
      Top = 74
      Width = 79
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DescrField: TAlpineEdit
      Left = 324
      Top = 70
      Width = 316
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
      DataField = 'DESCR'
      CurrentPos = -1
    end
    object InvIDField: TAlpineLookup
      Left = 86
      Top = 22
      Width = 432
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
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Arial'
      ReturnFieldFont.Style = []
      LookupCode = 'UNITNUM'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object InvServTypeIDField: TAlpineLookup
      Left = 86
      Top = 46
      Width = 432
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
      OnExit = InvServTypeIDFieldExit
      ImageName = 'DOWNARROW'
      InitialSeek = True
      DataFieldIsCharacter = True
      PictureMask = '!!!!!!!!!!!!!!!!'
      EditWidth = 70
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'INVSERVTYPEID'
      DisplayField = 'CODE'
      ReferencingTable = 'INVSERVTYPE'
      ReferencingField = 'INVSERVTYPEID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clMaroon
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Arial'
      ReturnFieldFont.Style = []
      LookupCode = 'CODEDESCR'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object DateDoneField: TAlpineDateTime
      Left = 86
      Top = 70
      Width = 134
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      DataField = 'DATEDONE'
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object InfoPanel1: TPanel [3]
    Left = 0
    Top = 95
    Width = 646
    Height = 192
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object AlpinePanel1: TAlpinePanel
      Left = 0
      Top = 0
      Width = 302
      Height = 192
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
        Top = 26
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 49
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Personnel'
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
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StartTimeLabel: TLabel
        Left = 2
        Top = 149
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Start Time:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object EndTimeLabel: TLabel
        Left = 2
        Top = 172
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'End Time:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object APPRPERSIDLabel: TLabel
        Left = 2
        Top = 121
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Reviewed By'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 2
        Top = 95
        Width = 79
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Number Passed'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 131
        Top = 95
        Width = 33
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Failed'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 211
        Top = 95
        Width = 51
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Not Done'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RolodexIDField: TAlpineLookup
        Left = 86
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
        Left = 86
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
        Left = 86
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
        DropDownRows = 6
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
      object StartTimeField: TAlpineDateTime
        Left = 86
        Top = 146
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        DataField = 'DATETIMESTART'
        TabOrder = 4
        OnExit = StartTimeFieldExit
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
      end
      object EndTimeField: TAlpineDateTime
        Left = 86
        Top = 169
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        DataField = 'DATETIMEEND'
        TabOrder = 5
        OnExit = EndTimeFieldExit
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
      end
      object ApprPersIDField: TAlpineLookup
        Left = 86
        Top = 118
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
        TabOrder = 3
        TabStop = True
        OnEnter = ApprPersIDFieldEnter
        ImageName = 'DOWNARROW'
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 76
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'APPRPERSID'
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
      object PassField: TAlpineEdit
        Left = 86
        Top = 92
        Width = 32
        Height = 21
        DataType = pftReal
        Controller = OvcController
        Enabled = False
        Epoch = 1900
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 3
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentFont = False
        PictureMask = '###'
        TabOrder = 6
        RightAlign = True
        CurrentPos = -1
        Text = '  0'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object FailField: TAlpineEdit
        Left = 169
        Top = 92
        Width = 32
        Height = 21
        DataType = pftReal
        Controller = OvcController
        Enabled = False
        Epoch = 1900
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 3
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentFont = False
        PictureMask = '###'
        TabOrder = 7
        RightAlign = True
        CurrentPos = -1
        Text = '  0'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object NotDoneField: TAlpineEdit
        Left = 267
        Top = 92
        Width = 32
        Height = 21
        DataType = pftReal
        Controller = OvcController
        Enabled = False
        Epoch = 1900
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 3
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentFont = False
        PictureMask = '###'
        TabOrder = 8
        RightAlign = True
        CurrentPos = -1
        Text = '  0'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
    end
    object ReadingPanel: TPanel
      Left = 302
      Top = 0
      Width = 344
      Height = 192
      Align = alRight
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object MilePanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 344
        Height = 147
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
          Top = 26
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
          Top = 49
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
          Left = 1
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
          Left = 155
          Top = 26
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
          Left = 158
          Top = 49
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
          Left = 155
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
          Left = 158
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
          DataField = 'ODOMETER'
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourEngineField: TAlpineEdit
          Left = 75
          Top = 46
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
          TabOrder = 1
          DataField = 'HOURENGINE'
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourPumpField: TAlpineEdit
          Left = 75
          Top = 69
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
          DataField = 'HOURPUMP'
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourAerialField: TAlpineEdit
          Left = 75
          Top = 92
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
          TabOrder = 3
          DataField = 'HOURAERIAL'
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object UpdateButton: TAlpineGlowButton
          Left = 75
          Top = 117
          Width = 203
          Height = 23
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
          Left = 268
          Top = 23
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
          TabOrder = 5
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CHourEngineField: TAlpineEdit
          Left = 268
          Top = 46
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
          TabOrder = 6
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CHourPumpField: TAlpineEdit
          Left = 268
          Top = 69
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
          TabOrder = 7
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CHourAerialField: TAlpineEdit
          Left = 268
          Top = 92
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
          TabOrder = 8
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
      end
      object HourPanel: TAlpinePanel
        Left = 0
        Top = 147
        Width = 344
        Height = 45
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
        object Label3: TLabel
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
        object Label19: TLabel
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
          OnClick = HourButtonClick
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
  object InfoPanel2: TPanel [4]
    Left = 0
    Top = 287
    Width = 646
    Height = 244
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object AlpinePanel2: TAlpinePanel
      Left = 504
      Top = 0
      Width = 142
      Height = 244
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
        Left = 4
        Top = 193
        Width = 86
        Height = 15
        AutoSize = False
        Caption = 'Total Cost ($)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label5: TLabel
        Left = 4
        Top = 47
        Width = 86
        Height = 15
        AutoSize = False
        Caption = 'Labor Lgth (HRS)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label10: TLabel
        Left = 4
        Top = 116
        Width = 86
        Height = 15
        AutoSize = False
        Caption = 'Labor Total ($)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object TotalCostField: TAlpineEdit
        Left = 4
        Top = 170
        Width = 62
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
        MaxLength = 8
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '#,###.##'
        TabOrder = 2
        DataField = 'TOTALCOST'
        RightAlign = True
        CurrentPos = -1
        Text = '    0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object LaborLengthTotalField: TAlpineEdit
        Left = 4
        Top = 26
        Width = 62
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
        MaxLength = 8
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '#,###.##'
        TabOrder = 0
        AfterExit = LaborLengthTotalFieldAfterExit
        DataField = 'LABORLENGTHTOTAL'
        RightAlign = True
        CurrentPos = -1
        Text = '    0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object LaborTotalField: TAlpineEdit
        Left = 4
        Top = 95
        Width = 62
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
        MaxLength = 8
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '#,###.##'
        TabOrder = 1
        AfterExit = LaborTotalFieldAfterExit
        DataField = 'LABORTOTAL'
        RightAlign = True
        CurrentPos = -1
        Text = '    0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object TotalCostButton: TAlpineGlowButton
        Left = 269
        Top = 78
        Width = 16
        Height = 22
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
        TabOrder = 3
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
    end
    object AlpinePanel6: TAlpinePanel
      Left = 0
      Top = 0
      Width = 504
      Height = 244
      Align = alClient
      BevelOuter = bvLowered
      Color = clBlack
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
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = 'Inspection Checks (Press Space Bar to Enter AOK)'
      Caption.TopIndent = 2
      Caption.Visible = True
      ColorTo = clBtnFace
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      ExplicitWidth = 471
      FullHeight = 100
      object InvServTypeItemBrowse: TAlpineTMSStringGrid
        Left = 2
        Top = 18
        Width = 500
        Height = 198
        Cursor = crDefault
        Align = alClient
        BorderStyle = bsNone
        ColCount = 1
        Ctl3D = True
        DefaultRowHeight = 36
        RowCount = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnDblClick = InvServTypeItemBrowseDblClick
        OnKeyDown = InvServTypeItemBrowseKeyDown
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
        FixedRowHeight = 20
        FixedRowAlways = True
        FixedColAlways = True
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
        SortSettings.FixedCols = True
        Version = '7.1.0.1'
        ViewOnly = False
        ExplicitWidth = 467
        RowHeights = (
          20)
      end
      object AdvPanel1: TAdvPanel
        Left = 2
        Top = 216
        Width = 500
        Height = 26
        Align = alBottom
        BevelInner = bvLowered
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
        ExplicitWidth = 467
        FullHeight = 0
        object OKButton: TAlpineGlowButton
          Left = 1
          Top = 1
          Width = 63
          Align = alLeft
          Caption = '&OK'
          ImageIndex = 127
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
          TabOrder = 0
          OnClick = OKButtonClick
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
        object ServiceDeleteButton: TAlpineGlowButton
          Left = 127
          Top = 1
          Width = 63
          Align = alLeft
          Caption = 'Clear'
          ImageIndex = 125
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
          Position = bpRight
          TabOrder = 1
          OnClick = ServiceDeleteButtonClick
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
        object ServiceEditButton: TAlpineGlowButton
          Left = 64
          Top = 1
          Width = 63
          Align = alLeft
          Caption = 'Edit'
          ImageIndex = 126
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
          Position = bpMiddle
          TabOrder = 2
          OnClick = ServiceEditButtonClick
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
      end
    end
  end
  object InfoPanel3: TPanel [5]
    Left = 0
    Top = 531
    Width = 646
    Height = 118
    Align = alBottom
    Caption = 'InfoPanel3'
    TabOrder = 3
    object AlpinePanel5: TAlpinePanel
      Left = 1
      Top = 1
      Width = 289
      Height = 116
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
        Width = 285
        Height = 94
        Align = alClient
        Caption = 'AlpineMemo1'
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
        ScrollBars = ssNone
      end
    end
    object RedNarrPanel: TAlpinePanel
      Left = 290
      Top = 1
      Width = 355
      Height = 116
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
      Caption.Text = 'RedAlert Narrative (Conversion)'
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
      object RedNarrField: TAlpineMemo
        Left = 2
        Top = 20
        Width = 351
        Height = 94
        Align = alClient
        Caption = 'RedNarrField'
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
        DataField = 'REDNARR'
        ReadOnly = False
        ScrollBars = ssNone
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
    Left = 509
    Top = 22
  end
  object ItemPopup: TAdvPopupMenu
    Version = '2.5.4.3'
    Left = 216
    Top = 371
    object EditChoice: TMenuItem
      Caption = 'Edit Comments'
      ImageIndex = 0
    end
  end
end
