inherited InvForm: TInvForm
  Left = 93
  Top = 77
  Caption = 'Apparatus Entry'
  ClientHeight = 670
  ClientWidth = 1012
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1028
  ExplicitHeight = 709
  PixelsPerInch = 96
  TextHeight = 13
  inherited BaseBottomPanel: TAdvPanel
    Top = 637
    Width = 1012
    TabOrder = 3
    ExplicitTop = 637
    ExplicitWidth = 1012
    FullHeight = 37
    inherited NewButton: TAlpineGlowButton
      Left = 329
      Top = 2
      Height = 29
      Align = alNone
      Position = bpStandalone
      Visible = False
      ExplicitLeft = 329
      ExplicitTop = 2
      ExplicitHeight = 29
    end
    inherited PrintButton: TAlpineGlowButton
      Left = 759
      Width = 84
      Visible = True
      ExplicitLeft = 759
      ExplicitWidth = 84
    end
    inherited DeleteButton: TAlpineGlowButton
      Left = 396
      Top = 2
      Height = 29
      Align = alNone
      Position = bpStandalone
      ExplicitLeft = 396
      ExplicitTop = 2
      ExplicitHeight = 29
    end
    inherited FindButton: TAlpineGlowButton
      Left = 463
      Top = 2
      Height = 29
      Align = alNone
      Position = bpStandalone
      ExplicitLeft = 463
      ExplicitTop = 2
      ExplicitHeight = 29
    end
    inherited AuditButton: TAlpineGlowButton
      Left = 169
      Width = 84
      Position = bpRight
      Visible = True
      ExplicitLeft = 169
      ExplicitWidth = 84
    end
    inherited CloseButton: TAlpineGlowButton
      Left = 927
      Width = 84
      ExplicitLeft = 927
      ExplicitWidth = 84
    end
    inherited SaveButton: TAlpineGlowButton
      Left = 843
      Width = 84
      ExplicitLeft = 843
      ExplicitWidth = 84
    end
    inherited LockButton: TAlpineGlowButton
      Left = 612
      Top = 2
      Height = 29
      Align = alNone
      Position = bpStandalone
      ExplicitLeft = 612
      ExplicitTop = 2
      ExplicitHeight = 29
    end
    object ReplicateInventory: TAlpineGlowButton
      Left = 530
      Top = 2
      Width = 80
      Height = 29
      Caption = 'Replicate Inventory'
      ImageIndex = 50
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360300000000000036000000280000001000000010000000010018000000
        000000030000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
        00FFFF00FFB88989B88989B88989B88989B88989B88989B88989B88989B88989
        B88989FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FEFEFDFEFEFEFEFE
        FDFEFEFDFEFEFDFEFEFDFEFEFDFEFEFDB88989FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFB88989FEFBF8B27E73B27E73B27E73B27E73B27E73B27E73FEFBF8
        B88989FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FEF8F3FEFAF6FEF8
        F3FEF8F3FEF8F3FEF8F3FEF8F3FEF8F3B88989FF00FFB88989B88989B88989B8
        8989B88989B88989FEF6EDB27E73B27E73B27E73B27E73B27E73B27E73FEF6ED
        B88989FF00FFB88989FEFEFDFEFEFEFEFEFDFEFEFDB88989FEF3E8FFF4EAFEF3
        E8FEF3E8FEF3E8FEF3E8FEF3E8FEF3E8B88989FF00FFB88989FEFBF8B27E73B2
        7E73B27E73B88989FFF0E3B27E73B27E73B27E73B27E73B27E73B27E73FFF0E3
        B88989FF00FFB88989FEF8F3FEFAF6FEF8F3FEF8F3B88989FFEDDDFFEDDDFFED
        DDFFEDDDFFEDDDE9D5C9E7D6C9D7C5BAB88989FF00FFB88989FEF6EDB27E73B2
        7E73B27E73B88989FFEBD8FFEAD7FFEBD8FFEBD8FFEBD8C4AAA7C5ABA8CDB5B0
        CD9999FF00FFB88989FEF3E8FFF4EAFEF3E8FEF3E8B88989FFE8D2FFE8D2FFE8
        D2FFE8D2FBE4CFC6ACA9FEFEFECD9999FF00FFFF00FFB88989FFF0E3B27E73B2
        7E73B27E73B88989FFE6CFFFE6CFFFE6CFFFE6CFE9CFBFD2BAB4CD9999FF00FF
        FF00FFFF00FFB88989FFEDDDFFEDDDFFEDDDFFEDDDB88989B88989B88989B889
        89B88989B88989CD9999FF00FFFF00FFFF00FFFF00FFB88989FFEBD8FFEAD7FF
        EBD8FFEBD8FFEBD8C4AAA7C5ABA8CDB5B0CD9999FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB88989FFE8D2FFE8D2FFE8D2FFE8D2FBE4CFC6ACA9FEFEFECD99
        99FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB88989FFE6CFFFE6CFFF
        E6CFFFE6CFE9CFBFD2BAB4CD9999FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFB88989B88989B88989B88989B88989B88989CD9999FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 8
      Visible = False
      OnClick = ReplicateInventoryClick
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
      ImageName = 'COPY'
    end
    object InvAppAutoCreditButton: TAlpineGlowButton
      Left = 85
      Top = 1
      Width = 84
      Height = 31
      Align = alLeft
      Caption = 'Automatic Credit'
      ImageIndex = 122
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
      Position = bpMiddle
      TabOrder = 9
      Visible = False
      OnClick = InvAppAutoCreditButtonClick
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
    object InvLocAuditButton: TAlpineGlowButton
      Left = 1
      Top = 1
      Width = 84
      Height = 31
      Align = alLeft
      Caption = 'Move History'
      ImageIndex = 70
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000C30E0000C30E0000000100003D000000F6F6F600F0F0F000E8E8
        E800E2E2ED00DFDFDF00D5D5D500CCCCCC00BCBDD800BCBCBC00B9B9B900B3B6
        C000A7A9CD00A7A7AD00A3A4A500999999008787D8008B8DC6007F7FEB008386
        BD00848CA500898989008182A2007A7EB000787EA80085858500777D9F007E7E
        84005F5FDC0078787C00707075004C4CF8005D677D004C4CDA005B6482006666
        66005D5E5F004F4F52002828DF003337A00038456E00FF00FF00333399004546
        4F00414141003D3E41000D0DE0000A0ADC000000F500333333000000E0001215
        920017284B00142356000000CC00111D61000E186B000000B7000A127600070D
        810005088A0004078C0000000000000000000000000000000000000000000000
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
        00000000000000000000000000000000000000000000282828280D0E181D1D1A
        22302828282828282B30252E3538300E0E0E1430282828282C301E3120383006
        1A060930282828282C302F31353830061A060630282828282C301E3120383006
        1A060630282828282C302F31353830061A060630282828282C30112D1B0F3015
        1C130C30282828282C2105040203263C303B3730282828282C33271210293A3C
        303B3730282828282C33343637393A3C303B3730282828282C33343637393A3C
        303B3730282828282C1F343637393A32303B37302828282824050A1917160B00
        303B3730282828282305082C22020100303B3028282828281A0D142B30020107
        30302828282828282828282B230D222A302828282828}
      Position = bpLeft
      TabOrder = 10
      OnClick = InvLocAuditButtonClick
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
      ImageName = 'STATION'
    end
  end
  inherited BaseStatusPanel: TPanel
    Top = 629
    Width = 1012
    Height = 8
    TabOrder = 2
    Visible = False
    ExplicitTop = 629
    ExplicitWidth = 1012
    ExplicitHeight = 8
    inherited recid: TLabel
      Left = 636
      Height = 6
      ExplicitLeft = 730
      ExplicitHeight = 6
    end
    inherited SecRecLockLabel: TLabel
      Width = 635
      Height = 6
      ExplicitWidth = 729
      ExplicitHeight = 6
    end
  end
  object TopPanel: TPanel [2]
    Left = 0
    Top = 43
    Width = 1012
    Height = 196
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object GeneralInformationPanel: TAlpinePanel
      Left = 0
      Top = 0
      Width = 728
      Height = 196
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
      Caption.ColorTo = clBlack
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -12
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
      object DescrLabel: TLabel
        Left = 5
        Top = 72
        Width = 75
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
      object FdidLabel: TLabel
        Left = 5
        Top = 27
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Agency'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object InvLocIDLabel: TLabel
        Left = 5
        Top = 95
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Location'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object InvSubTypeLabel: TLabel
        Left = 190
        Top = 49
        Width = 57
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Sub Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SerNumLabel: TLabel
        Left = 5
        Top = 119
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Serial Number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ManufactLabel: TLabel
        Left = 5
        Top = 142
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Manufacturer'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ModelLabel: TLabel
        Left = 274
        Top = 142
        Width = 34
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Model'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 190
        Top = 26
        Width = 57
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Owner'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object InvStatIDLabel: TLabel
        Left = 5
        Top = 164
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Item Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object QuantityLabel: TLabel
        Left = 456
        Top = 164
        Width = 22
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qty'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 274
        Top = 164
        Width = 34
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Notes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object InvNumLabel: TLabel
        Left = 5
        Top = 49
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Inventory #'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object TrackingLabel: TLabel
        Left = 556
        Top = 27
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Tracking #'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label61: TLabel
        Left = 556
        Top = 51
        Width = 75
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Inv ID#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object SortOrdLabel: TLabel
        Left = 570
        Top = 164
        Width = 127
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Placement Order'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DescrField: TAlpineLookup
        Left = 84
        Top = 70
        Width = 447
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
        OnEnter = DescrFieldEnter
        ImageName = 'DOWNARROW'
        OnLookupNewRecord = DescrFieldLookupNewRecord
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 360
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'DESCR'
        DisplayField = 'DESCR'
        ReferencingTable = 'INVDESCR'
        ReferencingField = 'DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object InvLocIDField: TAlpineLookup
        Left = 84
        Top = 93
        Width = 447
        Height = 21
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'INVLOCID'
        DisplayField = 'FULLDESCR'
        ReferencingTable = 'INVLOC'
        ReferencingField = 'INVLOCID'
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
      object InvSubTypeField: TAlpineLookup
        Left = 249
        Top = 47
        Width = 282
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
      object InvNumField: TAlpineEdit
        Left = 84
        Top = 47
        Width = 90
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
        MaxLength = 16
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 1
        OnExit = InvNumFieldExit
        DataField = 'INVNUM'
        CurrentPos = -1
      end
      object SerNumField: TAlpineEdit
        Left = 84
        Top = 116
        Width = 447
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
        TabOrder = 6
        OnExit = SerNumFieldExit
        DataField = 'SERNUM'
        CurrentPos = -1
      end
      object ModelField: TAlpineEdit
        Left = 312
        Top = 139
        Width = 219
        Height = 21
        DataType = pftString
        Controller = OvcController
        Epoch = 1900
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
        TabOrder = 8
        DataField = 'MODEL'
        CurrentPos = -1
      end
      object FDIDField: TAlpineLookup
        Left = 84
        Top = 24
        Width = 90
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
        OnEnter = FDIDFieldEnter
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!!'
        EditWidth = 70
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'FDID'
        DisplayField = 'FDID'
        ReferencingTable = 'FDID'
        ReferencingField = 'FDID'
        ReturnField = 'DEPTNAME'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clBlack
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = []
        LookupCode = 'FDIDDISP'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object InvOwnerIDField: TAlpineLookup
        Left = 249
        Top = 24
        Width = 282
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
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'INVOWNERID'
        DisplayField = 'DESCR'
        ReferencingTable = 'INVOWNER'
        ReferencingField = 'INVOWNERID'
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
      object printlocations: TAlpineGlowButton
        Left = 534
        Top = 93
        Width = 104
        Height = 22
        Caption = '&Print Locations'
        ImageIndex = 106
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
        TabOrder = 9
        OnClick = PrintLocationsClick
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
        ImageName = 'PRINTER'
      end
      object InvStatIDField: TAlpineLookup
        Left = 84
        Top = 162
        Width = 189
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
        ImageName = 'DOWNARROW'
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'INVSTATID'
        DisplayField = 'DESCR'
        ReferencingTable = 'INVSTAT'
        ReferencingField = 'INVSTATID'
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
      object QuantityField: TAlpineEdit
        Left = 483
        Top = 162
        Width = 48
        Height = 21
        DataType = pftInteger
        AutoSize = False
        Controller = OvcController
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 4
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentFont = False
        PictureMask = 'iiii'
        TabOrder = 12
        DataField = 'QUANTITY'
        RightAlign = True
        CurrentPos = -1
        Text = '   0'
        RangeHigh = {FF7F0000000000000000}
        RangeLow = {0080FFFF000000000000}
      end
      object InvStatDescrField: TAlpineEdit
        Left = 312
        Top = 162
        Width = 138
        Height = 21
        DataType = pftString
        Controller = OvcController
        Epoch = 1900
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
        TabOrder = 11
        DataField = 'INVSTATDESCR'
        CurrentPos = -1
      end
      object TrackingField: TAlpineEdit
        Left = 634
        Top = 24
        Width = 90
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
        options = [efoCaretToEnd]
        ParentFont = False
        TabOrder = 13
        OnExit = InvNumFieldExit
        DataField = 'TRACKINGNUM'
        CurrentPos = -1
        Text = '0'
      end
      object InvIDField: TAlpineEdit
        Left = 634
        Top = 48
        Width = 90
        Height = 21
        DataType = pftString
        Controller = OvcController
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        options = [efoCaretToEnd]
        ParentFont = False
        TabOrder = 14
        Visible = False
        OnExit = InvNumFieldExit
        DataField = 'INVID'
        CurrentPos = -1
        Text = '0'
      end
      object ManufactField: TAlpineLookup
        Left = 84
        Top = 139
        Width = 189
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        TabStop = True
        ImageName = 'DOWNARROW'
        OnLookupNewRecord = DescrFieldLookupNewRecord
        DataFieldIsCharacter = True
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 360
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'MANUFACT'
        DisplayField = 'DESCR'
        ReferencingTable = 'INVMANUFACT'
        ReferencingField = 'DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object SortOrdField: TAlpineEdit
        Left = 701
        Top = 162
        Width = 23
        Height = 21
        DataType = pftInteger
        Color = clWhite
        Controller = OvcController
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 2
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'ii'
        TabOrder = 15
        DataField = 'SORTORD'
        RightAlign = True
        CurrentPos = -1
        Text = ' 0'
        RangeHigh = {FF7F0000000000000000}
        RangeLow = {0080FFFF000000000000}
      end
    end
    object AlpinePanel6: TAlpinePanel
      Left = 728
      Top = 0
      Width = 284
      Height = 196
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
      Caption.ColorTo = clBlack
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -12
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Photograph'
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
      object Image: TChadImage
        Left = 2
        Top = 20
        Width = 280
        Height = 174
        Cursor = crSizeAll
        Align = alClient
        AutoSize = True
        Center = True
        DragCursor = crArrow
        Stretch = True
        ExplicitWidth = 1191
        ExplicitHeight = 708
      end
    end
  end
  object InvControl: TAdvPageControl [3]
    Left = 0
    Top = 239
    Width = 1012
    Height = 390
    ActivePage = InvTab
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = [fsBold]
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = imgPers
    ParentFont = False
    RaggedRight = True
    DefaultTextColor = clWhite
    DefaultTabColorTo = clBtnFace
    ActiveColor = clWhite
    ActiveColorTo = clBtnFace
    TabBorderColor = clBtnFace
    TabSheet3D = True
    TabSheetBorderColor = clBtnFace
    TabHoverColor = clInfoBk
    TabHoverColorTo = clWhite
    TabHoverBorder = clBtnFace
    TabBackGroundColor = clBtnFace
    TabBackGround.Data = {
      D6090000424DD60900000000000036040000280000003A000000180000000100
      080000000000A0050000C30E0000C30E0000000100001800000000009900FF00
      FF00333333000000CC000000B6000000E8003300CC000000D5000000A4000000
      BF003000AE000000F1004000B3000000DF000000AD006600CC000000C3001000
      D8002000F3005000D3001000AD001000A5002000D3006000D500000000000000
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
      0000000000000000000000000000000000000000000000000000010202020202
      0202020202020202020202020202020202020202020202020202020202020202
      0202020202020202020202020202020202020201616E01020B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B1202616E0102050505050505050505050505
      0505050505050505050505050505050505050505050505050505050505050505
      050505050505050505050502616E010205050505050505050505050505050505
      0505050505050505050505050505050505050505050505050505050505050505
      0505050505050502616E01020D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D02616E01020D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D
      0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D02
      616E010207070707070707070707070707070707070707070707070707070707
      07070707070707070707070707070707070707070707070707070702616E0102
      0707070707070707070707070707070707070707070707070707070707070707
      070707070707070707070707070707070707070707071102616E010207070707
      0707070707070707070707070707070707070707070707070707070707070707
      0707070707070707070707070707070707110201616E01020303030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      03030303030303030303030316020101616E0102030303030303030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      030303030303030602010101616E010210101010101010101010101010101010
      1010101010101010101010101010101010101010101010101010101010101010
      1010060201010101616E01020909090909090909090909090909090909090909
      0909090909090909090909090909090909090909090909090909090909130201
      01010101616E0102090909090909090909090909090909090909090909090909
      0909090909090909090909090909090909090909090909091702010101010101
      616E010204040404040404040404040404040404040404040404040404040404
      04040404040404040404040404040404040404170201010101010101616E0102
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E02020101010101010101616E01020E0E0E0E
      0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
      0E0E0E0E0E0E0E0E0E0201010101010101010101616E01020808080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      08080814020101010101010101010101616E0102080808080808080808080808
      0808080808080808080808080808080808080808080808080808080808081402
      010101010101010101010101616E010208080808080808080808080808080808
      0808080808080808080808080808080808080808080808080815020101010101
      0101010101010101616E01020000000000000000000000000000000000000000
      00000000000000000000000000000000000000000A0201010101010101010101
      01010101616E0101020000000000000000000000000000000000000000000000
      0000000000000000000000000000000A02010101010101010101010101010101
      616E010101020202000000000000000000000000000000000000000000000000
      000000000000000000000C0201010101010101010101010101010101616E0101
      0101010102020202020202020202020202020202020202020202020202020202
      020202020202020101010101010101010101010101010101616E}
    TabBackGroundActive.Data = {
      D6090000424DD60900000000000036040000280000003A000000180000000100
      080000000000A0050000C30E0000C30E0000000100001200000033333300FF00
      FF001094FF0000B5FF00307CFF0000A5FF0000BEFF006666FF0000AEFF0000C5
      FF00209DFF000099FF0010ACFF004073FF003399FF005076FF00308DFF0020AC
      FF00000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000010000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001616E01000909090909090909
      0909090909090909090909090909090909090909090909090909090909090909
      09090909090909090909090909091100616E0100090909090909090909090909
      0909090909090909090909090909090909090909090909090909090909090909
      090909090909090909090900616E010006060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060606
      0606060606060600616E01000606060606060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060606
      06060600616E0100060606060606060606060606060606060606060606060606
      0606060606060606060606060606060606060606060606060606060606060600
      616E010006060606060606060606060606060606060606060606060606060606
      06060606060606060606060606060606060606060606060606060600616E0100
      0303030303030303030303030303030303030303030303030303030303030303
      030303030303030303030303030303030303030303030C00616E010003030303
      0303030303030303030303030303030303030303030303030303030303030303
      03030303030303030303030303030303030C0001616E01000303030303030303
      0303030303030303030303030303030303030303030303030303030303030303
      0303030303030303030303030A000101616E0100080808080808080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      080808080808081000010101616E010008080808080808080808080808080808
      0808080808080808080808080808080808080808080808080808080808080808
      0808100001010101616E01000808080808080808080808080808080808080808
      08080808080808080808080808080808080808080808080808080808080F0001
      01010101616E0100080808080808080808080808080808080808080808080808
      0808080808080808080808080808080808080808080808080700010101010101
      616E010005050505050505050505050505050505050505050505050505050505
      05050505050505050505050505050505050505070001010101010101616E0100
      0505050505050505050505050505050505050505050505050505050505050505
      050505050505050505050505050500000101010101010101616E010005050505
      0505050505050505050505050505050505050505050505050505050505050505
      0505050505050505050001010101010101010101616E01000505050505050505
      0505050505050505050505050505050505050505050505050505050505050505
      05050502000101010101010101010101616E01000B0B0B0B0B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0200
      010101010101010101010101616E01000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B02000101010101
      0101010101010101616E01000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B040001010101010101010101
      01010101616E0101000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0400010101010101010101010101010101
      616E0101010000000B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B
      0B0B0B0B0B0B0B0B0B0B0D0001010101010101010101010101010101616E0101
      0101010100000000000000000000000000000000000000000000000000000000
      000000000000000101010101010101010101010101010101616E}
    TabMargin.LeftMargin = 2
    TabMargin.TopMargin = 2
    TabMargin.RightMargin = 2
    TabOverlap = 10
    RoundEdges = True
    TabStyle = tsDotNet
    LowerActive = 0
    Version = '2.0.0.4'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabHeight = 21
    TabOrder = 1
    OnChanging = InvControlChanging
    object InvGeneralTab: TAdvTabSheet
      Caption = 'General'
      Color = clBtnFace
      ColorTo = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabColor = clSilver
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvGeneralTabShow
    end
    object InvChassisTab: TAdvTabSheet
      Caption = 'Chassis'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 9
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvChassisTabShow
    end
    object InvFuelTab: TAdvTabSheet
      Caption = 'Fuel'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvFuelTabShow
      object InvFuelBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 1004
        height = 359
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
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Fuel Usage'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 25
        ButtonWidth = 65
        SearchFooter = False
        FullHeight = 124
      end
    end
    object WOTab: TAdvTabSheet
      Caption = 'Work Order'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = WOTabShow
      object WorkOrdBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 1004
        height = 359
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
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Work Orders'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 26
        SearchFooter = False
        FullHeight = 124
        object WorkOrdOpenButton: TAlpineGlowButton
          Left = 365
          Top = 275
          Width = 70
          Height = 28
          Caption = 'Show All'
          ImageIndex = 5
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            424D360300000000000036000000280000001000000010000000010018000000
            000000030000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0A1A0A7
            9CA79D8E9D918391857C868074817E707E796C79796C797A717A797A79FF00FF
            FF00FFFF00FFFF00FFFF00FFB3A8B3329432199D190F930F2B9C2B1C961C1690
            16168B16168B162A802A7B707BFF00FFFF00FFFF00FFFF00FFFF00FFBAABBA16
            A41600AF0032C032D6F5D638BF3800A30000A80000A500128E12796B79FF00FF
            FF00FFFF00FFFF00FFFF00FFC2B4C31DA71D63D663F9FEF9FFFFFFD9F1D923B4
            2300A20000A900169416796B79FF00FFFF00FFFF00FFFF00FFFF00FFBBB9BC76
            C376FFFFFFFFFFFFAAE5AADFF2DFD7F0D727B72700AA001697167F707FFF00FF
            FF00FFFF00FFFF00FFFF00FFCEC0CE1BB01BA0ECA0FFFFFF51CD5166D366FDFA
            FDDAF0DA41C6410D970D837583FF00FFFF00FFFF00FFFF00FFFF00FFDAC9DB1A
            B51A03C603C3F0C342CF4200B900BEE9BEEDF5EDDFF6DF65B3657E7B7FFF00FF
            FF00FFFF00FFFF00FFFF00FFDDCBDE21BB2100CB0012CA120FC80F00BF002AC9
            2AD8EED8ECF9EC61B561807E80FF00FFFF00FFFF00FFFF00FFFF00FFDECCDF1A
            BC1A00D30000CE0000CD0000CA0000C4003BD33BD3F7D33FB33F8D878DFF00FF
            FF00FFFF00FFFF00FFFF00FFDFD2E03AAE3A1FBC2020BA201FBA1F1EB81E1EB6
            1E15B01545BB4555A6559E979EFF00FFFF00FFFF00FFFF00FFFF00FFD0D1D0DF
            D2E0DDCCDFDDCCDED7C6D8D1C0D0CDBCCDC3B3C3B3AAB3B1A8B1A0A1A1FF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          Position = bpRight
          TabOrder = 0
          OnClick = WorkOrdOpenButtonClick
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
          ImageName = 'GLOWBUTTONCHECKED'
        end
      end
    end
    object InvTiresTab: TAdvTabSheet
      Caption = 'Tires'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvTiresTabShow
    end
    object InvEngineTab: TAdvTabSheet
      Caption = 'Engine'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvEngineTabShow
    end
    object ValuationTab: TAdvTabSheet
      Caption = 'Purchasing'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      object AlpinePanel10: TAlpinePanel
        Left = 0
        Top = 0
        Width = 1004
        Height = 359
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
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Purchasing'
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
        object Label27: TLabel
          Left = 374
          Top = 159
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Depreciation'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 374
          Top = 136
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Disposal Type'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label46: TLabel
          Left = 4
          Top = 79
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Value'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 4
          Top = 56
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cost'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 374
          Top = 55
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Expected Life'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TLabel
          Left = 533
          Top = 57
          Width = 27
          Height = 13
          Caption = 'Years'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TLabel
          Left = 374
          Top = 33
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Proceeds'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 4
          Top = 135
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Purchase'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 4
          Top = 181
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'In Service'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DisposalLabel: TLabel
          Left = 4
          Top = 227
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Out of Service or Disposed'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 4
          Top = 251
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date Sold'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 4
          Top = 204
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Refurbish'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label155: TLabel
          Left = 4
          Top = 112
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Manufacturer Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 4
          Top = 34
          Width = 135
          Height = 13
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
        object Label8: TLabel
          Left = 374
          Top = 210
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Image Link'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BarCodeDateLabel: TLabel
          Left = 4
          Top = 273
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bar Code Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ExpDateLabel: TLabel
          Left = 4
          Top = 296
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Expiration Date'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label150: TLabel
          Left = 374
          Top = 78
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Warranty Period'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label151: TLabel
          Left = 533
          Top = 80
          Width = 27
          Height = 13
          Caption = 'Years'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label152: TLabel
          Left = 4
          Top = 158
          Width = 135
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Received'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object PONumLabel: TLabel
          Left = 372
          Top = 100
          Width = 90
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'PO Number'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object InvDeprMethIDField: TAlpineLookup
          Left = 467
          Top = 156
          Width = 282
          Height = 25
          BorderStyle = bsNone
          Ctl3d = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          TabStop = True
          OnEnter = InvDeprMethIDFieldEnter
          ImageName = 'DOWNARROW'
          PictureMask = '!!!!!!!!'
          EditWidth = 75
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'INVDEPRMETHID'
          DisplayField = 'CODE'
          ReferencingTable = 'INVDEPRMETH'
          ReferencingField = 'INVDEPRMETHID'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = True
          LookupCaption = 'RedNMX System'
        end
        object InvDisposalIDField: TAlpineLookup
          Left = 467
          Top = 133
          Width = 282
          Height = 25
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
          OnEnter = InvDisposalIDFieldEnter
          ImageName = 'DOWNARROW'
          PictureMask = '!!!!!!!!'
          EditWidth = 75
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'INVDISPOSALID'
          DisplayField = 'CODE'
          ReferencingTable = 'INVDISPOSAL'
          ReferencingField = 'INVDISPOSALID'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'STDLOOK'
          TreeLookMinimumCharacters = 0
          StandardLookup = True
          LookupCaption = 'RedNMX System'
        end
        object ValueSQLField: TAlpineEdit
          Left = 145
          Top = 76
          Width = 91
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
          MaxLength = 13
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '##,###,###.##'
          TabOrder = 2
          DataField = 'VALUESQL'
          RightAlign = True
          CurrentPos = -1
          Text = '         0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CostField: TAlpineEdit
          Left = 145
          Top = 53
          Width = 91
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
          MaxLength = 13
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '##,###,###.##'
          TabOrder = 1
          DataField = 'COST'
          RightAlign = True
          CurrentPos = -1
          Text = '         0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object ExpLifeField: TAlpineEdit
          Left = 467
          Top = 53
          Width = 60
          Height = 21
          DataType = pftReal
          Controller = OvcController
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
          PictureMask = '###.##'
          TabOrder = 4
          DataField = 'EXPLIFE'
          RightAlign = True
          CurrentPos = -1
          Text = '  0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object AlpineEdit7: TAlpineEdit
          Left = 467
          Top = 30
          Width = 97
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
          MaxLength = 13
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '##,###,###.##'
          TabOrder = 3
          DataField = 'PROCEEDS'
          RightAlign = True
          CurrentPos = -1
          Text = '         0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object PurchaseDateField: TAlpineDateTime
          Left = 145
          Top = 131
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'PURCHASEDATE'
          TabOrder = 9
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object OutOfServiceDateField: TAlpineDateTime
          Left = 145
          Top = 224
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'OUTOFSERVICEDATE'
          TabOrder = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object InServiceDateField: TAlpineDateTime
          Left = 145
          Top = 178
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'InServiceDate'
          TabOrder = 11
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object SoldDateField: TAlpineDateTime
          Left = 145
          Top = 247
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'SoldDate'
          TabOrder = 14
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object RefurbishDateField: TAlpineDateTime
          Left = 145
          Top = 201
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'REFURBISHDATE'
          TabOrder = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object ManDateField: TAlpineDateTime
          Left = 145
          Top = 109
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'ManDate'
          TabOrder = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object RolodexIDField: TAlpineLookup
          Left = 145
          Top = 30
          Width = 210
          Height = 25
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
          OnCustomEditCode = RolodexIDFieldCustomEditCode
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
        object ImageListIDField: TAlpineLookup
          Left = 467
          Top = 207
          Width = 376
          Height = 25
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
          TabOrder = 16
          TabStop = True
          OnEnter = ImageListIDFieldEnter
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
            'SELECT IMAGELISTID, FILENAME, DESCR FROM IMAGELIST ORDER BY DESC' +
            'R'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'IMAGELIST'
          OnAfterLookup = ImageListIDFieldAfterLookup
          DisplayDescription = False
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object BarCodeDateField: TAlpineDateTime
          Left = 145
          Top = 270
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'BARCODEDATE'
          TabOrder = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object SelectPhotoButton: TAlpineGlowButton
          Left = 469
          Top = 232
          Width = 104
          Height = 22
          Caption = 'Select Photo'
          ImageIndex = 94
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            424D360500000000000036040000280000001000000010000000010008000000
            000000010000C30E0000C30E0000000100001E000000FFFFFF00F8F8F800EDED
            ED00E6E6E600DFDFDF00D7D7D700C3DDAA00CCCCCC006EBAED00BBBBBB0052D2
            39000099FF00FB7CE20066CC0000F879DF008BA17500F677DD008B8B8B008585
            85007B896C0073737300B3666600004DE600B0449B00A1488F0059595900FF00
            FF00FF00CC003333330000000000000000000000000000000000000000000000
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
            000000000000000000000000000000000000000000001A1A1A1A1A1A1A1A1A1A
            1A1A1A1A1A1A1A071D1D07071D1D07071D1D07071D1A1A1D0505050505050505
            05050505051A1A1D050505050505121905050505051A1A040408080808081219
            040404041D1A1A04040B0B0B0B0B1119040404041D1A1A1D040B0B16160B1119
            060A0A04041A1A1D03111C1C1C1C1C19130D0D03031A1A030309111111111414
            0F0D0D031D1A1A02020202101B1B1718150D0D021D1A1A1D0202020E1B1B1B1B
            150D0D02021A1A1D0101010E1B1B1B1B1B010101011A1A010101010C1B1B1B1B
            1B0101011D1A1A010101010101010101010101011D1A1A1D00001D1D00001D1D
            00001D1D001A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A}
          Position = bpLeft
          TabOrder = 17
          OnClick = SelectPhotoButtonClick
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
          ImageName = 'SITEPLAN'
        end
        object DeletePhotoButton: TAlpineGlowButton
          Left = 573
          Top = 232
          Width = 104
          Height = 22
          Caption = 'Delete Photo'
          ImageIndex = 107
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
          TabOrder = 18
          OnClick = DeletePhotoButtonClick
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
        object ExpDateField: TAlpineDateTime
          Left = 145
          Top = 293
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'EXPDATE'
          TabOrder = 19
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object WarrantyPeriodField: TAlpineEdit
          Left = 467
          Top = 76
          Width = 60
          Height = 21
          DataType = pftReal
          Controller = OvcController
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
          PictureMask = '###.##'
          TabOrder = 5
          DataField = 'WARRANTYPERIOD'
          RightAlign = True
          CurrentPos = -1
          Text = '  0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object ReceiveDateField: TAlpineDateTime
          Left = 145
          Top = 155
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'RECEIVEDATE'
          TabOrder = 10
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object PONumField: TAlpineEdit
          Left = 467
          Top = 98
          Width = 150
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
          TabOrder = 20
          DataField = 'PONUM'
          CurrentPos = -1
        end
        object ExpDateButton: TAlpineGlowButton
          Left = 240
          Top = 293
          Width = 73
          Height = 21
          Hint = 
            'Press this button the add the Expected Life to the Manufacturer ' +
            'Date'
          Caption = 'Calculate'
          ImageIndex = 115
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00666666003333
            3300282828004A4A4A0089898900FF00FF00FF00FF00FF00FF006D6C74006D6C
            74006D6C74006D6C74006D6C74006D6C740073747C005050500066666600B5B2
            AE00B7B7B7007C7C7C00282828005B5E5C00FF00FF00FF00FF00333333004141
            400041414000414140004141400041414000747473005B5E5C00F3F3F300EDED
            ED00E6E6E600E0E0E0008484840028282800FF00FF00FF00FF004A4A4A00FFFA
            F400FFFAF400FFF8EF00FFF8EF00FFF8EF0084848400B5B2AE00F3F3F3000000
            00001A1A1A00282828008989890028282800FF00FF00FF00FF004A4A4A00FFFA
            F400FFFAF400FFFAF400FFFAF400FFFAF40084848400C2C2C200F3F3F3003333
            3300D8D8D800A8A7A600D8D8D80033333300FF00FF00FF00FF004A4A4A00FFFC
            F700FFFCF70021921F0056AD5200FFF8EF00A8A7A60089898900F3F3F3001A1A
            1A00BEBEBE00E0E0E000A8A7A60033333300FF00FF00FF00FF004A4A4A00FFFC
            F700669966000099000079B97300FFF8EF00F1EDE70066666600B0AFAE001010
            1000B0AFAE00BEBEBE004141400050505000FF00FF00FF00FF004A4A4A006699
            6600007F00002D952B0006AD0600CEE3C300FFF8EF00DDDBD700747473002828
            2800333333003C3C3C007474730033333300FF00FF00FF00FF004A4A4A00789D
            7600067D0600E6EDDF0006AD060017BC1600E6EDDF00FFF8EF00FFF8EF00E5E0
            DB00B5B2AE00D8D2CA00CEC7BD0033333300FF00FF00FF00FF004A4A4A00FFFF
            FF00CDE1C700B6D0B10039A7370000CC000033CC3300FFF8EF00FFF8EF00FFF8
            EF00FFF8EF00FFF8EF00CEC7BD0033333300FF00FF00FF00FF004A4A4A00FFFF
            FF00FFFFFF00FFFFFF00CDE1C70000CC00000ED60D00FFFAF400FFF8EF00FFF8
            EF00FFF8EF00FFF8EF00CEC7BD0033333300FF00FF00FF00FF004A4A4A00B5B2
            AE00B5B2AE00B5B2AE00B5B2AE0039A7370017C31700B3AFAB00B3AFAB00B3AF
            AB00B3AFAB00B3AFAB00999999003C3C3C00FF00FF00FF00FF00333333005050
            5000505050005050500050505000505050001697160050505000505050005050
            500050505000505050005050500041414000FF00FF00FF00FF003333330000CC
            000000CC000000C5000000C5000000C5000000BE000000BE000000BE000000B6
            000000B6000000B6000000B6000033333300FF00FF00FF00FF003333330000F4
            280000F2260000F2260000F2260000F2260000EE220000EE220000EE220000EA
            1E0000EA1E0000EA1E0000EA1E0033333300FF00FF00FF00FF00333333003333
            3300333333003333330033333300333333003333330033333300333333003333
            330033333300333333003333330033333300FF00FF00}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 21
          OnClick = ExpDateButtonClick
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
          ImageName = 'SCHEDULING'
        end
      end
    end
    object InvMechanicalTab: TAdvTabSheet
      Caption = 'Mechanical'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvMechanicalTabShow
    end
    object InvTab: TAdvTabSheet
      Caption = 'Inventory'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvTabShow
      object Status911Splitter: TSplitter
        Left = 0
        Top = 136
        Width = 1004
        Height = 5
        Cursor = crVSplit
        Align = alTop
        AutoSnap = False
        Color = clBtnFace
        ParentColor = False
        ExplicitWidth = 899
      end
      object InvBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 141
        width = 1004
        height = 218
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
        Caption.CloseColor = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Apparatus Inventory'
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
        NewCaption = 'New'
        ButtonHeight = 25
        ButtonWidth = 65
        SearchFooter = False
        FullHeight = 194
      end
      object AppInvLocIDPanel: TPanel
        Left = 0
        Top = 0
        Width = 1004
        Height = 30
        Align = alTop
        BevelOuter = bvLowered
        Caption = ' '
        TabOrder = 1
        object Label53: TLabel
          Left = 6
          Top = 7
          Width = 139
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Base Location Link Code'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object AppInvLocIDField: TAlpineLookup
          Left = 149
          Top = 4
          Width = 476
          Height = 21
          BorderStyle = bsNone
          Color = clWhite
          Ctl3d = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          TabStop = True
          ImageName = 'DOWNARROW'
          InitialSeek = True
          OnSuccessfulValidate = AppInvLocIDFieldSuccessfulValidate
          DataFieldIsCharacter = True
          PictureMask = 
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
            'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'APPINVLOCID'
          DisplayField = 'FULLDESCR'
          ReferencingTable = 'INVLOC'
          ReferencingField = 'INVLOCID'
          SqlExpr = 'SELECT * FROM INVLOC ORDER BY DESCR'
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
        object ShowAllInventory: TAlpineCheckBox
          Left = 645
          Top = 4
          Width = 177
          Height = 20
          Alignment = taLeftJustify
          ButtonType = btClassic
          Caption = 'Show All Inventory'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReturnIsTab = False
          TabOrder = 1
          Transparent = True
          OnClick = ShowAllInventoryClick
          Version = '1.6.0.0'
        end
      end
      object InvTreePanel: TAlpinePanel
        Left = 0
        Top = 30
        Width = 1004
        Height = 106
        Align = alTop
        BevelOuter = bvNone
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
        Caption.ColorTo = clBlack
        Caption.CloseColor = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Sublocations'
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
      end
    end
    object NarrTab: TAdvTabSheet
      Caption = 'Notes'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      object AlpineMemo1: TAlpineMemo
        Left = 0
        Top = 0
        Width = 1004
        Height = 359
        Align = alClient
        Caption = 'AlpineMemo1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DataField = 'narr'
        ReadOnly = False
        ScrollBars = ssNone
      end
    end
    object InvInspTab: TAdvTabSheet
      Caption = 'Inspection'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvInspTabShow
      object InvInspHistBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 171
        width = 1004
        height = 188
        Align = alClient
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
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Inspection History'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 25
        ButtonWidth = 65
        PrintEnabled = True
        SearchFooter = False
        FullHeight = 124
      end
      object InvInspSchdBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 1004
        height = 171
        Align = alTop
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
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Inspection Schedule'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 25
        ButtonWidth = 65
        SearchFooter = False
        FullHeight = 124
      end
    end
    object InvServTab: TAdvTabSheet
      Caption = 'Service'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvServTabShow
      object InvServSchdBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 1004
        height = 170
        Align = alTop
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
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Service Schedule'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 25
        ButtonWidth = 65
        SearchFooter = False
        FullHeight = 124
      end
      object InvServHistBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 170
        width = 1004
        height = 189
        Align = alClient
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
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Service History'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 25
        ButtonWidth = 65
        SearchFooter = False
        FullHeight = 124
      end
    end
    object CustomTab: TAdvTabSheet
      Caption = 'Custom'
      Color = clBtnFace
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = CustomTabShow
    end
    object InvImageTab: TAdvTabSheet
      Caption = 'Documents'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 3
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = InvImageTabShow
    end
    object PageRemTab: TAdvTabSheet
      Caption = 'Reminders'
      Color = clBtnFace
      ColorTo = clNone
      ImageIndex = 2
      TabColor = clBtnFace
      TabColorTo = clBtnFace
      TextColor = clWhite
      OnShow = PageRemTabShow
      object PageRemBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 1004
        height = 359
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
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -12
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.Indent = 2
        Caption.Text = 'Scheduled Reminders'
        Caption.TopIndent = 2
        Caption.Visible = True
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
        ButtonFont.Name = 'Tahoma'
        ButtonFont.Style = []
        GridTitleFont.Charset = DEFAULT_CHARSET
        GridTitleFont.Color = clWindowText
        GridTitleFont.Height = -11
        GridTitleFont.Name = 'MS Sans Serif'
        GridTitleFont.Style = []
        DefaultRowHeight = 22
        ButtonHeight = 25
        ButtonWidth = 65
        OnReplicate = PageRemBrowseReplicate
        SearchFooter = False
        FullHeight = 124
      end
    end
  end
  object AdvPanel5: TAdvPanel [4]
    Left = 0
    Top = 0
    Width = 1012
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
      1012
      43)
    FullHeight = 0
    object Image3: TImage
      Left = 8
      Top = 1
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
      Left = 51
      Top = 2
      Width = 114
      Height = 19
      Alignment = taCenter
      AutoSize = False
      Caption = 'Inventory'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object PersNumLabel: TLabel
      Left = 51
      Top = 23
      Width = 114
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'MANAGEMENT'
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
      Top = 3
      Width = 30
      Height = 32
      Picture.Data = {
        07544269746D617036080000424D360800000000000036040000280000002000
        000020000000010008000000000000040000C30E0000C30E0000000100007800
        000000FFFF000DFCFC0004F4F8009BE0FF0006EEF30095DCFF00E1DEDB008FD7
        FB0090D7FA0008E7EF008BD3F800D3D3D40084CEF4000CDCE7000ED5E3007CC6
        EE00C3C4C60011CCDD0071BDE70078BADE00BBBBBB006BB8E40013C4D50064B2
        DF0079B3D00060AFDD0017BBD100B8B5AF006DAFD40018B6CE00AFAFAF0072AC
        CB005AA9D8006BA6C5001BADC80064A4C80053A3D4001EA6C4004B9CCF00619D
        BE001AA6B5005A99BC0099999900219BBD001C9EAE004093C8005795B9005392
        B7002395B80092929400508FB300268EB3004489B500848C95008C8D8D004989
        AF004384AC002983AC00848484007F8289007F7F7F00397BA6002C7AA600537B
        8E002E75A30037769D00217C8800517688007474740055728200577283002873
        8500336699006C6C700050667C0052697400666666005C5C600031587600484D
        8B00285C640057575700454B8700275A5B0048575C0051515200474D6000464C
        5D00393E7E00FF00FF004747470037464A002B464B002E328600383C3F003A3A
        3A00273A3C002A353C003333330021265F00272F31001C1C6100202051002528
        2B001313660022222B0022222200090975001515390000008400191C1D000000
        720006064E0000006600000056000B0B26000E0E0E0000003F00090909000000
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
        0000595959595959595962626262626262626262626262626262595959595959
        59595959595959596262302B251D1A16110E5353040200000000625959595959
        5959595959595959623933302B25221D16165C5C090402000000016259595959
        595959595959595962403939302B25221D2C60600D0D04020000006259595959
        59595959595959596248403E39332B2B22507461160E0D090202006259595959
        5959595959595959596248403E3933304764766428110E0D0904026259595959
        595959595959595959624848403E3E50626264645C2C110E0D09625959595959
        595959595959595959596248484E616E7677777774644211110D625959595959
        5959595959595959595959625C677676626262767776642C1662595959595959
        5959595959595959595959596E6262622D3D3D62627676626259595959595959
        5959595959595959595959595E6226262634383D41626A645959595959595959
        59595959595959595959595962202424242D3738386459595959595959595959
        5959595959595959595959621719191920243237373862595959595959595959
        5959595959595959595959621515151717202F2F323764595959595959595959
        595959595959595959595962121212121515292E2F3267625959595959595959
        5959595959595959595959620F0F0F1212122327292E2F625959595959595959
        595959595959595959595F620C0C0C0F0F0F1C27272729627459595959595959
        5959595959595959596E5F62070A0A0C0C0C1321212727627474595959595959
        5959595959595959676E5F6205050507070A0F1F1F2121627474595959595959
        5959595959595959776E5F620303030505050818181F13666862595959595959
        59595959595959593C5A626E3F46464B4B454A433F3F6E6D624C595959595959
        595959595959595959596A6C63626262626262626275726B6259595959595959
        595959595959595959596A655D62555555555E57626F6D704459595959595959
        59595959595959595959646652625F444C363B5B626F6D745959595959595959
        595959595959595959594C6C4F6231492A5F365B626F71695959595959595959
        59595959595959595959596758625F512A62315462716C595959595959595959
        59595959595959595959593A56620B141E1E364D62734D595959595959595959
        59595959595959595959595935622A311E31315A624959595959595959595959
        5959595959595959595959595962312A2A2A2A5A625959595959595959595959
        5959595959595959595959595959621006061B62595959595959595959595959
        5959595959595959595959595959596262626259595959595959595959595959
        5959595959595959595959595959595959595959595959595959595959595959
        5959}
      Transparent = True
    end
    object Header: TLabel
      Left = 369
      Top = 9
      Width = 635
      Height = 25
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'General Inventory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 264
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
    Left = 750
    Top = 9
  end
  object imgPers: TImageList
    Left = 786
    Top = 9
    Bitmap = {
      494C010114004C012C0210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
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
      0000868484008684840000000000000000008684840086848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3A3A008F9393000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A3A4A500999999008585850070707500707075007E7E8400666666003333
      3300000000000000000000000000000000000000000000000000000000008684
      8400BCBABA00B5B3B300868484008684840086848400EBEAEA00868484008684
      8400868484000000000000000000000000000000000000000000000000000000
      0000BDBDBD00DCDCDC00F7F7F700FFFFFF00F7F7F700E6E6E600BDBDBD000000
      00000000000000000000000000000000000000000000747474003A3A3A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141003333
      33002828DF000A0ADC000000CC000000B7003333330099999900999999009999
      990089898900333333000000000000000000000000000000000086848400E3E2
      E200B5B3B300B5B3B300B5B3B300515050004F4F4F0086878700CDCDCD00E8E9
      E900C7C6C6008684840086848400868484000000000000000000BDBDBD00E6E6
      E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEE
      EE00BDBDBD0000000000000000000000000000000000000000005A5A5A003A3A
      3A003A3A3A004242420052525200000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3E41003333
      33004C4CF8000000E0004C4CDA000000B70033333300CCCCCC007E7E8400CCCC
      CC00B9B9B9003333330000000000000000000000000086848400DEDDDD00D6D6
      D600A4A3A300A4A3A300A4A3A300565555001615160012121200181818001212
      120093939300CACACA00868484000000000000000000BDBDBD00EEEEEE00FFFF
      FF00FDF9F500EDCAA600DC965000D37A2100DC965000EFCFAF00FFFFFF00FFFF
      FF00E6E6E600BDBDBD0000000000000000000000000000000000666666004242
      42008F9393007E818100525252005A5A5A007474740000000000000000000000
      00000000000000000000000000000000000000000000000000003D3E41003333
      33000000F5000000E0000000CC000000B70033333300CCCCCC007E7E8400CCCC
      CC00CCCCCC0033333300000000000000000086848400D6D6D600D6D6D600A4A3
      A300E0DEDE00D9D7D700CDCBCB00C2C0C000B6B4B4009F9D9D00797677001212
      12001414140013131300868484008F8C8C0000000000F7F7F700FFFFFF00F6E3
      D100D6853300CC660000CC660000CC660000CC660000CC660000D6853300F6E5
      D400FFFFFF00E6E6E6000000000000000000000000006666660074747400BEBE
      BE00D5D5D500DEDEDE00A5A5A50042424200666666007B7B7B00000000000000
      00000000000000000000000000000000000000000000000000003D3E41003333
      33004C4CF8000000E0004C4CDA000000B70033333300CCCCCC007E7E8400CCCC
      CC00CCCCCC0033333300000000000000000086848400D6D6D600A4A3A300F3F2
      F200FFFEFE00FCFBFB00EAE7E800E6E6E600E6E5E500DAD9D900CCCBCB00BFBD
      BD00A2A0A00073717100939191008E8C8C00BDBDBD00FFFFFF00FFFFFF00D37A
      2100CC660000CC660000FFFFFF00FFFFFF00D47E2800CC660000CC660000D787
      3700FFFFFF00FFFFFF00BDBDBD0000000000000000006666660099999900A5A5
      A500DEDEDE00EEEEEE00F5F5F500FFFFFF00CCCCCC0066666600666666000000
      00000000000000000000000000000000000000000000000000003D3E41003333
      33000000F5000000E0000000CC000000B70033333300CCCCCC007E7E8400CCCC
      CC00CCCCCC0033333300000000000000000086848400A4A3A300FFFFFF00FEFD
      FD00FBFBFB00DFDEDF00ADA7A900B4ADAE00C3BDBE00D1CECF00E0E0E000E1E1
      E100D4D3D300C7C6C600A7A5A50086838300E6E6E600FFFFFF00EBC29900CC66
      0000CC660000CC660000FFFFFF00FFFFFF00D47E2800CC660000CC660000CC66
      0000F0D3B600FFFFFF00DCDCDC0000000000000000005A5A5A0099999900E6E6
      E600A5A5A5007474740099999900F5F5F500FFFFFF00E6E6E600666666007B7B
      7B000000000000000000000000000000000000000000000000003D3E41003333
      33007F7FEB000D0DE0005F5FDC008787D800333333008182A20078787C00848C
      A500A7A7AD00333333000000000000000000000000008684840086848400F1F0
      F000C2B9BA0093898B00A19B9F00ABA8AA00ABA6A700B1ACAD00AFA9AA00B2AD
      AE00CAC9C900DCDCDC00D0D0D00086848400F7F7F700FFFFFF00D88A3C00CC66
      0000CC660000CC660000E6B38000E6B38000CE6B0800CC660000CC660000CC66
      0000DF9E5E00FFFFFF00F7F7F7000000000000000000525252008C8C8C00CCCC
      CC0099999900666666006666660074747400FFFFFF00FFFFFF00D5D5D5005A5A
      5A007474740000000000000000000000000000000000000000003D3E41005B64
      8200D5D5D500DFDFDF00E8E8E800E2E2ED003337A00004078C00333333000508
      8A000E186B003333330000000000000000000000000000000000000000008684
      8400CAA09700BA9E8700A2897E0095817B00897C7F00928C9200A5A2A400BBB6
      B700D7D6D600CFCFCF008684840000000000FFFFFF00FFFFFF00D1761A00CC66
      0000CC660000CC660000F6E5D400FFFFFF00EDCAA600CC660000CC660000CC66
      0000D6853300FFFFFF00FFFFFF00000000000000000000000000424242005A5A
      5A005252520052525200000000007B7B7B0074747400EEEEEE00FFFFFF00E6E6
      E6005252520085858500000000000000000000000000000000003D3E41001728
      4B0038456E008386BD008B8DC60033339900070D810004078C00333333000508
      8A000E186B003333330000000000000000000000000000000000000000000000
      0000CC9A9900FFEAC400FFDDB300EEC39900D5AE8C00C9A78600CC9A99009895
      960086848400868484000000000000000000F7F7F700FFFFFF00D98C4000CC66
      0000CC660000CE6B0800D47E2800FCF6F000FFFFFF00F6E5D400CC660000CC66
      0000DB934B00FFFFFF00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000008585850066666600DEDEDE00FFFF
      FF00CCCCCC005A5A5A00999999000000000000000000000000003D3E41001728
      4B0014235600111D61000E186B000A127600070D810004078C00333333000508
      8A000E186B003333330000000000000000000000000000000000000000000000
      0000CC9A9900FFE7C800FFDDBA00FFDBB100FFD9A600FFD39F00CC9A99000000
      000000000000000000000000000000000000E6E6E600FFFFFF00EABF9400CC66
      0000DC965000FFFFFF00FFFFFF00E6B38000FFFFFF00FFFFFF00CC660000CC66
      0000EDCAA600FFFFFF00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A0074747400A5A5A500FFFF
      FF00EEEEEE0099999900424242000000000000000000000000003D3E41001728
      4B0014235600111D61000E186B000A127600070D810004078C00333333000508
      8A000E186B00333333000000000000000000000000000000000000000000CE9D
      9B00FFEDDA00FFE7CE00FFE2C300FFDDB800FFDBAE00CC9A9900000000000000
      000000000000000000000000000000000000C4C4C400FFFFFF00FAEFE500D37A
      2100CC660000FCF6F000FFFFFF00FFFFFF00FFFFFF00E6B38000CC660000D685
      3300FCF6F000FFFFFF00BDBDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000525252007B7B7B00A5A5A500B7B7
      B700D5D5D500A5A5A500424242000000000000000000000000003D3E41005D67
      7D0014235600111D61000E186B000A127600070D810012159200333333000508
      8A000E186B00333333000000000000000000000000000000000000000000CC9A
      9900FEF0E100FFECD800FFE6CC00FFE1C200FEDDB700CC9A9900000000000000
      000000000000000000000000000000000000C4C4C400E6E6E600FFFFFF00F6E5
      D400D37A2100CC660000D0711200D47E2800CE6B0800CC660000D37A2100F5E2
      CF00FFFFFF00E6E6E600C4C4C400000000000000000000000000000000000000
      000000000000000000000000000000000000666666007B7B7B00B7B7B700ACAC
      AC008F939300555B5B00747474000000000000000000000000004F4F5200D5D5
      D500B3B6C000777D9F00787EA8007A7EB000A7A9CD00F6F6F600333333000508
      8A000E186B003333330000000000000000000000000000000000CC9A9900FFFF
      F500FFFFF500FFF0E100FFEBD600FFE8CC00F6D4BA00CC9A9900000000000000
      00000000000000000000000000000000000000000000BDBDBD00FDF9F500FDF9
      F500FAEFE500EBC29900D88A3C00D0711200D88A3C00EABF9400FCF6F000FFFF
      FF00EEEEEE00BDBDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007474740074747400BEBEBE00F5F5
      F5007E81810042424200000000000000000000000000000000005D5E5F00D5D5
      D500BCBCBC003D3E410066666600E8E8E800F0F0F000F6F6F600333333000508
      8A00333333000000000000000000000000000000000000000000CC9A9900CC9A
      9900CC9A9900FCF3E900FCEADA00FCE5D000CC9A990000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00E6E6
      E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700BDBDBD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3A3A0074747400A5A5
      A5004A4A4A0074747400000000000000000000000000000000007E7E8400A3A4
      A500898989004141410033333300E8E8E800F0F0F000BCBDD800333333003333
      3300000000000000000000000000000000000000000000000000000000000000
      000000000000CC9A9900CC9A9900CC9A99000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C4C4
      C400C4C4C400E6E6E600F7F7F700FFFFFF00F7F7F700E6E6E600BDBDBD00C4C4
      C400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000858585007474
      7400858585000000000000000000000000000000000000000000000000000000
      000000000000414141005D5E5F00A3A4A5006666660045464F00333333000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F5F5F004D4D4D0000000000000000005C5C5C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000000000000000000000000
      000000000000DFDFDF00F6F6F600FCFCFC00F9F9F900E2E2E2008F8F8F000000
      0000535353000000000000000000000000000000000000000000000000000000
      00007E7E7E000000000000000000000000000000000099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900999999008C8C8C00000000007B7B
      7B000000000000000000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D060000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEE
      EE00787878005656560000000000000000000000000000000000B7B7B7004B4B
      4B004B4B4B00333399000000000000000000ACACAC004B4B4B002E2E7200C2C2
      C200000000000000000000000000000000000000000000000000000000000000
      00006C7070008691910099999900A8ACAC00B5B5B50099999900666666006666
      660066666600666666000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C00000000000000000000000000EEEEEE00FFFF
      FF00F6F6F600A9A9A9004D4D4D002222220050505000AFAFAF00FCFCFC00FFFF
      FF00EBEBEB0070707000565656000000000000000000999999004B4B4B003C3C
      5400000099000000990042429F00000000004B4B4B0036365D000000A4000909
      9D00B5B5C0000000000000000000000000000000000000000000000000006C70
      70008A9E9E0086919100A8ACAC00B5B5B500ADADAD00ADADAD005A5A5A005A5A
      5A0066666600666666007B7B7B0000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0028BC3600DFF5E100EEFAEF0063CE6D0009B2190009B2
      190009B3190009BA1A0006670C000000000000000000FCFCFC00FFFFFF00D1D1
      D1002E2E2E00000000000000000000000000000000000000000034343400D7D7
      D700FFFFFF00EBEBEB004D4D4D0000000000ACACAC004B4B4B00333366000000
      990000009900000099000000990046467A004B4B4B00000099000000A4000000
      A4000000A400B5B5C00000000000000000000000000000000000848484007F8B
      8B00CCFFFF0096B9B900838E8E008F929200ADADAD00ADADAD008F9292005A5A
      5A0066666600666666000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425000BB31B0011B421009ADFA000FFFFFF00F7FDF8005ACB650009B2
      190009B2190009B81A0008941300045D090000000000FFFFFF00F9F9F9002020
      20000000000000000000D7D7D700FFFFFF008181810000000000000000003636
      3600FCFCFC00FFFFFF008C8C8C0061616100000000003D3D6200000099000000
      99000000990000009900000099000000990011118A000000A4000000A4000000
      A4000000A4000000A400BEBEC8000000000000000000999999007A848400BAE4
      E400A0C8C800BAE4E400A4CDCD008A9E9E008F929200A8ACAC00A8ACAC006666
      66005A5A5A0056565600A4A4A40000000000087210002AB65B002CC5650022BD
      4D000FB422000AB21A000CB31C000AB219008DDB9500FDFEFD00F6FCF70058CB
      630009B2190009B51A0008AB1700045D0900F6F6F600FCFCFC00989898000000
      00000000000000000000D7D7D700FFFFFF008181810000000000000000000000
      0000B7B7B700FFFFFF00DADADA004D4D4D000000000000000000000099000000
      990000009900000099000000990000009900000099000000A4000000A4000000
      A4000000A4000000A4006666B50000000000000000006C707000B0D5D50096BC
      BC00B1DDDD00A4CDCD00A4CDCD00A4CDCD0097ACAC008C8C8C00A4A4A4009999
      99005A5A5A005A5A5A0072727200000000000F821C0037C26C0033C76C00CDF1
      DA00C9EFD300C7EED000C8EFD200C5EED000C7EECF00F8FDF900FFFFFF00F2FB
      F3006FD2790008B4190009B3190005650B00FFFFFF00FFFFFF003F3F3F000000
      00000000000000000000D7D7D700FFFFFF008181810000000000000000000000
      00005F5F5F00FFFFFF00F4F4F4004A4A4A000000000000000000BCBCC1000000
      99000000990000009900000099000000990000009900000099000000A4000000
      A4000000A4000606A3000000000000000000727272008A9E9E00A4CDCD00B0D5
      D500A4CDCD00A4CDCD00A4CDCD00B1DDDD00BEDFDF00838E8E00838E8E009999
      990084848400848484007272720000000000138D230058CC830042C97700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFD00FFFFFF00FFFF
      FF00BCEAC1000AB41A0009B31900066D0D00FFFFFF00FFFFFF001A1A1A000000
      00000000000000000000D7D7D700FFFFFF008181810000000000000000000000
      00002E2E2E00FCFCFC00F9F9F9004D4D4D000000000000000000000000008080
      8B00000099000000990000009900000099000000990000009900000099000000
      990000009900BEBEC80000000000000000007B7B7B007B7B7B009FBCBC00A0C8
      C800A4CDCD00A4CDCD00A4CDCD00A1BEBE00A4A4A40084848400999999008484
      8400999999007272720099999900999999000F911D006FD293005FD38D006DD4
      950072D6990071D6980072D6990064D28C0092DFA800FBFEFB00FFFFFF00ACE5
      B8002EBF4C0011B82B0008B1190005610A00FCFCFC00FCFCFC003F3F3F000000
      00000000000000000000D7D7D700FFFFFF008181810000000000000000000000
      00004A4A4A00FCFCFC00F6F6F6005C5C5C000000000000000000C2C2C2004B4B
      4B0023236F000000990000009900000099000000990000009900000099000000
      99000C0C930000000000000000000000000000000000A8ACAC006C7070007B7B
      7B00A1BEBE00AACECE00A8ACAC007A84840099999900C5C5C500E6E6E6008F92
      9200999999009999990066666600848484000F911D0067CC83009BE5BA0038C6
      700030C3690038C56F0038C56F0070D69700E8F8EE00FFFFFF009FE2B10020BD
      48001AB93E0010BA290008A3170005610A00F6F6F600FCFCFC00959595000000
      0000000000000000000011111100282828000909090000000000000000000000
      0000A6A6A600FFFFFF00E2E2E2000000000000000000B7B7B7004B4B4B004242
      4D00000099000000990000009900000099000000990000009900000099000000
      99000000990009099D0000000000000000000000000000000000000000009999
      99007B7B7B0072727200A4A4A400A4A4A400DDDDDD00E6E6E600E6E6E600C5C5
      C50084848400A8ACAC00848484006C7070000000000025AE3900BCEDD20082DB
      A40028C063002FC2670053CD8200F7FDF900FFFFFF009CE2B20022BC4B001DBA
      410018B7360014C030000A8517000000000000000000FCFCFC00E5E5E5002020
      20000000000000000000D7D7D700FFFFFF008181810000000000000000002E2E
      2E00F1F1F100FCFCFC00A6A6A6000000000000000000ACACAC003C3C54000000
      9900000099000000990000009900000099000000990000009900000099000000
      990000009900000099006666B500000000000000000000000000000000000000
      0000000000007B7B7B00BEBEBE00D7D7D700DDDDDD00E6E6E600E6E6E600EEEE
      EE00848484008F9292008F929200000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0039C56F00BCECCE00ABE6C2002DC2630024BE560023BC
      4D001FC1460016AE34000A8517000000000000000000F9F9F900FFFFFF00D4D4
      D40022222200000000001111110028282800090909000000000022222200CECE
      CE00FCFCFC00E8E8E8000000000000000000000000000000000079799E000000
      9900000099000000990000009900000099000000990000009900000099000000
      9900000099001F1FA40000000000000000000000000000000000000000000000
      0000000000008484840084848400D7D7D700DDDDDD00E6E6E600E6E6E600D7D7
      D700A4A4A4007B7B7B000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000000000000FFFFFF00FFFF
      FF00E5E5E500989898003C3C3C00141414003939390095959500F1F1F100FFFF
      FF00F4F4F400BABABA0000000000000000000000000000000000000000007373
      A500000099000000990000009900000099008989BB004747A100000099000000
      9900000099000000000000000000000000000000000000000000000000000000
      000000000000000000006C707000ADADAD00B5B5B500999999007B7B7B007272
      72007B7B7B00A4A4A400000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB15700000000000000000000000000000000000000000000000000F9F9
      F900FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00F6F6
      F600D4D4D4000000000000000000000000000000000000000000000000000000
      00009393B80000009900000099008989BB0000000000000000009A9AC0000E0E
      9C00BEBEC8000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900727272007B7B7B0084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6F6F600FCFCFC00FCFCFC00FCFCFC00F6F6F600E5E5E5000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEBEC8008989BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004490600055B0900066C0C00066C0C00055E0A00044C06000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000006600000066
      0000B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B000066
      0000006600000000000000000000000000000000000000000000000000000560
      0900056009000891130009B0180009B31A0009B3190009B11900079614000568
      0C0005680C000000000000000000000000000000000099999900B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B0008F8E8E00ADACAB00B2B1B000B2B1B000B2B1
      B000999999000000000000000000000000000000000000000000000000000000
      0000000000000000990000009900000099000000990000009900000099000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000E5DEDF000066000000660000E4E7E700E0E3E600D9DFE000CCC9CC000066
      0000037D030000660000000000000000000000000000000000000A6A15000A7F
      15000BB61C0009B91A0008B4180007B2160009B3190009B4190009B81A0009B9
      1A0007831000044D060000000000000000000000000099999900FFFCF800FFFC
      F800FFFCF800FFFCF800FFFCF800535354005A5B5D00ECE9E600FFFCF800FFFC
      F800999999000000000000000000000000000000000000000000000000000000
      000000000000000099000000D5000000E0000000E0000000E000000099000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000E9E2E2000066000000660000E2E1E300E2E6E800DDE2E400CFCCCF000066
      0000037D0300006600000000000000000000000000000B6A15000F85220016BD
      340011B727000BB21C0007B1160008B1170009B2190009B2190009B2190009B4
      190009BA1A000784100006670C00000000000000000099999900FFFAF600FFFA
      F600FFFAF600FFFAF600FFFAF600535354004F5D6B006B6F7300E5E1DE00FFFA
      F600999999000000000000000000000000000000000000000000000000000000
      000000000000000099000000D5000000E0000000E0000000E000000099000000
      0000000000000000000000000000000000000000000000660000009900000099
      0000ECE4E4000066000000660000DFDDDF00E1E6E800E0E5E700D3D0D2000066
      0000037D0300006600000000000000000000000000000B6A150020BE49001BBD
      400014B730000AB21F0063CE6D00EEFAEF00DFF5E10028BC360009B2190009B2
      190009B3190009BA1A0006670C00000000000000000099999900FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF005353540082A9D100637B930034525C00E6EC
      E900999999000000000000000000000000000000000000000000000099000000
      990000009900000099000000D5000000E0000000E0000000E000000099000000
      9900000099000000990000000000000000000000000000660000009900000099
      0000EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D2000066
      0000037D0300006600000000000000000000087210001B9A3A002AC65B001DBB
      45000EB425005BCC6600F7FDF800FFFFFF009ADFA00011B4200009B2190009B2
      190009B2190009B81A0008941300045D09000000000099999900FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00EAE3DD003F494B00337A900034525C0006BCEA005491
      9D00999999000000000000000000000000000000000000000000000099000000
      CC000000CC000000D5000000D5000000E0000000E0000000E0000000F1000000
      F1000000FF000000990000000000000000000000000000660000009900000099
      0000009900000099000000990000009900000099000000990000009900000099
      000000990000006600000000000000000000087210002AB65B002CC5650022BD
      4D005CCC6900F6FCF700FDFEFD008EDB950009B21A0009B2190009B2190009B2
      190009B2190009B51A0008AB1700045D09000000000099999900FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00E5DED60033333300199FBA0002D8F90009B8DC001B82
      9B00999999000000000000000000000000000000000000000000000099000000
      CC000000CC000000D5000000D5000000E0000000E0000000E0000000F1000000
      F1000000FF00000099000000000000000000000000000066000000990000B1D0
      B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0B100B1D0
      B100009900000066000000000000000000000F821C0037C26C0033C76C008ADD
      A800F4FCF600FFFFFF00F9FDFA00C7EED200C4EDCC00BFEBC300BFEBC300C0EB
      C400C2ECC60008B4190009B3190005650B000000000099999900FFF3E700FFF3
      E700FFF3E700FFF3E700FFF3E7004E8B8A001F7F860000D6FF0002D8F9000EA4
      C9004C8491000000000000000000000000000000000000000000000099000000
      CC000000CC000000D5000000D5000000E0000000E0000000E0000000F1000000
      F1000000FF00000099000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000138D230058CC830042C97700C9EF
      D800FFFFFF00FFFFFF00FDFFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000AB41A0009B31900066D0D000000000099999900FFF3E700FFF3
      E700FFF3E700FFF3E700FFF3E700C9DCD3003040400002D8F90000E0FF000AB1
      D60021798E000000000000000000000000000000000000000000000099000000
      CC000000CC000000D5000000D5000000E0000000E0000000E0000000F1000000
      F1000000FF00000099000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000F911D006FD293005FD38D0044C9
      7700B7EACB00FFFFFF00FBFEFC009AE2B40058CD79005CCE76005CCD76005CCD
      73005BCD720011B82B0008B1190005610A000000000099999900FFF1E400FFF1
      E400FFF1E400FFF1E400FFF1E400FFF1E4003A717000159FAC0000D6FF0005CD
      ED00148FAE000000000000000000000000000000000000000000000099000000
      990000009900000099000000D5000000E0000000E0000000E000000099000000
      990000009900000099000000000000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000F911D0067CC83009BE5BA0038C6
      700032C36A00AAE6C100FFFFFF00E9F9EF006AD38E0021BD4D001EBC49001EBC
      47001AB93E0010BA290008A3170005610A000000000099999900FFEEDE00FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE0075A8A3002C4E500000D6FF000FD6
      EF00497A85004A808C0000000000000000000000000000000000000000000000
      000000000000000099000000D5000000E0000000E0000000E000000099000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900009900000066000000000000000000000000000025AE3900BCEDD20082DB
      A40028C0630031C26800A4E4BD00FFFFFF00F7FDF90045C86E0020BB4A001DBA
      410018B7360014C030000A851700000000000000000099999900FFEEDE00FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00D3C8BE003B5757006F868A009999
      9900B7BCBD005F76800000000000000000000000000000000000000000000000
      000000000000000099000000D5000000E0000000E0000000E000000099000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900009900000066000000000000000000000000000025AE390071D28C00D2F4
      E10080DAA30036C46D0031C36A00AAE6C100BDECCF0035C4690024BE560023BC
      4D001FC1460016AE34000A851700000000000000000099999900FFEBD800FFEB
      D800FFEBD800FFEBD800FFEBD800FFEBD800D3C8BE0056959500F5F6F700A3BD
      C50045454B0033333300607E8E00000000000000000000000000000000000000
      0000000000000000990000009900000099000000990000009900000099000000
      000000000000000000000000000000000000000000000066000000990000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90000990000006600000000000000000000000000000000000025AE390084D8
      9F00DBF7EA00AFE8C6006BD4930052CC810044C9780049CA7B0048CB780039CB
      6A0021B649000F7C1F0000000000000000000000000099999900FFEBD800FFEB
      D800FFEBD800FFEBD800FFEBD800FFEBD800C9BDB20093A19F003D3F43004545
      4B00484950003D3F430066999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000660000F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F9000066000000000000000000000000000000000000000000000000000025AE
      390025AE3900ADE8C500CCF2DE00BAEDD100A6E7C20091E2B30064D492002FB1
      57002FB157000000000000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990000000000505D66004040
      4500687F8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032B74E0025AE390025AE390025AE390025AE390024A342000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039393B0039393B0039393B0039393B0039393B00000000000000
      000000000000000000000000000000000000000000001AB7CB001AB7CB001AB7
      CB001AB7CB001AB7CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666005151
      5100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000333333000000AB000000AB000000B5000D0DBB006666CC0039393B003939
      3B00000000000000000000000000000000001AB7CB001AB7CB0091EBEE00476C
      6D0043686A001AB7CB001AB7CB001AB7CB001AB7CB00000000000000AD000000
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000004343490000000000000000007B7B7B0051515100555B5B004B52
      5200717979000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3B000000B5000000B5000000B5000000B5000000C5000000C5004D51CD003939
      3B00000000000000000000000000000000006482860066CCCC00232B2B001919
      190033333300333333001AB7CB001AB7CB001AB7CB00000000000000AD000000
      CC00000000002F19380039274500000000000000000000000000000000005050
      5C005D5D6700363641004B4BA90051515100424B4B00424B4B0069828200BCEC
      EC00555F62000000000000000000000000000000000000000000000000000000
      000000000000005C6600005C6600000000009999990099999900999999001515
      1500000000000000000000000000000000000000000000000000000000002F2F
      3A000000BC000000BC000000C5000000C5000008CF000013D2000021D7008D9A
      D00039393B00000000000000000000000000000000004C405000666666004343
      4300080808003333330026262600080808005E5B6000000000000000AD000000
      CC000000000042344F0036243F00000000000000000000000000000000004343
      490030304F0031313A001617AF003A3A3A00637C7C0092BABA0092BABA007184
      84006D7070000000000000000000000000000000000000000000000000000000
      0000005C6600005C6600005C660000000000BCBCBC00BCBCBC00000000000000
      0000000000000000000000000000000000000000000000000000000000002C2C
      3B000000C5000000C5000008CF000013D2000021D700002ADA000035DE001A52
      DE0039393B000000000000000000000000000000000000000000413146005E5B
      6000202020001AB7CB0026262600080808005A5A5A000000000000007C000000
      AD00000000003F30490000000000000000000000000000000000000000000000
      000031313A0031313A00383D5D007EA2A2006A7E7E00666666006D7070000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000526600005266000052660000000000B2B2B200B2B2B200000000000000
      0000000000000000000000000000000000000000000000000000000000002C2C
      3B000008CF00333333000021D700002ADA000038DF00333333002C313D00005A
      EA0039393B000000000000000000000000000000000000000000857E88003C80
      8E0021ACBF001AB7CB001AB7CB001AB7CB001AB7CB0008080800535366000B0B
      1A00000000000000000000000000000000000000000000000000000000003A3A
      3A00393F430021225F002F304700515151000000000000000000000000000000
      0000516E7100556D6E0000000000000000000000000000000000000000000000
      000000526600005266000052660000000000A9A9A900A9A9A900000000000000
      0000000000000000000000000000000000000000000000000000000000002F35
      3E002F353E002C313D000038DF000043E200004DE600739AD9002F353E002F35
      3E005A9DE20039393B00000000000000000000000000000000000000000021AC
      BF001FB3C3001A4C53001AB7CB001AB7CB001AB7CB000808080009090E000909
      0E000000000000000000000000000000000000000000000000003A3A3A00424B
      4B006582820031313A0031313A0031313A000000000000000000000000000000
      00001590A90028696F0000000000000000000000000000000000000000000000
      000000496600004966000084A900000D10009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000333333002C313D00004FE600005AEA000065EE000070F10039393B002F35
      3E00339FF00039393B0000000000000000000000000000000000000000005C5C
      6E000000990000009900262626001010100009090E00000000000000A4000000
      C000000000000000000000000000000000000000000033333300596B6B0082A2
      A200555B5B002929290029292900434343002121210043434300555F62000000
      00002A525C000000000000000000000000000000000000000000000000000000
      0000004966000049660000496600000000009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002F353E000065EE000070F100007CF5000087F9005AABE7003939
      3B002E3940003333330000000000000000000000000000000000000000000000
      99000000990000009900262626001010100009090E00000000000000AD000000
      000000000000191919000000000000000000000000006A7E7E0094B8B8004343
      4300212121001919190033333300515151004343430021212100080808000000
      0000304B4D000000000000000000000000000000000000000000000000000000
      0000004366000043660000436600000000008C8C8C008C8C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C353E000088F9000088F9000099FF0033AEF2003939
      3B000000000039393B0000000000000000000000000000000000000000000000
      99000000990000009900385359002435380008080800291E2F005A5A5A006666
      66001919190026262600000000000000000000000000555B5B00555B5B001919
      1900080808001919190019191900191919000F0F0F000F0F0F000F0F0F00364B
      4B00247272000000000000000000000000000000000000000000000000000000
      0000004366000043660000436600000000008383830083838300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002C383F0000A5FF0000A5FF0040BCEF003939
      3B00000000000000000000000000000000000000000000000000000000005A60
      72005B666D0053606800494B530047545C002D2B410000000000333333005C5C
      6E0042424A004C4C4C0000000000000000000000000000000000000000000F0F
      0F00212121004343430043434300434343003A3A3A00333333002A4141002262
      6200136565002121210019191900333333000000000000000000000000000000
      0000003A6600003A6600003A6600000000007A7A7A007A7A7A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E39400000B5FF0000BDFF00353C3D000000
      0000000000000000000000000000000000000000000000000000000000009C94
      8C0041314600413146004131460000000000000000001E1322001D1921003333
      33005E5B6000B49F9A0000000000000000000000000000000000212121003333
      3300434343003A3A3A003A3A3A002C4A4A002C4A4A0022626200159191002262
      6200333333002121210033333300000000000000000000000000000000000000
      0000003366000033660000000000000000007070700070707000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000333333000DCCFC0039393B000000
      0000000000000000000000000000000000000000000067514C00E9DAD600A19F
      A1003B2A48003B2A48000000000000000000000000000000000034203B003F30
      4900A19FA100F8EAE7007A646000000000003A3A3A00212121003A3A3A003A3A
      3A003A3A3A003A3A3A003A3A3A00285454001685850024565600333333002929
      2900191919000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600666666006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E39400033333300000000000000
      000000000000000000000000000000000000000000007D73710089736F00CEB2
      AD00BFBFC0004C40500000000000000000000000000000000000493C4D00BFBF
      C000DCC5C000BF978F007D737100000000003333330021212100212121002929
      2900333333003333330033333300333333003333330033333300212121002121
      2100000000000000000000000000000000000000000000000000000000000000
      0000010A14000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E39400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C82
      8000EFEFEF00787678000000000000000000000000000000000077757800EFEF
      EF00968F8E009C948C0000000000000000000000000000000000000000005151
      5100212121002121210021212100212121002929290019191900333333000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039393B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5A5A50087878700000000000000000000000000000000008F8F8F00A5A5
      A500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004343430019191900474B4B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000049646B002B5C66002962670027666A002E47480024717100247171004278
      7800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600333333002828
      28004A4A4A008989890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C708C0000000000000000000000000000000000000000003242
      4D002789AF001FA3C40018B9D20014C2D300275C600007ECF20000FFFF0004F2
      F200477A7A000000000000000000000000000000000000000000000000001313
      1300000000000000000000000000000000000000000000000000000000002020
      200000000000000000000000000000000000000000006D6C74006D6C74006D6C
      74006D6C74006D6C74006D6C740073747C005050500066666600B5B2AE00B7B7
      B7007C7C7C00282828005B5E5C0000000000000000000000000082807D008280
      7D0082807D0082807D0082807D0082807D003A98CA00308BB3002A2C3E002D33
      46001D8EBD002075A20000000000000000000000000000000000000000004956
      63002F719F002788B00021A8CD00217D8F00202B2D0012D6E60008EAF10000FF
      FF00217B7C000000000000000000000000000000000015157000202029001313
      13000000000032323A00101087000C0C93000C0C93001F1F6700000000002020
      2000000000000000000000000000000000000000000033333300414140004141
      4000414140004141400041414000747473005B5E5C00F3F3F300EDEDED00E6E6
      E600E0E0E000848484002828280000000000000000000000000083838300D5C9
      BF00ECDDCF00ECDDCF00ECDDCF00ECDDCF0083C6E00011E6F80016C5ED0017CB
      F10011E6F8002F6C8D0000000000000000000000000000000000000000000000
      0000345475003079AD00276781001F1F1D00181211001F7682000EDFF00011C5
      CD007C8181000000000000000000000000000000000000000000000000003939
      42003B3B48000000000000000000000000000000000000000000000000003232
      3A003B3B4800000000000000000000000000000000004A4A4A00FFFAF400FFFA
      F400FFF8EF00FFF8EF00FFF8EF0084848400B5B2AE00F3F3F300000000001A1A
      1A0028282800898989002828280000000000000000000000000083838300CDC4
      BD00CABFB500CABFB500CABFB500CABFB50099ACC20012DDF80010EDF80010ED
      F80012DDF800375270004A4A4A00000000000000000000000000000000000000
      00000000000031404C00190F0B0026354000191E21000E0000001E737D005393
      990000000000000000000000000000000000000000003333A2001B1B9E000A0A
      8D000A0A8D003232B5003232B5000C0CB300000000003232BE000D0DBA000909
      A6002020B0003333A2000000000000000000000000004A4A4A00FFFAF400FFFA
      F400FFFAF400FFFAF400FFFAF40084848400C2C2C200F3F3F30033333300D8D8
      D800A8A7A600D8D8D8003333330000000000000000000000000083838300D5CD
      C600FFF1E400FFF1E400FFF1E400F4E4DB0036A3D30011E6F80011E6F80011E6
      F80011E6F8001EA9D400353A4A005A5A5A000000000000000000000000000000
      000000000000000000004880A400489CD1004281A9002F404B00000000000000
      0000000000000000000000000000000000000000000000009900FFFFFF00FFFF
      FF00FFFFFF00EBEBEB00DDDDDD00F6F6F60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000004A4A4A00FFFCF700FFFC
      F70021921F0056AD5200FFF8EF00A8A7A60089898900F3F3F3001A1A1A00BEBE
      BE00E0E0E000A8A7A6003333330000000000000000000000000083838300CDC4
      BD00CDC4BD00CDC4BD00C3BEB90046AFE10011E6F80010EDF80010EDF80010ED
      F80010EDF80011E6F80025AAE3008598B9000000000000000000000000000000
      0000000000005B91B20063BAEE0056A5D6004D92BA0045759300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000ABA
      E600DDDDDD00000000000000000000000000000000004A4A4A00FFFCF7006699
      66000099000079B97300FFF8EF00F1EDE70066666600B0AFAE0010101000B0AF
      AE00BEBEBE00414140005050500000000000000000000000000083838300D5CD
      C600ECE4DC00ECE4DC00D9D6DA0093C6E4007EC7E70050C1ED0011E6F80011E6
      F800279DCA0073A8C200789DB800000000000000000000000000000000000000
      00000000000065A1C20073C2EE0069B6E1005B9BBF004C86A8005A6063000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A0066996600007F
      00002D952B0006AD0600CEE3C300FFF8EF00DDDBD70074747300282828003333
      33003C3C3C00747473003333330000000000000000000000000083838300D5CD
      C600ECE4DC00ECE4DC00ECE4DC00ECE4DC00ECE4DC00EBDFD6002DCDF30013D7
      F8007D768500BBB4AD0099999900000000000000000000000000000000000000
      00005E5C5A0076B2D10083D0F9007BC6EE0069A7C90063A5CA003D545E000000
      0000000000000000000000000000000000000000000039394200393942003939
      42003939420032323A0032323A0032323A0032323A007C7C7C00000000005555
      A3009999B200424242003A3A3A0000000000000000004A4A4A00789D7600067D
      0600E6EDDF0006AD060017BC1600E6EDDF00FFF8EF00FFF8EF00E5E0DB00B5B2
      AE00D8D2CA00CEC7BD003333330000000000000000000000000083838300CDC7
      C300CDC4BD00CDC4BD00CDC4BD00CDC4BD00CDC4BD00CDC4BD007DB5D4004FAD
      DD00B7AEA600BBB4AD0099999900000000000000000000000000000000002224
      26002D2B290090D0EC009DECFF0095E4FF0080C4E8007BBEDE0040566A002C27
      2D00000000000000000000000000000000000000000000000000000000000000
      00000000000059595F0069697300333333003A3A3A005A5A5A00696973006969
      730066666600191919002C2C2C0000000000000000004A4A4A00FFFFFF00CDE1
      C700B6D0B10039A7370000CC000033CC3300FFF8EF00FFF8EF00FFF8EF00FFF8
      EF00FFF8EF00CEC7BD003333330000000000000000000000000083838300D9D5
      D100FFFAF500FFFAF50087CBF800F7F4F000FFF7F000FFF7F000E8E6ED00D5D8
      EC00FFF4E900BBB4AD0099999900000000000000000000000000000000000000
      000034333500506E84005F7D890057758300577583004C6F81001B2164001B21
      6400000000000000000000000000000000000000000000000000000000000000
      00000000000074747400E8E8E800FFFFFF00FFFFFF00AFAFD7009292DB00E8E8
      E800FFFFFF00FFFFFF009999990099999900000000004A4A4A00FFFFFF00FFFF
      FF00FFFFFF00CDE1C70000CC00000ED60D00FFFAF400FFF8EF00FFF8EF00FFF8
      EF00FFF8EF00CEC7BD003333330000000000000000000000000083838300D9D5
      D100F3F5F6002CA1EE00056BAE0036A2EA00FFF7F000FFF7F000FFF7F000FFF7
      F000FFF7F000BBB4AD0099999900000000000000000000000000000000000000
      000045465E0025245400413C3400514C4A0043443C000C084E00131266000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A64F3300DA6D3F00DD793F00A965550039258B001D14B5007556
      9300EBEAE800EBEAE8004E4C4A0042424200000000004A4A4A00B5B2AE00B5B2
      AE00B5B2AE00B5B2AE0039A7370017C31700B3AFAB00B3AFAB00B3AFAB00B3AF
      AB00B3AFAB00999999003C3C3C0000000000000000000000000083838300D9D7
      D5009BD5FB000D67A300000000000D7DC700C3E2F700FFFAF500666666008280
      7D0082807D0071706E0099999900000000000000000000000000000000000000
      00000000000035385B006463600078787800606860000D0F57003C3B67000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000074747400FFFFFF00FFFFFF008080CC000000A4000000CC000000
      E8003A3A3A006359520047444200000000000000000033333300505050005050
      5000505050005050500050505000169716005050500050505000505050005050
      500050505000505050004141400000000000000000000000000083838300D9D7
      D5008ACFFD000047760000000000005085007DC9FB00FFFAF50066666600CCCC
      CC009999990066666600A9A9A900000000000000000000000000000000000000
      000000000000575964008F8F8D009D9D9E00696B6A0039394B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000074747400FFFFFF00FFFFFF00FFFFFF008080CC000000CC00FFFF
      FF003E3E4B004B4B51000000000000000000000000003333330000CC000000CC
      000000C5000000C5000000C5000000BE000000BE000000BE000000B6000000B6
      000000B6000000B600003333330000000000000000000000000083838300D9D6
      DA004CB7FF001394EB002092DE002092DE007FCAFC00FFFCF80066666600BEBE
      BE00666666009999990000000000000000000000000000000000000000000000
      0000000000000000000085868700C0BFBE006D6C6C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004E4C4A0066666600666666006666660066666600666666006666
      660047444200000000000000000000000000000000003333330000F4280000F2
      260000F2260000F2260000F2260000EE220000EE220000EE220000EA1E0000EA
      1E0000EA1E0000EA1E003333330000000000000000000000000083838300D9D6
      DA00FFFFFF00FFFFFF00FFFFFF00F3F5F600F3F5F600F3F5F600666666006666
      6600999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000757473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300333333003333
      3300333333003333330033333300333333003333330033333300333333003333
      33003333330033333300333333000000000000000000000000007B7B7B007575
      75007B7B7B007B7B7B007B7B7B0082807D0082807D0082807D00666666009999
      990000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F33FFFFF9FFFF00FE007F01F9FFFC003
      C000C007C1FFC00380018003C07FC00300008003803FC00300000001801FC003
      00000001800FC003800000018007C003E0010001C203C003F0030001FF01C003
      F01F0001FF01C003E03F0001FF01C003E03F0001FF01C003C03F8003FF03C007
      C07FC007FF83C00FF8FFE00FFFC7F81FF81FFCDFFFFFFFFFE007F817F7BFFE2F
      C003F003C30FF0038001C0018107E001800180010003C0030000800080018001
      00000000C001800100000000C003000100000000E003000000000000C0078000
      000000018003E000800180018001F80180018003C003F803C003C003E007FC03
      E007E007F0C7FC3FF81FF81FF9FFFFFFFFFFFFFFFFFFF81FFFFFFFFFC007E007
      8007F81F8003C0038007F81F800380018007F81F800380018007C00380030000
      8007C003800300008007C003800300008007C003800300008007C00380030000
      8007C003800300008003F81F800380018003F81F800380018001F81F8003C003
      8001FFFFC007E0078047FFFFFFFFF81FFFFFF83F83C7FFCFFEFFF00F0007FB07
      F8FFE00F0001E0078001E0078001E007E01FE007C003F01FE01FE007C007E0F3
      E01FE003E007C0F3E01FF003E0078017E01FF803E0038017E01FFC0BE0038007
      E01FFE0FE003E000E01FFE1FE183C001E01FFF1F83C10007E01FFF3F83C1000F
      E01FFF7FE3C3E01FFFFFFF7FF3CFFE3FF00FFFFFFF83FFFBE007E7C78001C003
      E00780078001C003F00780038001C001F80F80038001C000FC3F80038001C000
      F83F00038001C001F81F00038001C001F01F80018001C001E00FF8018001C001
      F00FF8008001C001F01FF8008001C001F81FF8018001C001F83FF8038001C003
      FC7FF8078001C007FEFFFFFF8001C00F00000000000000000000000000000000
      000000000000}
  end
  object OpenDocFile: TOpenDialog
    Left = 714
    Top = 8
  end
end