inherited PageListForm: TPageListForm
  Left = 131
  Top = 83
  Caption = 'Texting and Email Entry'
  ClientHeight = 424
  ClientWidth = 420
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 436
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited BaseBottomPanel: TAdvPanel
    Top = 391
    Width = 420
    ExplicitTop = 391
    ExplicitWidth = 420
    FullHeight = 37
    inherited NewButton: TAlpineGlowButton
      Left = 191
      Top = 6
      Width = 19
      Height = 22
      Align = alNone
      Caption = ''
      Position = bpStandalone
      Visible = False
      ExplicitLeft = 191
      ExplicitTop = 6
      ExplicitWidth = 19
      ExplicitHeight = 22
    end
    inherited PrintButton: TAlpineGlowButton
      Left = 167
      Top = 6
      Width = 19
      Height = 22
      Align = alNone
      Caption = ''
      Position = bpStandalone
      ExplicitLeft = 167
      ExplicitTop = 6
      ExplicitWidth = 19
      ExplicitHeight = 22
    end
    inherited DeleteButton: TAlpineGlowButton
      Left = 215
      Top = 6
      Width = 19
      Height = 22
      Align = alNone
      Caption = ''
      Position = bpStandalone
      ExplicitLeft = 215
      ExplicitTop = 6
      ExplicitWidth = 19
      ExplicitHeight = 22
    end
    inherited FindButton: TAlpineGlowButton
      Left = 239
      Top = 6
      Width = 19
      Height = 22
      Align = alNone
      Caption = ''
      Position = bpStandalone
      ExplicitLeft = 239
      ExplicitTop = 6
      ExplicitWidth = 19
      ExplicitHeight = 22
    end
    inherited AuditButton: TAlpineGlowButton
      Left = 1
      Position = bpLeft
      Visible = True
      ExplicitLeft = 1
    end
    inherited CloseButton: TAlpineGlowButton
      Left = 356
      ExplicitLeft = 356
    end
    inherited SaveButton: TAlpineGlowButton
      Left = 293
      Position = bpLeft
      ExplicitLeft = 293
    end
    inherited LockButton: TAlpineGlowButton
      Left = 263
      Top = 6
      Width = 19
      Height = 22
      Align = alNone
      Caption = ''
      Position = bpStandalone
      ExplicitLeft = 263
      ExplicitTop = 6
      ExplicitWidth = 19
      ExplicitHeight = 22
    end
    object TestButton: TAlpineGlowButton
      Left = 64
      Top = 1
      Width = 63
      Height = 31
      Align = alLeft
      Caption = 'Test'
      ImageIndex = 115
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000C30E0000C30E00000001000013000000CCCCCC00BECFC200BBD0
        BF00A8D0B00000FF330008FD390010FB3F00B2B2B200ACACAC00A6A6A6006B9B
        75008C8C8C007F7F7F0068836D0066666600535353004C4C4C00FF00FF003333
        3300000000000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000011111111111111111111
        111111111111111111111111111111111111111111110B121212121212121212
        12121212120B120F0E0E0E0E0E0E0E0E09070B0E1012120E0C0E0C0E0E0E0E0E
        0000070E0E12120E000C000C0E0E0E0E0000080E0E12120E0D0A0A0A0A0A0A0A
        0A0A0A0D0E12120E0101020202020202020202020E12120E0004040404040404
        040405000E12120E0004040404040404040404000E12120E0004040404040404
        040404000E12120E0006040404040404040406000E12120E0300000000000000
        000000030E12120F0E0E0E0E0E0E0E0E0E0E0E0E0F120B121212121212121212
        12121212120B11111111111111111111111111111111}
      Position = bpRight
      TabOrder = 8
      OnClick = TestButtonClick
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
      ImageName = 'PAGE'
    end
  end
  inherited BaseStatusPanel: TPanel
    Top = 387
    Width = 420
    Height = 4
    Visible = False
    ExplicitTop = 387
    ExplicitWidth = 420
    ExplicitHeight = 4
    inherited recid: TLabel
      Left = 44
      Height = 2
      ExplicitLeft = 234
      ExplicitHeight = 2
    end
    inherited SecRecLockLabel: TLabel
      Width = 43
      Height = 2
      ExplicitWidth = 233
      ExplicitHeight = 2
    end
  end
  object GenPanel: TAlpinePanel [2]
    Left = 0
    Top = 0
    Width = 420
    Height = 387
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
    Highlightcolor = clBtnFace
    FullHeight = 100
    object Label2: TLabel
      Left = 5
      Top = 168
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Company'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PhoneLabel: TLabel
      Left = 5
      Top = 198
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Phone or Email'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 5
      Top = 98
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Staff Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 51
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Staff # or Code'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PersIDLabel: TLabel
      Left = 5
      Top = 277
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Staff ID Number'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object StaffLabel: TLabel
      Left = 92
      Top = 299
      Width = 306
      Height = 16
      AutoSize = False
      Caption = '(Not required, but recommended)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object smartphonelabel: TLabel
      Left = 5
      Top = 354
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Smartphone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PhonePinLabel1: TLabel
      Left = 92
      Top = 215
      Width = 306
      Height = 13
      AutoSize = False
      Caption = 'For Phones, use the format 999####### with no dashes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PhonePinLabel2: TLabel
      Left = 92
      Top = 230
      Width = 306
      Height = 13
      AutoSize = False
      Caption = '999 is the area code.  ####### is the seven digit number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FdidLabel: TLabel
      Left = 5
      Top = 28
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Agency'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 5
      Top = 144
      Width = 82
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 92
      Top = 116
      Width = 306
      Height = 13
      AutoSize = False
      Caption = 'Enter Last Name, First'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 92
      Top = 70
      Width = 306
      Height = 13
      AutoSize = False
      Caption = 'Use Staff Number for consistency, STAFFID-1, STAFFID-2 etc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 324
      Width = 82
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Active?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PageCompIDField: TAlpineLookup
      Left = 92
      Top = 164
      Width = 306
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
      TabOrder = 4
      TabStop = True
      OnExit = PageCompIDFieldExit
      ImageName = 'DOWNARROW'
      InitialSeek = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 250
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'PAGECOMPID'
      DisplayField = 'COMPANY'
      ReferencingTable = 'PAGECOMP'
      ReferencingField = 'PAGECOMPID'
      ReturnField = 'COMPANY'
      ReturnFieldFont.Charset = DEFAULT_CHARSET
      ReturnFieldFont.Color = clWindowText
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'PAGECOMP'
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object PhonePinField: TAlpineEdit
      Left = 92
      Top = 194
      Width = 306
      Height = 21
      DataType = pftString
      AutoSize = False
      Controller = OvcController
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
        'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
        'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 5
      DataField = 'PHONEPIN'
      CurrentPos = -1
    end
    object DescrField: TAlpineEdit
      Left = 92
      Top = 95
      Width = 306
      Height = 21
      DataType = pftString
      AutoSize = False
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
      DataField = 'DESCR'
      CurrentPos = -1
    end
    object CodeField: TAlpineEdit
      Left = 92
      Top = 48
      Width = 72
      Height = 21
      DataType = pftString
      AutoSize = False
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
      TabOrder = 1
      DataField = 'CODE'
      CurrentPos = -1
    end
    object PersIDField: TAlpineLookup
      Left = 92
      Top = 275
      Width = 294
      Height = 21
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3d = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      TabStop = True
      OnEnter = PersIDFieldEnter
      ImageName = 'DOWNARROW'
      PictureMask = '!!!!!!!!'
      EditWidth = 80
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'PERSID'
      DisplayField = 'PERSCODE'
      ReferencingTable = 'PERS'
      ReferencingField = 'PERSID'
      ReturnField = 'LNAME'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clNavy
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'PERS'
      OnSetDescription = PersIDFieldSetDescription
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object ISSMARTPHONEField: TAlpineCheckBox
      Left = 92
      Top = 352
      Width = 15
      Height = 20
      Alignment = taLeftJustify
      ButtonType = btClassic
      Caption = 'TAlpineCheckBox'
      ReturnIsTab = False
      TabOrder = 8
      Version = '1.6.0.0'
      DataField = 'ISSMARTPHONE'
      ValueChecked = 'Y'
      ValueUnChecked = 'N'
    end
    object FdidField: TAlpineLookup
      Left = 92
      Top = 24
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
      TabOrder = 0
      TabStop = True
      ImageName = 'DOWNARROW'
      DataFieldIsCharacter = True
      PictureMask = '!!!!!'
      EditWidth = 50
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
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'FDIDDISP'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object PageListTypeIDField: TAlpineLookup
      Left = 92
      Top = 141
      Width = 306
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
      TabOrder = 3
      TabStop = True
      ImageName = 'DOWNARROW'
      InitialSeek = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 250
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'PAGELISTTYPEID'
      DisplayField = 'DESCR'
      ReferencingTable = 'PAGELISTTYPE'
      ReferencingField = 'PAGELISTTYPEID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = DEFAULT_CHARSET
      ReturnFieldFont.Color = clWindowText
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'DESCR150'
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object ActiveField: TAlpineCheckBox
      Left = 92
      Top = 322
      Width = 15
      Height = 20
      Alignment = taLeftJustify
      ButtonType = btClassic
      Caption = 'TAlpineCheckBox'
      ReturnIsTab = False
      TabOrder = 7
      Version = '1.6.0.0'
      DataField = 'ACTIVE'
      ValueChecked = 'Y'
      ValueUnChecked = 'N'
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
    Left = 386
    Top = 130
  end
end
