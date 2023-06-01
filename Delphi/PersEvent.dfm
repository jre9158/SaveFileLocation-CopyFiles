object PersonEventForm: TPersonEventForm
  Left = 71
  Top = 51
  Caption = 'PersonEventForm'
  ClientHeight = 479
  ClientWidth = 862
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 479
    Align = alLeft
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 153
      Height = 479
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 0
      object Panel0B: TAlpinePanel
        Left = 0
        Top = 96
        Width = 153
        Height = 323
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
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Select Event'
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
        FullHeight = 0
        object EventTypeBrowse: TAdvStringGrid
          Left = 2
          Top = 22
          Width = 149
          Height = 299
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          Color = clBtnFace
          ColCount = 3
          DefaultRowHeight = 21
          FixedCols = 0
          RowCount = 3
          FixedRows = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
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
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = [fsBold]
          FloatFormat = '%.2f'
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
          SelectionColor = clBtnFace
          SortSettings.DefaultFormat = ssAutomatic
          Version = '7.1.0.1'
        end
      end
      object AlpinePanel2: TAlpinePanel
        Left = 0
        Top = 0
        Width = 153
        Height = 96
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
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Date Range'
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
        FullHeight = 0
        object Label32: TLabel
          Left = 4
          Top = 31
          Width = 36
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Start:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 4
          Top = 55
          Width = 36
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'End:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object StartDateField: TAlpineDateTime
          Left = 44
          Top = 28
          Width = 91
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object EndDateField: TAlpineDateTime
          Left = 44
          Top = 52
          Width = 91
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
      end
      object AlpinePanel3: TAlpinePanel
        Left = 0
        Top = 419
        Width = 153
        Height = 60
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
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Browse Functions'
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
        FullHeight = 0
        object AttendanceButton: TAlpineGlowButton
          Left = 52
          Top = 22
          Width = 49
          Height = 36
          Align = alClient
          Caption = 'Refresh'
          ImageIndex = 108
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
          TabOrder = 0
          OnClick = AttendanceButtonClick
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = clBlack
          Appearance.BorderColorDown = clBlack
          Appearance.BorderColorChecked = clBlack
          Appearance.BorderColorDisabled = clBlack
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
          Layout = blGlyphTop
          GlowSpeed = 0
          ImageName = 'EDIT'
        end
        object UnTagButton: TAlpineGlowButton
          Left = 101
          Top = 22
          Width = 50
          Height = 36
          Hint = 'Select a memorized incident'
          Align = alRight
          Caption = 'Untag'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 107
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = UnTagButtonClick
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
          Layout = blGlyphTop
          GlowSpeed = 0
          ImageName = 'DELETE'
        end
        object TagButton: TAlpineGlowButton
          Left = 2
          Top = 22
          Width = 50
          Height = 36
          Align = alLeft
          Caption = 'Tag'
          ImageIndex = 95
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            424D360500000000000036040000280000001000000010000000010008000000
            000000010000C30E0000C30E0000000100003000000000E7000000D9000000CC
            000000C2000001B3010007AD07000FA90F00159E150002A40200717571000A9C
            0A0069756900208E20000099000066666600048A0400118111002A762A002E75
            2E005B625B0008820800137E13000085000043694300057E0500545F5400286E
            2800545D54004B614B001375130033663300236B23004C5B4C00007800002162
            210039573900395339002D572D0030543000404D40001F5B1F00FF00FF00394D
            39002F4D2F003A413A0021472100353A35003333330000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000002929292929292E292929
            2929292929292929292929191D2429292929292929292929292909220D101929
            29292929292929292909260F0F081F292929292929292929132516142C150526
            292929292929292F2D2116282923040523292929292929291B28182E29200A03
            0617292929292929290E2B2929291A0302062729292929292929292929291C05
            0201071C29292929292929292929291202010011292929292929292929292919
            0601001E2929292929292929292929292A02001E292929292929292929292929
            2912001729292929292929292929292929130C1E292929292929292929292929
            29290B24292929292929292929292929292929292929}
          Position = bpLeft
          TabOrder = 2
          OnClick = TagButtonClick
          Appearance.BorderColor = clBlack
          Appearance.BorderColorHot = clBlack
          Appearance.BorderColorDown = clBlack
          Appearance.BorderColorChecked = clBlack
          Appearance.BorderColorDisabled = clBlack
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
          Layout = blGlyphTop
          GlowSpeed = 0
          ImageName = 'GCHECK'
        end
      end
    end
  end
  object AlpinePanel1: TAlpinePanel
    Left = 153
    Top = 0
    Width = 709
    Height = 479
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
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 22
    Caption.Indent = 2
    Caption.Text = 'Event History'
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
    FullHeight = 0
    object HistoryBrowse: TAlpineTMSStringGrid
      Left = 2
      Top = 22
      Width = 705
      Height = 398
      Cursor = crDefault
      Align = alClient
      BorderStyle = bsNone
      ColCount = 1
      FixedCols = 0
      RowCount = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnDblClick = HistoryBrowseDblClick
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
      SortSettings.Direction = sdDescending
      SortSettings.FixedCols = True
      Version = '7.1.0.1'
      ViewOnly = False
      RowHeights = (
        20)
      object nemsis: TImage
        Left = 264
        Top = 88
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000120B0000120B0000000000000000
          0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF7D625694614B865347FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F4013DD3F00C22300FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF88776A72533CFF00
          FFFF00FF8F3912B56B4EB74F3CFF00FFFF00FF8665696E1E29FF00FFFF00FFFF
          00FFFF00FFFF00FFAD4907E95B00884A20C026FF31ADFF029AFF30ACFF5A6D84
          854744CF0C1EF80126833340FF00FFFF00FFFF00FF71533FDF5200FF6C00D174
          2E0B9DFF000099C9E9FF0000990382EFCC3447FF1228F8002A860922FF00FFFF
          00FFFF00FFFF00FF7F634FB1490451B9FF6FC5FF000099ABABDD000099499FEF
          51B9FFCA0A1F7C3643FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0099
          FFD0ECFF0000993D3DB107079C9EC0EF029AFFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF0199FFDAF0FF0000991111A02727A9A0C1EF
          029AFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7B6556A7480851B9
          FF74C7FF000099ABABDD2727A953A2EF51B9FFBF1120763B44FF00FFFF00FFFF
          00FFFF00FF714B30DC5500FF6B00CF7430049BFF4869CCD9F0FF5F8CDD0E9AFC
          CE3546FF1128F002288E0F25FF00FFFF00FFFF00FF887364D95200F25F00934B
          1BBF26FF32ADFF039AFF32ADFFC026FF8B3E40D70A1FFF012CA40D29FF00FFFF
          00FFFF00FFFF00FF7B553A7B553AFF00FFFF00FF946149DFC8BEB44838FF00FF
          FF00FF855B64790C1EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FF9E3B0AFF6C26EC330DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7B6356905A44835146FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF}
        Proportional = True
        Transparent = True
        Visible = False
      end
      object Training: TImage
        Left = 286
        Top = 88
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF006666660051515100FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0043434900FF00FF00FF00
          FF007B7B7B0051515100555B5B004B52520071797900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0050505C005D5D6700363641004B4BA9005151
          5100424B4B00424B4B0069828200BCECEC00555F6200FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF004343490030304F0031313A001617AF003A3A
          3A00637C7C0092BABA0092BABA00718484006D707000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0031313A0031313A00383D5D007EA2
          A2006A7E7E00666666006D707000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF003A3A3A00393F430021225F002F3047005151
          5100FF00FF00FF00FF00FF00FF00FF00FF00516E7100556D6E00FF00FF00FF00
          FF00FF00FF00FF00FF003A3A3A00424B4B006582820031313A0031313A003131
          3A00FF00FF00FF00FF00FF00FF00FF00FF001590A90028696F00FF00FF00FF00
          FF00FF00FF0033333300596B6B0082A2A200555B5B0029292900292929004343
          43002121210043434300555F6200FF00FF002A525C00FF00FF00FF00FF00FF00
          FF00FF00FF006A7E7E0094B8B800434343002121210019191900333333005151
          5100434343002121210008080800FF00FF00304B4D00FF00FF00FF00FF00FF00
          FF00FF00FF00555B5B00555B5B00191919000808080019191900191919001919
          19000F0F0F000F0F0F000F0F0F00364B4B0024727200FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000F0F0F002121210043434300434343004343
          43003A3A3A00333333002A414100226262001365650021212100191919003333
          3300FF00FF00FF00FF002121210033333300434343003A3A3A003A3A3A002C4A
          4A002C4A4A00226262001591910022626200333333002121210033333300FF00
          FF003A3A3A00212121003A3A3A003A3A3A003A3A3A003A3A3A003A3A3A002854
          54001685850024565600333333002929290019191900FF00FF00FF00FF00FF00
          FF00333333002121210021212100292929003333330033333300333333003333
          330033333300333333002121210021212100FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00515151002121210021212100212121002121
          2100292929001919190033333300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004343
          430019191900474B4B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00}
        Transparent = True
        Visible = False
      end
      object ems: TImage
        Left = 241
        Top = 88
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007D6256009461
          4B0086534700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009F401300DD3F
          0000C2230000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0088776A0072533C00FF00FF00FF00FF008F391200B56B
          4E00B74F3C00FF00FF00FF00FF00866569006E1E2900FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00AD490700E95B0000884A2000FF00FF00883D1800C889
          7100C4442C00775F5C0085474400CF0C1E00F801260083334000FF00FF00FF00
          FF00FF00FF0071533F00DF520000FF6C0000FF6C0000C4510300E24F0600B976
          5C00B3584600DD271100FA1D1D00FF122800F8002A0086092200FF00FF00FF00
          FF00FF00FF00FF00FF007F634F00B1490400FF660000FF660000D6400000A787
          7900E37F6D00FF260E00FF202100CA0A1F007C364300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00894D2400F7620000C9561700C3B9
          B500D33E2100FF2D1600A9252500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00834D2900F4620000F65B0A00C199
          8A00A1584600F92814009A272700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF007B655600A7480800FF650000FF650000BD350000AD9C
          9500DBA69A00F8281100FF1F2000BF112000763B4400FF00FF00FF00FF00FF00
          FF00FF00FF00714B3000DC550000FF6B0000FF6B0000C346000094573E00CCCA
          C900D25B4300DD2A1200FC1E1C00FF112800F00228008E0F2500FF00FF00FF00
          FF00FF00FF0088736400D9520000F25F0000934B1B00FF00FF00988C8800BEB0
          AC00B7442F00FF00FF008B3E4000D70A1F00FF012C00A40D2900FF00FF00FF00
          FF00FF00FF00FF00FF007B553A007B553A00FF00FF00FF00FF0094614900DFC8
          BE00B4483800FF00FF00FF00FF00855B6400790C1E00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009E3B0A00FF6C
          2600EC330D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007B635600905A
          440083514600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00}
        Transparent = True
        Visible = False
      end
      object incident: TImage
        Left = 219
        Top = 88
        Width = 16
        Height = 16
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0039393B0039393B003939
          3B0039393B0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00333333000000AB000000AB000000
          B5000D0DBB006666CC0039393B0039393B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0039393B000000B5000000B5000000B5000000
          B5000000C5000000C5004D51CD0039393B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002F2F3A000000BC000000BC000000C5000000
          C5000008CF000013D2000021D7008D9AD00039393B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002C2C3B000000C5000000C5000008CF000013
          D2000021D700002ADA000035DE001A52DE0039393B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002C2C3B000008CF00333333000021D700002A
          DA000038DF00333333002C313D00005AEA0039393B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF002F353E002F353E002C313D000038DF000043
          E200004DE600739AD9002F353E002F353E005A9DE20039393B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00333333002C313D00004FE600005A
          EA000065EE000070F10039393B002F353E00339FF00039393B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002F353E000065EE000070
          F100007CF5000087F9005AABE70039393B002E39400033333300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C353E000088
          F9000088F9000099FF0033AEF20039393B00FF00FF0039393B00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C38
          3F0000A5FF0000A5FF0040BCEF0039393B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002E39
          400000B5FF0000BDFF00353C3D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00333333000DCCFC0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002E39400033333300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF002E394000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00}
        Transparent = True
        Visible = False
      end
    end
    object AlpinePanel4: TAlpinePanel
      Left = 2
      Top = 420
      Width = 705
      Height = 57
      Align = alBottom
      BevelOuter = bvNone
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
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 22
      Caption.Indent = 2
      Caption.Text = 'Points and Length Totals'
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
      FullHeight = 0
      object Label1: TLabel
        Left = 6
        Top = 33
        Width = 75
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Event Counts'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 166
        Top = 33
        Width = 75
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Event Length'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 332
        Top = 33
        Width = 70
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Attend Length'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 484
        Top = 33
        Width = 70
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Event Point'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object TotalField: TAlpineEdit
        Left = 86
        Top = 30
        Width = 70
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 7
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify, efoTrimBlanks]
        ParentFont = False
        PictureMask = '9999999'
        TabOrder = 0
        RightAlign = True
        CurrentPos = -1
        Text = '-    --'
      end
      object EVLengthField: TAlpineEdit
        Left = 246
        Top = 30
        Width = 70
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 7
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify, efoTrimBlanks]
        ParentFont = False
        PictureMask = '9999999'
        TabOrder = 1
        RightAlign = True
        CurrentPos = -1
        Text = '-    --'
      end
      object AttLengthField: TAlpineEdit
        Left = 409
        Top = 30
        Width = 70
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 7
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify, efoTrimBlanks]
        ParentFont = False
        PictureMask = '9999999'
        TabOrder = 2
        RightAlign = True
        CurrentPos = -1
        Text = '-    --'
      end
      object EVPointField: TAlpineEdit
        Left = 560
        Top = 30
        Width = 70
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 7
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify, efoTrimBlanks]
        ParentFont = False
        PictureMask = '9999999'
        TabOrder = 3
        RightAlign = True
        CurrentPos = -1
        Text = '-    --'
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
    Top = 8
  end
end
