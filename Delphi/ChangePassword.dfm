object ChangePasswordForm: TChangePasswordForm
  Left = 419
  Top = 363
  HelpContext = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Change Password'
  ClientHeight = 115
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 304
    Height = 34
    Align = alBottom
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 1
    object CloseButton: TAlpineGlowButton
      Left = 150
      Top = 1
      Width = 153
      Height = 32
      Align = alRight
      BorderStyle = bsNone
      Cancel = True
      Caption = 'Cancel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ImageIndex = 171
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        00000010000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005454
        5400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ACACAC00BEBEBE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ACACAC00000000000000
        00002A2A8F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001F1F1F0000001D006E6E7B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00666666000000000000001B000000
        AD000000AD005656AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008989
        890000000000000099000000B50029297500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF003333330000000000000055000000AD000000
        AD000000AD000000AD00A6A6C200FF00FF00FF00FF00FF00FF00FF00FF000000
        000000003B000000B5000000B5000000B50005057D00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000E0E0E0000000000000080000000AD000000AD000000
        AD000000AD000000AD000000AD00FF00FF00FF00FF00FF00FF00545454000000
        00000000B5000000B5000000B5000000B5000000B5000000AD00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BEBEBE000000000000000000000099000000A5000000A5000000AD000000
        AD000000AD000000AD000000AD000000A500FF00FF00ACACAC00000000000000
        66000000B5000000B5000000B5000000B5000000B5000000B5000000AD00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000E0E0E0000000B000000A5000000A5000000A5000000A5000000A5000000
        AD000000AD000000AD000000AD000000AD001111940000000B0000001B000000
        AD000000AD000000B5000000B5000000B5000000B5000000B5000000B5000000
        AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ACACAC00000099000000A5000000A5000000A5000000A5000000A5000000
        A5000000AD000000AD000000AD000000AD000000AD00000071000000AD000000
        AD000000AD000000AD000000B5000000B5000000B5000000B5000000B5000000
        B5000000AD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00474761000000A5000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000AD000000AD000000AD000000AD000000AD000000
        AD000000AD000000AD000000AD000000B5000000B5000000B5000000B5000000
        B5000000B5001F1FBB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000066000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000AD000000AD000000AD000000AD000000
        AD000000AD000000AD000000AD000000AD000000B5000000B5000000B5000000
        B5000000B5004646BE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000099000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000AD000000AD000000AD000000
        AD000000AD000000AD000000AD000000AD000000AD000000B5000000B5000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A6A6AB000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000A5000000AD000000AD000000
        AD000000AD000000AD000000AD000000AD000000AD000000AD000000AD000000
        AD008989C400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0065657E000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000AD000000
        AD000000AD000000AD000000AD000000AD000000AD000000AD000000AD001F1F
        B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0029296B000000A5000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
        AD000000AD000000AD000000AD000000AD000000AD000000AD000000AD00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BEBEBE00000066000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
        A5000000AD000000AD000000AD000000AD000000AD000000AD00ACACC700FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BEBEBE000000000000000B000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
        A5000000A5000000AD000000AD000000AD000000AD000000AD0050508900FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00BEBEBE000000000000000B00000099000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000AD000000AD000000AD000000AD000000AD002929
        7500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BEBEBE000000000000000B0000009900000099000000
        99000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000AD000000AD000000AD000000AD000000
        AD0011118300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00999999000000000000000B000000990000009900000099000000
        9900000099000000A5000000A5000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000AD000000AD000000AD000000
        AD000000AD003131B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A2F00000099000000990000009900000099000000
        990000009900000099000000A5000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000A5000000AD000000AD000000
        AD000000AD00ACACC700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000008F000000990000009900000099000000
        99000000990000009900000099000000A5000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
        A5005454B900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B8B8BD000000990000009900000099000000
        9900000099000000990000009900000099000000A5000000A5000000A5000000
        A5000000A5000000A5000000A5000000A5000000A5000000A5000000A5000E0E
        AB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B0B0BB0000009900000099000000
        99000000990000009900000099000000990000009900000099000E0EA3000000
        99000000A5000000A5000000A5000000A5000000A5000000A5000000A500BEBE
        C900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B8B8C300000099000000
        990000009900000099000000990000009900000099000E0EA300FF00FF00FF00
        FF00333399000000A5000000A5000000A5000000A5000000A5008989BF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        8F00000099000000990000009900000099004646AD00FF00FF00FF00FF00FF00
        FF00FF00FF009A9AC2000000A5000000A5000000A5007777BB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000008F0000009900000099004646AD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF003131AB004646AD00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF003131A5007777B700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Position = bpRight
      TabOrder = 1
      TabStop = True
      OnClick = CloseButtonClick
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
      ImageName = 'DELETE32'
    end
    object OKButton: TAlpineGlowButton
      Left = 1
      Top = 1
      Width = 149
      Height = 32
      Align = alClient
      BorderStyle = bsNone
      Caption = 'Change'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ImageIndex = 159
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360800000000000036040000280000002000000020000000010008000000
        000000040000C30E0000C30E0000000100005800000000ED000000E7000000E1
        000007DA070007D5070000D400000ACC0A0000CC000009C709000ABF0A0000C2
        00000FBB0F0000BC000006B806008484840000B6000012AE12007C827C00787F
        780001AF010006AB060010A610006C7F6C0006A60600757A75007575750000A3
        0000109D10005F7A5F001F921F000E970E000099000009950900188E1800218A
        2100627162005971590066666600068B06002480240059695900008B0000486D
        4800287A2800187F180014801400506950001E7D1E003C6E3C00416B41005663
        5600008500002E6F2E00087E08001F721F00426442000D7A0D00476047003366
        33000078000052575200495A4900146F14003B5F3B00206A20000A710A00425B
        42002A622A0021652100017101003B593B0012691200156715004B514B000769
        070013631300435043003354330029572900424C420039503900FF00FF001B5B
        1B00394C3900314A31003B433B002B482B00353B350000000000000000000000
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
        0000000000000000000000000000000000000000000051515151515151515151
        5151515151515151515151515151515151515151515151515151515151515151
        5151515151515151515151515151515151515151515151515151515151515151
        5151514D51515151515151515151515151515151515151515151515151515151
        51514F3E3D515151515151515151515151515151515151515151515151515151
        5125441A43515151515151515151515151515151515151515151515151515151
        514D1F1A20575151515151515151515151515151515151515151515151515151
        46261F1A1A2D285151515151515151515151515151515151515151515151514F
        381F1F1A1A134351515151515151515151515151515151515151515151513D48
        291F1F1A1A13173F5151515151515151515151515151515151515151513D4729
        291F1F1F1A130F1E4F51515151515151515151515151515151515151554B3333
        331F405520130F0F2C235151515151515151515151515151515151464A333333
        3326461936130F0F0A4351515151515151515151515151515151544A3B3B3333
        333E235153130F0F0A0D3451515151515151515151515151515152453B3B3333
        3346515149200F0F0A0A0A5551515151515151515151515151513C4E3B3B3333
        38325151513A0F0F0A0A07142A51515151515151515151515151512553413333
        4E515151514C170C0C07070515425151515151515151515151515151514C4735
        3D515151510E2B0C0C07070505213D5151515151515151515151515151514956
        16515151515139140A0A070505021D2351515151515151515151515151515151
        515151515151112F0A0A07050502022224515151515151515151515151515151
        51515151515151420D0707050502020227235151515151515151515151515151
        51515151515151182F07070505020200003A5151515151515151515151515151
        5151515151515151550D07050502020000305151515151515151515151515151
        51515151515151510E3407050502020000375151515151515151515151515151
        5151515151515151513D1B0505020200032E5151515151515151515151515151
        5151515151515151515131080502020006245151515151515151515151515151
        51515151515151515151122B050202000B1C5151515151515151515151515151
        5151515151515151515151321B0202000B1C5151515151515151515151515151
        5151515151515151515151514F0901010B1C5151515151515151515151515151
        51515151515151515151515151300800091C5151515151515151515151515151
        5151515151515151515151515151530406245151515151515151515151515151
        51515151515151515151515151515131102A5151515151515151515151515151
        515151515151515151515151515151513D5051515151}
      Position = bpLeft
      TabOrder = 0
      TabStop = True
      OnClick = OKButtonClick
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
      ImageName = 'GCHECK32'
    end
  end
  object BaseBottomPanel: TAdvPanel
    Left = 0
    Top = 0
    Width = 304
    Height = 81
    Align = alClient
    BevelOuter = bvLowered
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
    FullHeight = 0
    object PassLabel: TLabel
      Left = 3
      Top = 6
      Width = 109
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Old Password'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 3
      Top = 30
      Width = 109
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'New Password'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 3
      Top = 55
      Width = 109
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Confirm'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object OldField: TAlpineEdit
      Left = 115
      Top = 4
      Width = 187
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
      MaxLength = 40
      options = [efoCaretToEnd, efoPasswordMode]
      ParentFont = False
      PictureMask = '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      TabOrder = 0
      CurrentPos = -1
    end
    object NewField: TAlpineEdit
      Left = 115
      Top = 28
      Width = 187
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
      MaxLength = 40
      options = [efoCaretToEnd, efoPasswordMode]
      ParentFont = False
      PictureMask = '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      TabOrder = 1
      OnChange = ConfirmFieldChange
      CurrentPos = -1
    end
    object ConfirmField: TAlpineEdit
      Left = 115
      Top = 53
      Width = 187
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
      MaxLength = 40
      options = [efoCaretToEnd, efoPasswordMode]
      ParentFont = False
      PictureMask = '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
      TabOrder = 2
      OnChange = ConfirmFieldChange
      CurrentPos = -1
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
    Left = 427
    Top = 65535
  end
end
