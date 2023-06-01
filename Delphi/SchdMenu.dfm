object SchdMenuForm: TSchdMenuForm
  Left = 236
  Top = 151
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Manpower System'
  ClientHeight = 380
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object ButtonBox: TPanel
    Left = 0
    Top = 344
    Width = 489
    Height = 36
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object PreviewButton: TAlpineGlowButton
      Left = 2
      Top = 2
      Width = 162
      Height = 32
      Align = alLeft
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 91
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000C30E0000C30E0000000100003B000000CFC4B700CABFB200C9BE
        B200C5BAAE00C4B9AD00BEB4A800BAB0A500B5ABA100B3A99F00AEA49A00AAA1
        9800A59C93009D958C0098908800948D85008F88810089837B00DC9E00008781
        7A00817C75007E7973004E8A4800D49200007C7771008B7C4B0078736E007671
        6B00CB860000726E68008672530084724A00836C5600836B5800C37C00006666
        66007F645C007F6360007D694A00625F5B00BB71000076604A005F5B58005C5A
        5600B26500006F574A00684D4A00AA5A0000FF00FF00A2500000A14E00009A45
        000098430000913A000033333300882E0000882D00007F220000802200007716
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002F2F2F2F2F2F35353535
        352F2F2F2F2F2F2F2F2F2F35060B0F1A29352F2F2F2F2F2F2F2F2F3535353535
        29352F2F2F2F2F2F2F2F2F2F35061035352F2F2F2F2F2F353535353535353535
        35353535352F350B0B0D0E0F101014191C1C15142A35350A2020201D1D1D1D1D
        1D1818182635350922282828282525251E1E1E2222353507223432302E2B2721
        1B1611222235350622363433312E2B27211B16221C3535052239363433312E2B
        27211B2219353503223A38373433312E2B27212217353501222D2D2D2C2C2C28
        282825221335350024242323232323201F1F1F1F12353500000204050608090A
        0B0C0D0E0F352F35353535353535353535353535352F}
      Position = bpLeft
      TabOrder = 0
      OnClick = PreviewButtonClick
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
      ImageName = 'MONITOR'
    end
    object CloseButton: TAlpineGlowButton
      Left = 325
      Top = 2
      Width = 162
      Height = 32
      Align = alRight
      Cancel = True
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
      TabOrder = 1
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
    object PrintButton: TAlpineGlowButton
      Left = 164
      Top = 2
      Width = 161
      Height = 32
      Align = alClient
      Caption = 'Print'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
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
      Position = bpMiddle
      TabOrder = 2
      OnClick = PreviewButtonClick
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
  end
  object Panel1: TPanel
    Left = 209
    Top = 0
    Width = 280
    Height = 344
    Align = alRight
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 2
    object ReportGrid: TAlpineTMSStringGrid
      Left = 1
      Top = 1
      Width = 278
      Height = 342
      Cursor = crDefault
      Align = alClient
      BorderStyle = bsNone
      Color = clWhite
      ColCount = 1
      FixedCols = 0
      RowCount = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedHorzLine, goColSizing, goColMoving, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnClick = ReportGridClick
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      BackGround.Top = 100
      BackGround.Left = 200
      BackGround.Display = bdFixed
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
      FixedColWidth = 68
      FixedRowHeight = 22
      FixedRowAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      MouseActions.NoScrollOnPartialRow = True
      Navigation.AllowDeleteRow = True
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
      SearchFooter.SearchColumn = 5
      SortSettings.AutoSortForGrouping = False
      SortSettings.DefaultFormat = ssAutomatic
      SortSettings.Show = True
      SortSettings.IndexShow = True
      SortSettings.Full = False
      SortSettings.AutoFormat = False
      SortSettings.NormalCellsOnly = True
      Version = '7.1.0.1'
      ViewOnly = False
      ColWidths = (
        68)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 344
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    object PaidBox: TGroupBox
      Left = 2
      Top = 54
      Width = 205
      Height = 216
      Align = alClient
      Caption = 'Scheduling'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label23: TLabel
        Left = 5
        Top = 140
        Width = 151
        Height = 14
        AutoSize = False
        Caption = 'Assignment'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 5
        Top = 199
        Width = 151
        Height = 14
        AutoSize = False
        Caption = 'Station'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ShiftLabel: TLabel
        Left = 5
        Top = 90
        Width = 151
        Height = 14
        AutoSize = False
        Caption = 'Group'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 5
        Top = 42
        Width = 151
        Height = 14
        AutoSize = False
        Caption = 'Personnel ID#'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object SchdShiftIDField: TAlpineLookup
        Left = 5
        Top = 69
        Width = 151
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
        TabOrder = 1
        TabStop = True
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'SCHDSHIFTID'
        DisplayField = 'DESCR'
        ReferencingTable = 'SCHDSHIFT'
        ReferencingField = 'SCHDSHIFTNAMEID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'SCHDSHIFT'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object PersIDField: TAlpineLookup
        Left = 5
        Top = 19
        Width = 151
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
        TabOrder = 0
        TabStop = True
        ImageName = 'DOWNARROW'
        PictureMask = '!!!!!!!!'
        EditWidth = 65
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
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'PERS'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object SchdLocIDField: TAlpineLookup
        Left = 5
        Top = 178
        Width = 151
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
        PictureMask = '!!!!!!!!'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'SCHDLOCID'
        DisplayField = 'CODE'
        ReferencingTable = 'SCHDLOC'
        ReferencingField = 'SCHDLOCID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'CODEDESCR'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object SchdRankIDField: TAlpineLookup
        Left = 5
        Top = 120
        Width = 151
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
        TabOrder = 2
        TabStop = True
        ImageName = 'DOWNARROW'
        PictureMask = '!!!!!!!!'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'SCHDRANKID'
        DisplayField = 'CODE'
        ReferencingTable = 'SCHDRANK'
        ReferencingField = 'SCHDRANKID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'CODEDESCR'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
    end
    object DateBox: TGroupBox
      Left = 2
      Top = 270
      Width = 205
      Height = 72
      Align = alBottom
      Caption = 'Date Period to Include'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object InitialDateLabel: TLabel
        Left = 1
        Top = 22
        Width = 55
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Initial Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object FinalDateLabel: TLabel
        Left = 1
        Top = 47
        Width = 55
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Final Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object InitDate: TAlpineDateTime
        Left = 58
        Top = 19
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object FinalDate: TAlpineDateTime
        Left = 58
        Top = 44
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
    end
    object FdidBox: TGroupBox
      Left = 2
      Top = 2
      Width = 205
      Height = 52
      Align = alTop
      Caption = 'Agency'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object FdidField: TAlpineLookup
        Left = 5
        Top = 20
        Width = 185
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
        EditWidth = 65
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'FDID'
        DisplayField = 'FDID'
        ReferencingTable = 'FDID'
        ReferencingField = 'FDID'
        ReturnField = 'DEPTNAME'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clMaroon
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'FDIDDISP'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
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
    Left = 360
    Top = 2
  end
end
