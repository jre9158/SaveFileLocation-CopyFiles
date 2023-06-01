object SysStatForm: TSysStatForm
  Left = 314
  Top = 137
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'RedNMX Fire Department Management System Status'
  ClientHeight = 466
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object BottomPanel: TPanel
    Left = 0
    Top = 434
    Width = 592
    Height = 32
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object cancelbutton: TAlpineGlowButton
      Tag = 5
      Left = 473
      Top = 1
      Width = 118
      Height = 30
      Align = alClient
      Cancel = True
      Caption = 'Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 119
      ModalResult = 2
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
      Position = bpRight
      TabOrder = 0
      TabStop = True
      OnClick = cancelbuttonClick
      Appearance.BorderColor = clBlack
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = clSilver
      Appearance.ColorDisabledTo = clSilver
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16107693
      Appearance.ColorHotTo = 16107693
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16107693
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16102556
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = clSilver
      Appearance.ColorMirrorDisabledTo = clSilver
      GlowSpeed = 1
      ImageName = 'CLOSE'
    end
    object ToolBarButton: TAlpineGlowButton
      Tag = 2
      Left = 119
      Top = 1
      Width = 118
      Height = 30
      Hint = 'Reset the Tool Bar Location'
      Align = alLeft
      Caption = 'Tool Bar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 76
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000EB0A0000EB0A00000001000049000000EBEBEB00DADADA00CCCC
        CC00C3C3C300C0BFBF0001BBF800BAB9B90000ACFF00A1AFB200ADABAB0000A1
        FD00A8A6A60007A4E5000099FF0015A2C5008C9BA20099999900008BFA003197
        B400919191006D8D9400007BF500067FE2008B8989002683B800898585008481
        8100006EF1008079790079787800005DEA007574740068707F007C7272001669
        B000716D6D000051E70029629A0066666600276388002B5F9300345D92000043
        E20027579100525C6E005F5A5A00595858004C4C79005653530044448B002446
        8C00123FAC000032DD00273B9D002F4075002F3D7B00FF00FF000025D8004845
        4500413D3D000016D3001E287A003B3737001819A500101AA400333333000009
        CE00101096000000CC000707AD0010108D000000C1000000AE00000000000000
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
        0000000000000000000000000000000000000000000038383838383838383838
        383838383838383838383821211A191C383838383838383838381A2F4646310B
        0B1A38383838383838172F484847473F10091A38383838381F1343474747423C
        350B1023383838101D1A4544423C39343420171D3838382D1F1F403D39343332
        1E291D232D38383A261F37362A241E2B28221F263B3838412D23262C1E1B1516
        2627232E4138383B231D1D1F25110D0A26261F233E3838231309090B1318070C
        130B0B131F3838381D030303030F05120303031F383838381A04010101020E08
        0101061A38383838381F090000011400000B1F38383838383838382D170B0B19
        30383838383838383838383838383838383838383838}
      Position = bpMiddle
      TabOrder = 1
      TabStop = True
      OnClick = ToolBarButtonClick
      Appearance.BorderColor = clBlack
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = clSilver
      Appearance.ColorDisabledTo = clSilver
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16107693
      Appearance.ColorHotTo = 16107693
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16107693
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16102556
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = clSilver
      Appearance.ColorMirrorDisabledTo = clSilver
      GlowSpeed = 1
      ImageName = 'REDNMX'
    end
    object CallTakeButton: TAlpineGlowButton
      Tag = 1
      Left = 1
      Top = 1
      Width = 118
      Height = 30
      Hint = 'Reset the Call Taker Screen'
      Align = alLeft
      Caption = 'Reset Saved Form Locations'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 131
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
        3300333333003333330033333300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00333333003333
        3300736B6400736B64003333330033333300FF00FF00FF00FF00333333003333
        3300333333003333330033333300333333003333330033333300484745003333
        3300736B6400736B640033333300FF00FF00FF00FF0033333300E9E1DA00DACE
        C200B6A899004343430033333300866D5600926E4A003333330088827B007973
        6D00726B6400726B64003333330033333300FF00FF0033333300DFD4C900D0C1
        B100736B64003A3A390033333300645342008861390033333300968F87008882
        7B0079736D00736B6400615D5900514F4C003333330033333300D5C7B900A495
        8700514F4C003333330033333300554D45007E53280033333300A69D9400968F
        87008A847D007F797200716C6700615D590033333300FF00FF00333333005D58
        5300737373003A3A3900434343005755540054412E0033333300B8AEA300AAA1
        97009C948C008A847D007F797200716C670033333300FF00FF00FF00FF003333
        3300333333003333330033333300333333004343430033333300C6BBAF00B8AE
        A300AAA197009C948C008E878000817B740033333300FF00FF00333333003333
        33002F576E00333333001818180033333300FF00FF0033333300D7CABD00C6BB
        AF00BAB0A500ACA399009C948C008E8780003333330033333300333333001313
        130045758F00619EBF00496D80004A7892003333330033333300333333003333
        3300333333003333330033333300333333003333330033333300B4B4B4003333
        330080CAF1007CC6EE006AA7CA00619EBF0033333300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0033333300848484003333
        33009ED3ED0033333300333333003333330033333300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00999999003333
        33008484840029537C00264C7100224466001E3D5B0033333300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00737373003A3A
        39005A61680029537C00264C7100224466003333330033333300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003A3A39007D7D
        7D004343430044536100264C71003333330033333300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003A3A
        3900666666003333330033333300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Position = bpLeft
      TabOrder = 2
      TabStop = True
      OnClick = CallTakeButtonClick
      Appearance.BorderColor = clBlack
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = clSilver
      Appearance.ColorDisabledTo = clSilver
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16107693
      Appearance.ColorHotTo = 16107693
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16107693
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16102556
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = clSilver
      Appearance.ColorMirrorDisabledTo = clSilver
      GlowSpeed = 1
      ImageName = 'DISPATCHING'
    end
    object DispStatButton: TAlpineGlowButton
      Tag = 3
      Left = 237
      Top = 1
      Width = 118
      Height = 30
      Hint = 'Reset the Tool Bar Location'
      Align = alLeft
      Caption = 'Reset Units on "CLOSED" Calls'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 76
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000EB0A0000EB0A00000001000049000000EBEBEB00DADADA00CCCC
        CC00C3C3C300C0BFBF0001BBF800BAB9B90000ACFF00A1AFB200ADABAB0000A1
        FD00A8A6A60007A4E5000099FF0015A2C5008C9BA20099999900008BFA003197
        B400919191006D8D9400007BF500067FE2008B8989002683B800898585008481
        8100006EF1008079790079787800005DEA007574740068707F007C7272001669
        B000716D6D000051E70029629A0066666600276388002B5F9300345D92000043
        E20027579100525C6E005F5A5A00595858004C4C79005653530044448B002446
        8C00123FAC000032DD00273B9D002F4075002F3D7B00FF00FF000025D8004845
        4500413D3D000016D3001E287A003B3737001819A500101AA400333333000009
        CE00101096000000CC000707AD0010108D000000C1000000AE00000000000000
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
        0000000000000000000000000000000000000000000038383838383838383838
        383838383838383838383821211A191C383838383838383838381A2F4646310B
        0B1A38383838383838172F484847473F10091A38383838381F1343474747423C
        350B1023383838101D1A4544423C39343420171D3838382D1F1F403D39343332
        1E291D232D38383A261F37362A241E2B28221F263B3838412D23262C1E1B1516
        2627232E4138383B231D1D1F25110D0A26261F233E3838231309090B1318070C
        130B0B131F3838381D030303030F05120303031F383838381A04010101020E08
        0101061A38383838381F090000011400000B1F38383838383838382D170B0B19
        30383838383838383838383838383838383838383838}
      Position = bpMiddle
      TabOrder = 3
      TabStop = True
      OnClick = DispStatButtonClick
      Appearance.BorderColor = clBlack
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = clSilver
      Appearance.ColorDisabledTo = clSilver
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16107693
      Appearance.ColorHotTo = 16107693
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16107693
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16102556
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = clSilver
      Appearance.ColorMirrorDisabledTo = clSilver
      GlowSpeed = 1
      ImageName = 'REDNMX'
    end
    object RedNMXButton: TAlpineGlowButton
      Tag = 4
      Left = 355
      Top = 1
      Width = 118
      Height = 30
      Align = alLeft
      Caption = 'System Review'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ImageIndex = 76
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000EB0A0000EB0A00000001000049000000EBEBEB00DADADA00CCCC
        CC00C3C3C300C0BFBF0001BBF800BAB9B90000ACFF00A1AFB200ADABAB0000A1
        FD00A8A6A60007A4E5000099FF0015A2C5008C9BA20099999900008BFA003197
        B400919191006D8D9400007BF500067FE2008B8989002683B800898585008481
        8100006EF1008079790079787800005DEA007574740068707F007C7272001669
        B000716D6D000051E70029629A0066666600276388002B5F9300345D92000043
        E20027579100525C6E005F5A5A00595858004C4C79005653530044448B002446
        8C00123FAC000032DD00273B9D002F4075002F3D7B00FF00FF000025D8004845
        4500413D3D000016D3001E287A003B3737001819A500101AA400333333000009
        CE00101096000000CC000707AD0010108D000000C1000000AE00000000000000
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
        0000000000000000000000000000000000000000000038383838383838383838
        383838383838383838383821211A191C383838383838383838381A2F4646310B
        0B1A38383838383838172F484847473F10091A38383838381F1343474747423C
        350B1023383838101D1A4544423C39343420171D3838382D1F1F403D39343332
        1E291D232D38383A261F37362A241E2B28221F263B3838412D23262C1E1B1516
        2627232E4138383B231D1D1F25110D0A26261F233E3838231309090B1318070C
        130B0B131F3838381D030303030F05120303031F383838381A04010101020E08
        0101061A38383838381F090000011400000B1F38383838383838382D170B0B19
        30383838383838383838383838383838383838383838}
      Position = bpMiddle
      TabOrder = 4
      TabStop = True
      OnClick = RedNMXButtonClick
      Appearance.BorderColor = clBlack
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = clSilver
      Appearance.ColorDisabledTo = clSilver
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16107693
      Appearance.ColorHotTo = 16107693
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16107693
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16102556
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = clSilver
      Appearance.ColorMirrorDisabledTo = clSilver
      GlowSpeed = 1
      ImageName = 'REDNMX'
    end
  end
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 592
    Height = 434
    ActivePage = SystemTab
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object SystemTab: TTabSheet
      Caption = 'System Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object Panel2: TPanel
        Left = 0
        Top = 247
        Width = 584
        Height = 158
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvNone
        BorderWidth = 3
        Caption = ' '
        TabOrder = 0
        object Label3: TLabel
          Left = 10
          Top = 12
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current User'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 10
          Top = 103
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Time Logged On'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label5: TLabel
          Left = 10
          Top = 127
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Time Out Length'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object CurrentUser: TLabel
          Left = 133
          Top = 12
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object TimeLoggedOn: TLabel
          Left = 133
          Top = 103
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object TimeOutLength: TLabel
          Left = 133
          Top = 127
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Label21: TLabel
          Left = 10
          Top = 34
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Network Login Name'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object NTName: TLabel
          Left = 133
          Top = 34
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label1: TLabel
          Left = 10
          Top = 81
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current Agency'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object SecFDIDLabel: TLabel
          Left = 133
          Top = 81
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 12
          Top = 59
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Security Profile'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object ProfileDescrField: TLabel
          Left = 133
          Top = 58
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 62
        Width = 584
        Height = 80
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BorderWidth = 3
        Caption = ' '
        TabOrder = 1
        object Label19: TLabel
          Left = 10
          Top = 12
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Product Registered to'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object FireDeptField: TLabel
          Left = 133
          Top = 12
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label20: TLabel
          Left = 10
          Top = 33
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'System Last Updated'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object UpdateField: TLabel
          Left = 133
          Top = 33
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label25: TLabel
          Left = 10
          Top = 53
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fire Department ID'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object FdidLabel: TLabel
          Left = 133
          Top = 53
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 584
        Height = 62
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BorderWidth = 3
        Caption = ' '
        TabOrder = 2
        object Label17: TLabel
          Left = 10
          Top = 11
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'System Version'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object VersionField: TLabel
          Left = 133
          Top = 11
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'RedAlert New Millenium Series 10 (RedNMX)'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 10
          Top = 32
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Database Format'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DatabaseField: TLabel
          Left = 133
          Top = 32
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 142
        Width = 584
        Height = 105
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        BorderWidth = 3
        Caption = ' '
        TabOrder = 3
        object Label2: TLabel
          Left = 10
          Top = 11
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Work Station'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object CompCode: TLabel
          Left = 133
          Top = 11
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label34: TLabel
          Left = 10
          Top = 56
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'IP Address'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object IPField: TLabel
          Left = 133
          Top = 56
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label35: TLabel
          Left = 10
          Top = 79
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'All IP Addresses'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object AllIPField: TLabel
          Left = 133
          Top = 79
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object ScreenLabel: TLabel
          Left = 10
          Top = 33
          Width = 115
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Monitor Settings'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object ScreenField: TLabel
          Left = 133
          Top = 33
          Width = 420
          Height = 18
          AutoSize = False
          Caption = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Printers'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object PrinterBox: TListBox
        Left = 0
        Top = 0
        Width = 584
        Height = 372
        Align = alClient
        Color = clBtnFace
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = PrinterBoxClick
      end
      object Panel5: TPanel
        Left = 0
        Top = 372
        Width = 584
        Height = 33
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvNone
        TabOrder = 1
        object PrintListButton: TAlpineGlowButton
          Left = 308
          Top = 1
          Width = 275
          Height = 31
          Align = alRight
          Caption = 'Print &List of Printers'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 124
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF008684840086848400FF00FF00FF00FF008684840086848400FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0086848400BCBABA00B5B3B300868484008684840086848400EBEAEA008684
            84008684840086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008684
            8400E3E2E200B5B3B300B5B3B300B5B3B300515050004F4F4F0086878700CDCD
            CD00E8E9E900C7C6C600868484008684840086848400FF00FF0086848400DEDD
            DD00D6D6D600A4A3A300A4A3A300A4A3A3005655550016151600121212001818
            18001212120093939300CACACA0086848400FF00FF0086848400D6D6D600D6D6
            D600A4A3A300E0DEDE00D9D7D700CDCBCB00C2C0C000B6B4B4009F9D9D007976
            7700121212001414140013131300868484008F8C8C0086848400D6D6D600A4A3
            A300F3F2F200FFFEFE00FCFBFB00EAE7E800E6E6E600E6E5E500DAD9D900CCCB
            CB00BFBDBD00A2A0A00073717100939191008E8C8C0086848400A4A3A300FFFF
            FF00FEFDFD00FBFBFB00DFDEDF00ADA7A900B4ADAE00C3BDBE00D1CECF00E0E0
            E000E1E1E100D4D3D300C7C6C600A7A5A50086838300FF00FF00868484008684
            8400F1F0F000C2B9BA0093898B00A19B9F00ABA8AA00ABA6A700B1ACAD00AFA9
            AA00B2ADAE00CAC9C900DCDCDC00D0D0D00086848400FF00FF00FF00FF00FF00
            FF0086848400CAA09700BA9E8700A2897E0095817B00897C7F00928C9200A5A2
            A400BBB6B700D7D6D600CFCFCF0086848400FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00CC9A9900FFEAC400FFDDB300EEC39900D5AE8C00C9A78600CC9A
            9900989596008684840086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00CC9A9900FFE7C800FFDDBA00FFDBB100FFD9A600FFD39F00CC9A
            9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CE9D9B00FFEDDA00FFE7CE00FFE2C300FFDDB800FFDBAE00CC9A9900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CC9A9900FEF0E100FFECD800FFE6CC00FFE1C200FEDDB700CC9A9900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A
            9900FFFFF500FFFFF500FFF0E100FFEBD600FFE8CC00F6D4BA00CC9A9900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A
            9900CC9A9900CC9A9900FCF3E900FCEADA00FCE5D000CC9A9900FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00CC9A9900CC9A9900CC9A9900FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Position = bpRight
          TabOrder = 0
          TabStop = True
          OnClick = PrintSomethingClick
          Appearance.BorderColor = clBlack
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = clSilver
          Appearance.ColorDisabledTo = clSilver
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16107693
          Appearance.ColorHotTo = 16107693
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16107693
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16102556
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = clSilver
          Appearance.ColorMirrorDisabledTo = clSilver
          GlowSpeed = 1
          ImageName = 'PRINTER'
        end
        object TestPrintButton: TAlpineGlowButton
          Left = 1
          Top = 1
          Width = 307
          Height = 31
          Align = alClient
          Caption = 'No printer selected to test'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 124
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF008684840086848400FF00FF00FF00FF008684840086848400FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0086848400BCBABA00B5B3B300868484008684840086848400EBEAEA008684
            84008684840086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008684
            8400E3E2E200B5B3B300B5B3B300B5B3B300515050004F4F4F0086878700CDCD
            CD00E8E9E900C7C6C600868484008684840086848400FF00FF0086848400DEDD
            DD00D6D6D600A4A3A300A4A3A300A4A3A3005655550016151600121212001818
            18001212120093939300CACACA0086848400FF00FF0086848400D6D6D600D6D6
            D600A4A3A300E0DEDE00D9D7D700CDCBCB00C2C0C000B6B4B4009F9D9D007976
            7700121212001414140013131300868484008F8C8C0086848400D6D6D600A4A3
            A300F3F2F200FFFEFE00FCFBFB00EAE7E800E6E6E600E6E5E500DAD9D900CCCB
            CB00BFBDBD00A2A0A00073717100939191008E8C8C0086848400A4A3A300FFFF
            FF00FEFDFD00FBFBFB00DFDEDF00ADA7A900B4ADAE00C3BDBE00D1CECF00E0E0
            E000E1E1E100D4D3D300C7C6C600A7A5A50086838300FF00FF00868484008684
            8400F1F0F000C2B9BA0093898B00A19B9F00ABA8AA00ABA6A700B1ACAD00AFA9
            AA00B2ADAE00CAC9C900DCDCDC00D0D0D00086848400FF00FF00FF00FF00FF00
            FF0086848400CAA09700BA9E8700A2897E0095817B00897C7F00928C9200A5A2
            A400BBB6B700D7D6D600CFCFCF0086848400FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00CC9A9900FFEAC400FFDDB300EEC39900D5AE8C00C9A78600CC9A
            9900989596008684840086848400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00CC9A9900FFE7C800FFDDBA00FFDBB100FFD9A600FFD39F00CC9A
            9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CE9D9B00FFEDDA00FFE7CE00FFE2C300FFDDB800FFDBAE00CC9A9900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00CC9A9900FEF0E100FFECD800FFE6CC00FFE1C200FEDDB700CC9A9900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A
            9900FFFFF500FFFFF500FFF0E100FFEBD600FFE8CC00F6D4BA00CC9A9900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00CC9A
            9900CC9A9900CC9A9900FCF3E900FCEADA00FCE5D000CC9A9900FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00CC9A9900CC9A9900CC9A9900FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Position = bpLeft
          TabOrder = 1
          TabStop = True
          OnClick = PrintSomethingClick
          Appearance.BorderColor = clBlack
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = clSilver
          Appearance.ColorDisabledTo = clSilver
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16107693
          Appearance.ColorHotTo = 16107693
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16107693
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16102556
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = clSilver
          Appearance.ColorMirrorDisabledTo = clSilver
          Enabled = False
          GlowSpeed = 1
          ImageName = 'PRINTER'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'External'
      ImageIndex = 2
      OnShow = TabSheet3Show
      object SysServiceBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 584
        height = 405
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
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clWhite
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'External Services'
        Caption.TopIndent = 2
        Caption.Visible = True
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FixedRowHeight = 22
        MobileConfig = False
        ButtonPanelVisible = False
        ModalLess = False
        DeleteEnabled = False
        NewEnabled = False
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
        EditCaption = 'View'
        SearchFooter = False
        FullHeight = 124
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
    Left = 411
    Top = 65534
  end
end
