inherited InvInspSchdForm: TInvInspSchdForm
  Left = 194
  Top = 118
  Caption = 'Inspection Schedule Entry'
  ClientHeight = 551
  ClientWidth = 552
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitTop = -50
  ExplicitWidth = 568
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited BaseBottomPanel: TAdvPanel
    Top = 518
    Width = 552
    TabOrder = 5
    ExplicitTop = 518
    ExplicitWidth = 552
    FullHeight = 0
    inherited NewButton: TAlpineGlowButton
      Width = 23
      Visible = False
      ExplicitWidth = 23
    end
    inherited PrintButton: TAlpineGlowButton
      Left = 116
      Width = 23
      Align = alLeft
      ExplicitLeft = 116
      ExplicitWidth = 23
    end
    inherited DeleteButton: TAlpineGlowButton
      Left = 24
      Width = 23
      ExplicitLeft = 24
      ExplicitWidth = 23
    end
    inherited FindButton: TAlpineGlowButton
      Left = 47
      Width = 23
      ExplicitLeft = 47
      ExplicitWidth = 23
    end
    inherited AuditButton: TAlpineGlowButton
      Left = 70
      Width = 23
      ExplicitLeft = 70
      ExplicitWidth = 23
    end
    inherited CloseButton: TAlpineGlowButton
      Left = 488
      ExplicitLeft = 488
    end
    inherited SaveButton: TAlpineGlowButton
      Left = 425
      Position = bpLeft
      ExplicitLeft = 425
    end
    inherited LockButton: TAlpineGlowButton
      Left = 93
      Width = 23
      ExplicitLeft = 93
      ExplicitWidth = 23
    end
    object DuplicateButton: TAlpineGlowButton
      Left = 139
      Top = 1
      Width = 107
      Height = 31
      Align = alLeft
      Caption = 'Apply to all inventory'
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
      TabOrder = 8
      Visible = False
      OnClick = DuplicateButtonClick
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
  inherited BaseStatusPanel: TPanel
    Top = 515
    Width = 552
    Height = 3
    TabOrder = 4
    Visible = False
    ExplicitTop = 515
    ExplicitWidth = 552
    ExplicitHeight = 3
    inherited recid: TLabel
      Left = 176
      Height = 1
      ExplicitLeft = 375
      ExplicitHeight = 1
    end
    inherited SecRecLockLabel: TLabel
      Width = 175
      Height = 1
      ExplicitWidth = 374
      ExplicitHeight = 1
    end
  end
  object AlpinePanel4: TAlpinePanel [2]
    Left = 0
    Top = 0
    Width = 552
    Height = 166
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
    Caption.Text = 'Schedule Information'
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
      Left = 1
      Top = 30
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Apparatus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1
      Top = 118
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inspection Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 1
      Top = 142
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Additional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object InvSubTypeIDLabel: TLabel
      Left = 1
      Top = 95
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Inventory Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BlankLabel: TLabel
      Left = 163
      Top = 60
      Width = 155
      Height = 29
      Alignment = taCenter
      AutoSize = False
      Caption = 'Leave this blank to include in all vehicles of this type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Image1: TImage
      Left = 127
      Top = 47
      Width = 35
      Height = 26
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000006E00
        000064080600000067C0059D0000000473424954080808087C08648800000009
        7048597300000B1200000B1201D2DD7EFC0000001874455874536F6674776172
        650041646F62652046697265776F726B734FB31F4E0000001674455874437265
        6174696F6E2054696D650031312F30322F3135B778E10F000003024944415478
        DAEDDDD151DB50108561B982D041DC41A082900E4805312FBCE20E9212C86B5E
        7007A4834005980E28012A50760769C6318E2CE9AE7675EE3DFF8C46330906AC
        6F6474378E58D4755D31BC1684C38C70A0110E34C2814638D008071AE1400B83
        FBB5585CC8EEFEAAAE5FA20F0262217082B692DDAD6C5BD9BE106F78EE70CD99
        76B7F3475B813B8B3E1068B9C209DAA9ECFEC876B2F7571BC1BB8C3E1848B9C1
        75A0B5116F402E7082A6588FB22D8F7CE85AF07E461F148426876BD0F44C3BED
        F9904BC1DB041F97D9E701A7675A5FB4B6AF82F73BECA80034299CA0E925FF6A
        C4437579A0CB846DD071997D93C125A0B511AFA349E004ED5A7637069FEA59B6
        332ED0DF670EB73315B18AD3950399C21D988A58C5E9CA5E66703D16D8A97181
        BE93099C035A1BF19A92E1064C45ACE274A54A841B3115B1AAF8E94A2ADC98A9
        8855454F5746C3192CB0532B7A813E0A6E06686DC5E20D86339C8A58F55C1538
        5D190437C154C4AAE2A62BBDE1269C8A5855D474A5179CE3023BB56216E847E1
        80D0DA8AC0EB840B988A5895FD74E5BF70815311ABB29EAE74C1454E45ACCA76
        BA72106E460BECD4B25DA0BF83CB08AD2D4BBC7FE004ED4335FCE5F166C46352
        5B576F8BEEBEBD08DC93F3F7386916FF1EA71730E7CEDFF7B9403C387FCD5945
        38D008071AE140231C6884038D70A0110E34C2814638D008071AE140231C6884
        038D70A0110E34C2814638D008071AE140231C68A870FA0EAF57E7AFE9D9FAD8
        DB0951E172EFE82B0AE1E619E140231C6884038D70A0110E34C2814638D00807
        1AE140231C6884038D70A0110E34C281E602F75D763FA29F6966B9C07D93DD26
        FA9966960BDCC7EAEDF6BACCAEE9E134C1D33BC75E443FDB8C7283FB2CBBFBE8
        679B513E701AAF2E4D7385D39F75FA9632945B00CF393F388D2F9966F9C269CD
        F2406F85C8336F7CFE709AE07D929DDE5277197D04408B81D39A9B96AE9B8D67
        DFB0E2E0DA1A405DE3AD2A5E75F62D1E6EBFE6EA7319785010D25F37D3F99F5A
        DCE1984D84038D70A0110E34C2814638D008071AE140231C688403ED2F4EC3D4
        571661D24B0000000049454E44AE426082}
      Stretch = True
    end
    object Image2: TImage
      Left = 319
      Top = 62
      Width = 35
      Height = 26
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000006E00
        000064080600000067C0059D0000000467414D410000B18F0BFC610500000009
        7048597300000B0F00000B0F0192F903A50000001874455874536F6674776172
        650041646F62652046697265776F726B734FB31F4E0000032B4944415478DAED
        DCCD6D13511486E16382609994900E081590749074604B08C20A97001D98153F
        1B4205B8034C05840E4C07B08445C2398A912C637BCE9DFB37DFCCF76C8C8233
        19FBD575E61E391E09411AD53E016A87E140311C288603C570A0180E14C38162
        38500C07AA31DC7B9143BD39A97DA25D7620B27C2AF2A3E4CFF4847BA2378B5A
        4F0A98C5ADC8953EA9F3E722BF72FE2086CB40E3FDD49B993EB9B35C01192EAF
        E58DC8F90B91EFA90FCC7099AD56DFF452E453CAE3325C39A7FAB2F935D5C118
        AE105B79F7F5EA3CD5D527C395B5D0557796E2400C575E92974C862B4C5F32E7
        7AA172117B1C86ABE040E438F6771DC355A0AB6E1CBB3D60B80A34DC2B0DF73A
        E6180C5747F4D525C3D5C170A0180E14C3816238500C078AE140311C288603C5
        70A0180E14C3816238500C078AE140E50FF741E4E4466456FB916674382AFF47
        2DF9C3F55DA55714868BC570A0180E14C3816238500C078AE140311C288603C5
        70A0180E14C3816238500C078AE140311C288603C570A0180E14C38162B88E78
        2BF2E89EC851C0B7D83BBC8ABE8BED56E45A9FF869E0B75DAF7F6869EFC2ADDE
        4EF8651416AFD3ECE3822F4526EB5FEB5D38D3A778DBA2995E8633FABBEB5C6F
        3ED73E8F18F692AAD11E6FFBBFDE8633BAF2C6FAE03FD63E8F362CDA43BD8099
        DC7D34F07F7A1DCEE8CA7B29786FA15F3ED095B62B9AE97D38F34E579D3ED071
        EDF3F0B08F00D6ABE2B367BAE2F6DD6F10E10C423C6F3433987046E37DABF097
        39212E74AF36F7DC7150E1F42AE5E8F7DD36A173F1F49C26BAD2AE02EE3F2C16
        EF8FAE3CFDE771ED735933D595F626E41B0617CE746983BE6B83DD6490E14C17
        E2B58D66061BCED49CAEEC9B8A780C3A9CA9315D699A8A780C3E9C293C5D699C
        8A7830DC4A890D7AC806BB09C3ADC9192F6534C3701B324E57DC53110F86DB90
        63BA123A15711E9336259EAE044F453C186E87141BF4980D761386DB23265ECE
        6886E11AB499AEC44E453C18CE2164BA92622AE2C1704ECEE94A92A98807C305
        D8B7414FBDC16EC27081B6C52B1DCD305C0B5BA62B49A7221E0CD7C2FA7425C7
        54C483E15A5A4D574E4BAFB47F180E14C3816238500C078AE140311C288603C5
        70A0FE024ECC3574FA9F781D0000000049454E44AE426082}
      Stretch = True
    end
    object DescrField: TAlpineEdit
      Left = 95
      Top = 139
      Width = 350
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
      Left = 95
      Top = 27
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
      ImageName = 'DOWNARROW'
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
      ReturnFieldFont.Height = -13
      ReturnFieldFont.Name = 'Arial'
      ReturnFieldFont.Style = []
      LookupCode = 'UNITNUM'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object InvServTypeIDField: TAlpineLookup
      Left = 95
      Top = 115
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
      OnEnter = InvServTypeIDFieldEnter
      ImageName = 'DOWNARROW'
      InitialSeek = True
      DataFieldIsCharacter = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 120
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'INVSERVTYPEID'
      DisplayField = 'DESCR'
      ReferencingTable = 'INVSERVTYPE'
      ReferencingField = 'INVSERVTYPEID'
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
    object InvServFormField: TAlpineEdit
      Left = 463
      Top = 27
      Width = 67
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
      TabOrder = 4
      Visible = False
      DataField = 'INVSERVFORM'
      CurrentPos = -1
    end
    object InvSubTypeIDField: TAlpineLookup
      Left = 95
      Top = 91
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
      ImageName = 'DOWNARROW'
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 60
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'INVSUBTYPEID'
      DisplayField = 'DESCR'
      ReferencingTable = 'INVSUBTYPE'
      ReferencingField = 'INVSUBTYPEID'
      ReturnField = 'DESCR'
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
  end
  object AppPanel: TAlpinePanel [3]
    Left = 0
    Top = 166
    Width = 552
    Height = 150
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
    Caption.Text = 'Schedule Parameters'
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
    object Label1: TLabel
      Left = 1
      Top = 31
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Engine Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 244
      Top = 31
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Engine Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 55
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Odometer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 244
      Top = 55
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Odometer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1
      Top = 79
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 244
      Top = 79
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 1
      Top = 103
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Pump Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 244
      Top = 103
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Pump Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 1
      Top = 127
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Aerial Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 244
      Top = 127
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Aerial Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object HourMinField: TAlpineEdit
      Left = 127
      Top = 27
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 0
      DataField = 'HOURMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object HourMaxField: TAlpineEdit
      Left = 371
      Top = 27
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 1
      DataField = 'HOURMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object MileMinField: TAlpineEdit
      Left = 127
      Top = 51
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 7
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###'
      TabOrder = 2
      DataField = 'MILEMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '      0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object MileMaxField: TAlpineEdit
      Left = 371
      Top = 51
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 7
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###'
      TabOrder = 3
      DataField = 'MILEMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '      0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object DayMinField: TAlpineEdit
      Left = 127
      Top = 75
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 4
      DataField = 'DAYMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object DayMaxField: TAlpineEdit
      Left = 371
      Top = 75
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 5
      DataField = 'DAYMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit1: TAlpineEdit
      Left = 127
      Top = 99
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 6
      DataField = 'HOURPUMPMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit2: TAlpineEdit
      Left = 371
      Top = 99
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 7
      DataField = 'HOURPUMPMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit3: TAlpineEdit
      Left = 127
      Top = 123
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 8
      DataField = 'HOURAERIALMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit4: TAlpineEdit
      Left = 371
      Top = 123
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 9
      DataField = 'HOURAERIALMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
  end
  object AlpinePanel2: TAlpinePanel [4]
    Left = 0
    Top = 386
    Width = 552
    Height = 129
    Align = alClient
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
      Width = 548
      Height = 107
      Align = alClient
      Caption = 'NarrField'
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
  object InvPanel: TAlpinePanel [5]
    Left = 0
    Top = 316
    Width = 552
    Height = 70
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
    Caption.Text = 'Schedule Parameters'
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
    object Label18: TLabel
      Left = 1
      Top = 26
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 244
      Top = 26
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Days'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 1
      Top = 49
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Warning Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 243
      Top = 49
      Width = 123
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Required Hours'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object AlpineEdit9: TAlpineEdit
      Left = 127
      Top = 22
      Width = 65
      Height = 22
      DataType = pftReal
      AutoSize = False
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 0
      DataField = 'DAYMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit10: TAlpineEdit
      Left = 371
      Top = 22
      Width = 65
      Height = 22
      DataType = pftReal
      AutoSize = False
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 1
      DataField = 'DAYMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit5: TAlpineEdit
      Left = 127
      Top = 46
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 2
      DataField = 'HOURMIN'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object AlpineEdit6: TAlpineEdit
      Left = 371
      Top = 46
      Width = 65
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 2000
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
      PictureMask = '##,###'
      TabOrder = 3
      DataField = 'HOURMAX'
      RightAlign = True
      CurrentPos = -1
      Text = '     0'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
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
    Left = 301
    Top = 6
  end
end
