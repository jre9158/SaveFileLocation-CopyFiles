object VoteForm: TVoteForm
  Left = 114
  Top = 50
  Caption = 'Voter System'
  ClientHeight = 538
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object AdvPanel2: TAdvPanel
    Left = 0
    Top = 509
    Width = 761
    Height = 29
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
    ColorTo = clBtnFace
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 29
    object CloseButton: TAlpineGlowButton
      Left = 697
      Top = 1
      Width = 63
      Height = 27
      Align = alRight
      Caption = 'Close'
      ImageIndex = 119
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
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000005C6600005C66000000000099999900999999009999
        990015151500000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF0000000000005C6600005C6600005C660000000000BCBCBC00BCBCBC000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000526600005266000052660000000000B2B2B200B2B2B2000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000526600005266000052660000000000A9A9A900A9A9A9000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000496600004966000084A900000D100099999900999999000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000049660000496600004966000000000099999900999999000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000004366000043660000436600000000008C8C8C008C8C8C000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000043660000436600004366000000000083838300838383000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000003A6600003A6600003A6600000000007A7A7A007A7A7A000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000033660000336600000000000000000070707000707070000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000666666006666660066666600666666000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000010A140000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      TabOrder = 0
      OnClick = CloseButtonClick
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
      ImageName = 'CLOSE'
    end
    object AlpineGlowButton2: TAlpineGlowButton
      Left = 1
      Top = 1
      Width = 152
      Height = 27
      Align = alLeft
      Caption = 'Number of Votes'
      ImageIndex = 67
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000C30E0000C30E00000001000048000000EDEDED00E4E4E400D4DF
        E600DCDCDC00CCDAE400B2D8F100D8D8D800CFD5D90000DFFF00BACFDE0000D7
        FF009CC8EC00CCCCCC00A0CAE600AAC8DD008BC7EC0098C7E60000CCFF0095C2
        DF0000C5FF00C3C3C30082BDE30069BAF1007ABBE500BEBEBE008BBBDB0069B8
        EE0048B5FB0079B5DE0000B5FF0086B4D200B6B6B60073B2DB0041AAF40031AB
        F9001CAEF60000ACFF0011AAFB0097AFBF0073ABD10012A6FE0000A8FF0034A5
        F20016A6F8005EA7DA0017A2FB000BA2F5001C9EFA000D9DFD0009A0F800089E
        FD00209BF800A5A5A500299DEE000099FF002297F4009FA1A2000794FE000D93
        FC003097D900008EFF006197BA00078AFD0099999900919394000083FF00007B
        FF008C8E91008B8D8E000076FF0082848500FF00FF0000000000000000000000
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
        0000000000000000000000000000000000000000000047474747474747474747
        4747474747473F3F383838383838383838384040474740341818181818181818
        1818344047473F1F03030416300F010101031F3F47473F18091A2F39362D0D03
        0306183F47473F2C333E413C36362D12060C1F3F47473F35414545392D362928
        19141F3F47473F2637424232203224242B1E1F3F47473F1F1C3A412A0C2D291D
        1D32273F47474018072139150310281D1313233D474740140102360B01012224
        131313311747400C010000000000052813130A082517430C000000000000001B
        1D110A080A32461F0C0606060606060E28110A0A231543464443434343434343
        3B1D112E124747474747474747474747473232124747}
      TabOrder = 1
      OnClick = AlpineGlowButton2Click
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
      ImageName = 'VOTE'
    end
  end
  object AdvPanel5: TAdvPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 43
    Align = alTop
    BevelOuter = bvLowered
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
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    ColorTo = clSilver
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    DesignSize = (
      761
      43)
    FullHeight = 0
    object Image3: TImage
      Left = 8
      Top = 2
      Width = 40
      Height = 40
      Picture.Data = {
        07544269746D6170760A0000424D760A00000000000036040000280000002800
        000028000000010008000000000040060000C30E0000C30E0000000100001C00
        000033333300CCCCCC00FF00FF00ADADAD0073737300E6E6E600DEDEDE005A5A
        5A0099999900EFEFEF00C0C0C000D6D6D6005353530084848400F7F7F7004B4B
        4B00C5C5C500D6D6DE0066666600B5B5B5007B7B7B008C8C8C00414141005E5E
        5F00A5A5A6003A3A3A00A0A0A100FFFFFF000000000000000000000000000000
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
        0000020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020212121212
        020202020202020202020202020202020202020202020202020202020202020D
        160F120D1A03031A0D1216160D02020202020202020202020202020202020202
        020202020217161410090E0E0E0E0E0E0E0E0901141907020202020202020202
        02020202020202020202020D190D0B09090E0E0E0E0E0E0E0E0E0E0E0E060D19
        1502020202020202020202020202020202020F0C1009090909090E0E0E0E0E0E
        0E0E0E0909090910120C0202020202020202020202020202020C0D0B09090909
        090909090E0E0E0E0E09090909090909060D0C02020202020202020202020202
        0C150605050909090909090909090909090909090909090909050D0C02020202
        020202020202020F140B05050505090909090909090909090909090909090909
        090506040F020202020202020202140C0B050505050505090909090909090909
        09090909090909050505050B1714020202020202020219130505050505050505
        09090909090909090909090909090505050505050A1902020202020202071406
        0605050505050505050509090909090909090909050505050505050505140C02
        02020202020F1006060605050505050505050505050505050505050505050505
        0505050505011902020202020404060606060605050505050505050505050505
        0505050505050505050505060606120402020202190306060606060605050505
        05050505050505050505050505050505050506060606130002020202160B0B06
        0606060606060505050505050505050505050505050505050506060606060616
        02020202170B0B0B060606060606050505050505050505050505050505050506
        060606060606061702020214140B0B0B06060606060606060505050505050505
        0505050505060606060606060606061402020207150B0B0B0606060606060606
        0606060606060606060606060606060606060606060606150702020C150B0B0B
        060606060606060606060606060606060606060606060606060606060606061A
        0702020C150B0B0B0B0606060606060606060606060606060606060606060606
        060606060606061A17020217150B0B0B0B0B0606060606060606060606060606
        06060606060606060606060B0B0B0B15170202140D0B0B0B0B0B0B0606060606
        060606060606060606060606060606060606060B0B0B0B0D02020214120B0B0B
        0B0B0B06060606060606060606060606060606060606060606060B0B0B0B0B12
        020202020F010B0B0B0B0B060606060606060606060606060606060606060606
        060B0B0B0B0B010C020202020F03010B0B0B0B0B0B0606060606060606060606
        060606060606060B0B0B0B0B0B0B130C02020202041401010B0B0B0B0B0B0606
        060606060606060606060606060B0B0B0B0B0B0B0B0B140402020202020C0A01
        01010B0B0B0B0B0B06060606060606060606060B0B0B0B0B0B0B0B0B010A0702
        0202020202170D01010101010B0B0B0B0B0B0B0B0606060B0B0B0B0B0B0B0B0B
        01010101011512020202020202020C031010010101010B0B0B0B0B0B0B0B0B0B
        0B0B0B0B0B0B0101010101010307020202020202020202121310101010010101
        010B0B0B0B0B0B0B0B0B0B01010101101010101312040202020202020202020C
        14130A0A10101001010101010B0B0B01010101010110100A0A0A0A0D07020202
        0202020202020202070D130A0A0A0A10101001010101010101011010100A0A0A
        0A0A1517020202020202020202020202020714031313130A0A0A101010101010
        100A0A0A0A1313130314070202020202020202020202020202020C121A131313
        13130A0A0A0A0A0A0A0A13131313130812070202020202020202020202020202
        020202020F0418131313131313131313131313131318140C0202020202020202
        020202020202020202020202020C0C04080313131313131313130308040C0702
        0202020202020202020202020202020202020202020202170C0C12140D0D0D0D
        14120C0C02020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202}
      Transparent = True
    end
    object PersTitleLabel: TLabel
      Left = 52
      Top = 4
      Width = 126
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'RedAlert'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object PersNumLabel: TLabel
      Left = 52
      Top = 22
      Width = 126
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'Voter System'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5131854
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object TitleImage: TImage
      Left = 12
      Top = 6
      Width = 30
      Height = 32
      Transparent = True
    end
    object DescrField: TLabel
      Left = 607
      Top = 9
      Width = 145
      Height = 25
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Election Label'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object AddressPanel: TPanel
    Left = 0
    Top = 338
    Width = 761
    Height = 171
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 3
    DesignSize = (
      761
      171)
    object Label7: TLabel
      Left = 4
      Top = 7
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Last Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 1
      Top = 28
      Width = 757
      Height = 1
      Anchors = [akLeft, akTop, akRight]
    end
    object Shape2: TShape
      Left = 374
      Top = 29
      Width = 1
      Height = 74
    end
    object Shape3: TShape
      Left = 1
      Top = 103
      Width = 759
      Height = 1
      Anchors = [akLeft, akTop, akRight]
    end
    object LastNameField: TLabel
      Left = 77
      Top = 7
      Width = 181
      Height = 16
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label5: TLabel
      Left = 260
      Top = 7
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'First Name'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object FirstNameField: TLabel
      Left = 335
      Top = 7
      Width = 158
      Height = 16
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label3: TLabel
      Left = 498
      Top = 7
      Width = 24
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MiddleNameField: TLabel
      Left = 526
      Top = 7
      Width = 60
      Height = 16
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label9: TLabel
      Left = 594
      Top = 7
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Suffix'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object NameSuffixField: TLabel
      Left = 651
      Top = 7
      Width = 60
      Height = 16
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label10: TLabel
      Left = 4
      Top = 33
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ResAddrField: TLabel
      Left = 77
      Top = 33
      Width = 287
      Height = 66
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label11: TLabel
      Left = 379
      Top = 33
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mailing Address'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MailAddrField: TLabel
      Left = 482
      Top = 33
      Width = 264
      Height = 66
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label1: TLabel
      Left = 4
      Top = 109
      Width = 67
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sex'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SexField: TLabel
      Left = 77
      Top = 109
      Width = 87
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label12: TLabel
      Left = 176
      Top = 109
      Width = 91
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Voter #'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object RegNumberField: TLabel
      Left = 269
      Top = 109
      Width = 94
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label13: TLabel
      Left = 4
      Top = 129
      Width = 67
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Birth Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DobField: TLabel
      Left = 77
      Top = 129
      Width = 87
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label19: TLabel
      Left = 176
      Top = 129
      Width = 91
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Registration Date:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 176
      Top = 149
      Width = 91
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Political Party:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 370
      Top = 109
      Width = 119
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Town Code:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 370
      Top = 129
      Width = 119
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Election District:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 370
      Top = 149
      Width = 119
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Congressional District:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 559
      Top = 149
      Width = 127
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Local District:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 559
      Top = 129
      Width = 127
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'State Assembly District:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 559
      Top = 109
      Width = 127
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'State Senate District:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DorField: TLabel
      Left = 269
      Top = 129
      Width = 94
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object PartyField: TLabel
      Left = 269
      Top = 149
      Width = 94
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object CongDistField: TLabel
      Left = 492
      Top = 149
      Width = 69
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object ElectDistField: TLabel
      Left = 492
      Top = 129
      Width = 69
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object TownCodeField: TLabel
      Left = 492
      Top = 109
      Width = 69
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object StSenDistField: TLabel
      Left = 688
      Top = 109
      Width = 58
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object StAssDistField: TLabel
      Left = 688
      Top = 129
      Width = 58
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object LocalDistField: TLabel
      Left = 688
      Top = 149
      Width = 58
      Height = 14
      AutoSize = False
      Caption = ' '
      Color = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 43
    Width = 761
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel2: TPanel
      Left = 543
      Top = 0
      Width = 218
      Height = 295
      Align = alRight
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 0
      object SearchPanel: TPanel
        Left = 0
        Top = 0
        Width = 218
        Height = 174
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          Left = 1
          Top = 1
          Width = 216
          Height = 18
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Voter Search'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 2
          Top = 22
          Width = 56
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Last Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object RegNumLabel: TLabel
          Left = 2
          Top = 101
          Width = 56
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Voter #'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 2
          Top = 124
          Width = 56
          Height = 13
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
        object Label14: TLabel
          Left = 2
          Top = 79
          Width = 56
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'First Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object NameButton: TAlpineGlowButton
          Left = 190
          Top = 18
          Width = 25
          Height = 21
          Cancel = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 122
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF004A667C00BE95
            9600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC3001E89E8004B7A
            A300C8969300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004BB4FE0051B5FF002089
            E9004B7AA200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7FE0051B3
            FF001D87E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7
            FE004EB2FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B8FE004BB1FF002787D9005F6A7600FF00FF00B0857F00C09F9400C09F
            9600BC988E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFF
            E500FDFADA00D8C3B300B58D8500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEA79500FDEEBE00FFFFD800FFFFDA00FFFF
            DB00FFFFE600FFFFFB00EADDDC00AE837F00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C1A09100FBDCA800FEF7D000FFFFDB00FFFF
            E300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFF
            E400FFFFF700FFFFF700FFFFE900EEE5CB00B9948C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFF
            DF00FFFFE300FFFFE400FFFFE000F3ECD200BB968E00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFC
            D800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E8600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFEE500F7DCB800F2C99400F5D4
            A500FAE8BD00FDF4C900FDFBD600B6908900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B58D8500E8DEDD00FFFEF200F9D8A300F4C4
            8C00F9D49F00FDEAB800D0B49F00B8908600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AD827F00C9AA9E00EFE0B700EFDF
            B200E7CEAC00B8908600B8908600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BA968A00BB98
            8C00B7918800FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 0
          OnClick = NameButtonClick
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
          ImageName = 'FIND'
        end
        object AlpineGlowButton1: TAlpineGlowButton
          Left = 190
          Top = 75
          Width = 25
          Height = 21
          Cancel = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 122
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF004A667C00BE95
            9600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC3001E89E8004B7A
            A300C8969300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004BB4FE0051B5FF002089
            E9004B7AA200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7FE0051B3
            FF001D87E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7
            FE004EB2FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B8FE004BB1FF002787D9005F6A7600FF00FF00B0857F00C09F9400C09F
            9600BC988E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFF
            E500FDFADA00D8C3B300B58D8500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEA79500FDEEBE00FFFFD800FFFFDA00FFFF
            DB00FFFFE600FFFFFB00EADDDC00AE837F00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C1A09100FBDCA800FEF7D000FFFFDB00FFFF
            E300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFF
            E400FFFFF700FFFFF700FFFFE900EEE5CB00B9948C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFF
            DF00FFFFE300FFFFE400FFFFE000F3ECD200BB968E00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFC
            D800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E8600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFEE500F7DCB800F2C99400F5D4
            A500FAE8BD00FDF4C900FDFBD600B6908900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B58D8500E8DEDD00FFFEF200F9D8A300F4C4
            8C00F9D49F00FDEAB800D0B49F00B8908600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AD827F00C9AA9E00EFE0B700EFDF
            B200E7CEAC00B8908600B8908600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BA968A00BB98
            8C00B7918800FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
          OnClick = LastNameSearchChange
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
          ImageName = 'FIND'
        end
        object RegNumberButton: TAlpineGlowButton
          Left = 190
          Top = 98
          Width = 25
          Height = 21
          Cancel = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 122
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF004A667C00BE95
            9600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC3001E89E8004B7A
            A300C8969300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004BB4FE0051B5FF002089
            E9004B7AA200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7FE0051B3
            FF001D87E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7
            FE004EB2FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B8FE004BB1FF002787D9005F6A7600FF00FF00B0857F00C09F9400C09F
            9600BC988E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFF
            E500FDFADA00D8C3B300B58D8500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEA79500FDEEBE00FFFFD800FFFFDA00FFFF
            DB00FFFFE600FFFFFB00EADDDC00AE837F00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C1A09100FBDCA800FEF7D000FFFFDB00FFFF
            E300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFF
            E400FFFFF700FFFFF700FFFFE900EEE5CB00B9948C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFF
            DF00FFFFE300FFFFE400FFFFE000F3ECD200BB968E00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFC
            D800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E8600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFEE500F7DCB800F2C99400F5D4
            A500FAE8BD00FDF4C900FDFBD600B6908900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B58D8500E8DEDD00FFFEF200F9D8A300F4C4
            8C00F9D49F00FDEAB800D0B49F00B8908600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AD827F00C9AA9E00EFE0B700EFDF
            B200E7CEAC00B8908600B8908600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BA968A00BB98
            8C00B7918800FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
          OnClick = RegNumberButtonClick
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
          ImageName = 'FIND'
        end
        object AddressButton: TAlpineGlowButton
          Left = 190
          Top = 121
          Width = 25
          Height = 21
          Cancel = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 122
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF004A667C00BE95
            9600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC3001E89E8004B7A
            A300C8969300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004BB4FE0051B5FF002089
            E9004B7AA200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7FE0051B3
            FF001D87E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7
            FE004EB2FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B8FE004BB1FF002787D9005F6A7600FF00FF00B0857F00C09F9400C09F
            9600BC988E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFF
            E500FDFADA00D8C3B300B58D8500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEA79500FDEEBE00FFFFD800FFFFDA00FFFF
            DB00FFFFE600FFFFFB00EADDDC00AE837F00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C1A09100FBDCA800FEF7D000FFFFDB00FFFF
            E300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFF
            E400FFFFF700FFFFF700FFFFE900EEE5CB00B9948C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFF
            DF00FFFFE300FFFFE400FFFFE000F3ECD200BB968E00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFC
            D800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E8600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFEE500F7DCB800F2C99400F5D4
            A500FAE8BD00FDF4C900FDFBD600B6908900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B58D8500E8DEDD00FFFEF200F9D8A300F4C4
            8C00F9D49F00FDEAB800D0B49F00B8908600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AD827F00C9AA9E00EFE0B700EFDF
            B200E7CEAC00B8908600B8908600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BA968A00BB98
            8C00B7918800FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 3
          OnClick = AddressButtonClick
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
          ImageName = 'FIND'
        end
        object ClearButton: TAlpineGlowButton
          Left = 1
          Top = 147
          Width = 216
          Height = 26
          Align = alBottom
          Caption = 'Clear Voter Search Parameters'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 122
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF004A667C00BE95
            9600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B9CC3001E89E8004B7A
            A300C8969300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004BB4FE0051B5FF002089
            E9004B7AA200C6959200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7FE0051B3
            FF001D87E6004E7AA000CA979200FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051B7
            FE004EB2FF001F89E6004E7BA200B9949700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0052B8FE004BB1FF002787D9005F6A7600FF00FF00B0857F00C09F9400C09F
            9600BC988E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0055BDFF00B5D6ED00BF9D9200BB9B8C00E7DAC200FFFFE300FFFF
            E500FDFADA00D8C3B300B58D8500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00CEA79500FDEEBE00FFFFD800FFFFDA00FFFF
            DB00FFFFE600FFFFFB00EADDDC00AE837F00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C1A09100FBDCA800FEF7D000FFFFDB00FFFF
            E300FFFFF800FFFFFD00FFFFFD00C6A99C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C1A09100FEE3AC00F1C49100FCF2CA00FFFFDD00FFFF
            E400FFFFF700FFFFF700FFFFE900EEE5CB00B9948C00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C2A19100FFE6AE00EEB58100F7DCAE00FEFDD800FFFF
            DF00FFFFE300FFFFE400FFFFE000F3ECD200BB968E00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BC978C00FBE7B700F4C79100F2C99400F8E5B900FEFC
            D800FFFFDD00FFFFDC00FFFFE000E2D2BA00B68E8600FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00D9C3A900FFFEE500F7DCB800F2C99400F5D4
            A500FAE8BD00FDF4C900FDFBD600B6908900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B58D8500E8DEDD00FFFEF200F9D8A300F4C4
            8C00F9D49F00FDEAB800D0B49F00B8908600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00AD827F00C9AA9E00EFE0B700EFDF
            B200E7CEAC00B8908600B8908600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BA968A00BB98
            8C00B7918800FF00FF00FF00FF00FF00FF00FF00FF00}
          Position = bpMiddle
          TabOrder = 4
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
          ImageName = 'FIND'
        end
        object LastNameSearch: TAlpineEdit
          Left = 62
          Top = 18
          Width = 127
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 33
          options = [efoCaretToEnd]
          ParentFont = False
          PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 5
          OnChange = LastNameSearchChange
          CurrentPos = -1
        end
        object FirstNameSearch: TAlpineEdit
          Left = 62
          Top = 75
          Width = 127
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 33
          options = [efoCaretToEnd]
          ParentFont = False
          PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 6
          CurrentPos = -1
        end
        object RegNumberSearch: TAlpineEdit
          Left = 62
          Top = 98
          Width = 127
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 33
          options = [efoCaretToEnd]
          ParentFont = False
          PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 7
          OnChange = RegNumberSearchChange
          CurrentPos = -1
        end
        object AddressSearch: TAlpineEdit
          Left = 62
          Top = 121
          Width = 127
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 33
          options = [efoCaretToEnd]
          ParentFont = False
          PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 8
          OnChange = AddressSearchChange
          CurrentPos = -1
        end
        object AddressCheck: TAlpineCheckBox
          Left = 47
          Top = 44
          Width = 147
          Height = 22
          Alignment = taLeftJustify
          ButtonType = btClassic
          ButtonVertAlign = tlBottom
          Caption = 'Last Name Within'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 9
          Version = '1.6.0.0'
          ValueChecked = 'M'
          ValueUnChecked = 'F'
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 174
        Width = 218
        Height = 121
        Align = alBottom
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 1
        object VotePanel: TPanel
          Left = 17
          Top = 0
          Width = 218
          Height = 120
          BevelInner = bvLowered
          BevelOuter = bvNone
          TabOrder = 0
          Visible = False
          object VoteButton: TPanel
            Left = 1
            Top = 1
            Width = 216
            Height = 29
            Align = alBottom
            BevelInner = bvRaised
            Caption = ' '
            TabOrder = 0
            object VoteBlink: TBlinkShape
              Left = 2
              Top = 2
              Width = 212
              Height = 25
              Align = alClient
              Brush.Color = clRed
              Pen.Color = clRed
              Blink = True
              BlinkColor = clRed
              NonBlinkColor = clBlack
              BlinkRate = 500
            end
            object VoterLabel: TLabel
              Left = 2
              Top = 4
              Width = 208
              Height = 18
              Alignment = taCenter
              AutoSize = False
              Caption = 'Select Voter'
              FocusControl = AddressPanel
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              OnMouseDown = VoterLabelMouseDown
            end
          end
          object sigpanel: TPanel
            Left = 1
            Top = 30
            Width = 216
            Height = 60
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'sigpanel'
            TabOrder = 1
          end
          object AdvPanel1: TAdvPanel
            Left = 1
            Top = 90
            Width = 216
            Height = 29
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
            TabOrder = 2
            UseDockManager = True
            Version = '2.2.1.0'
            Caption.Color = clHighlight
            Caption.ColorTo = clNone
            Caption.Font.Charset = DEFAULT_CHARSET
            Caption.Font.Color = clHighlightText
            Caption.Font.Height = -11
            Caption.Font.Name = 'Tahoma'
            Caption.Font.Style = []
            ColorTo = clBtnFace
            StatusBar.Font.Charset = DEFAULT_CHARSET
            StatusBar.Font.Color = clWindowText
            StatusBar.Font.Height = -11
            StatusBar.Font.Name = 'Tahoma'
            StatusBar.Font.Style = []
            FullHeight = 29
            object DeleteButton: TAlpineGlowButton
              Left = 1
              Top = 1
              Width = 107
              Height = 27
              Align = alRight
              Caption = 'Delete Vote'
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
              Position = bpLeft
              TabOrder = 0
              OnClick = DeleteButtonClick
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
            object VoteHistButton: TAlpineGlowButton
              Left = 108
              Top = 1
              Width = 107
              Height = 27
              Align = alRight
              Caption = 'Voter History'
              ImageIndex = 140
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              Picture.Data = {
                424D360400000000000036000000280000001000000010000000010020000000
                00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF0049646B002B5C66002962670027666A002E474800247171002471
                710042787800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0032424D002789AF001FA3C40018B9D20014C2D300275C600007ECF20000FF
                FF0004F2F200477A7A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00495663002F719F002788B00021A8CD00217D8F00202B2D0012D6E60008EA
                F10000FFFF00217B7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00345475003079AD00276781001F1F1D00181211001F7682000EDF
                F00011C5CD007C818100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0031404C00190F0B0026354000191E21000E0000001E73
                7D0053939900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF004880A400489CD1004281A9002F404B00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF005B91B20063BAEE0056A5D6004D92BA0045759300FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0065A1C20073C2EE0069B6E1005B9BBF004C86A8005A60
                6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF005E5C5A0076B2D10083D0F9007BC6EE0069A7C90063A5CA003D54
                5E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00222426002D2B290090D0EC009DECFF0095E4FF0080C4E8007BBEDE004056
                6A002C272D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0034333500506E84005F7D890057758300577583004C6F81001B21
                64001B216400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF0045465E0025245400413C3400514C4A0043443C000C084E001312
                6600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0035385B006463600078787800606860000D0F57003C3B
                6700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00575964008F8F8D009D9D9E00696B6A0039394B00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF0085868700C0BFBE006D6C6C00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF0075747300FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              Position = bpRight
              TabOrder = 1
              OnClick = VoteHistButtonClick
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
              ImageName = 'PERSONNEL'
            end
          end
        end
        object TownPanel: TPanel
          Left = 98
          Top = -23
          Width = 216
          Height = 119
          BevelInner = bvLowered
          BevelOuter = bvNone
          Caption = 'TownPanel'
          TabOrder = 1
          Visible = False
          object BlinkLabel1: TBlinkLabel
            Left = 1
            Top = 1
            Width = 214
            Height = 81
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            Caption = 'Please Verify Voter is in District'
            Color = clBlack
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -24
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            WordWrap = True
            Blink = True
            BlinkColor = clRed
          end
          object CloseTownButton: TAlpineGlowButton
            Left = 1
            Top = 82
            Width = 214
            Height = 36
            Align = alBottom
            Caption = 'Close'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
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
              FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              00000000000000000000005C6600005C66000000000099999900999999009999
              990015151500000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF0000000000005C6600005C6600005C660000000000BCBCBC00BCBCBC000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000000000526600005266000052660000000000B2B2B200B2B2B2000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000000000526600005266000052660000000000A9A9A900A9A9A9000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000000000496600004966000084A900000D100099999900999999000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000049660000496600004966000000000099999900999999000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000004366000043660000436600000000008C8C8C008C8C8C000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000043660000436600004366000000000083838300838383000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000003A6600003A6600003A6600000000007A7A7A007A7A7A000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000033660000336600000000000000000070707000707070000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000000000000000000666666006666660066666600666666000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000010A140000000000000000000000000000000000000000000000
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            Position = bpMiddle
            TabOrder = 0
            OnClick = CloseTownButtonClick
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
            ImageName = 'CLOSE'
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 543
      Height = 295
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = ' '
      Color = clWhite
      TabOrder = 1
      object VoteAddrBrowse: TAlpineTMSStringGrid
        Left = 1
        Top = 1
        Width = 541
        Height = 293
        Cursor = crDefault
        Align = alClient
        BorderStyle = bsNone
        ColCount = 1
        Ctl3D = True
        DefaultRowHeight = 18
        RowCount = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goHorzLine, goRowSelect]
        ParentCtl3D = False
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = VoteAddrBrowseClick
        HoverRowCells = [hcNormal, hcSelected]
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
        FixedRowHeight = 18
        FixedRowAlways = True
        FixedColAlways = True
        FixedFont.Charset = ANSI_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'MS Sans Serif'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        MouseActions.NoScrollOnPartialRow = True
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
        ExplicitTop = -7
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
    Left = 461
    Top = 7
  end
  object OvcController2: TOvcController
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
    Left = 705
    Top = 361
  end
end
