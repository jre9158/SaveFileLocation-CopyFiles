object NISetForm: TNISetForm
  Left = 17
  Top = 37
  Caption = 'Non-Incident Setup'
  ClientHeight = 631
  ClientWidth = 1071
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object NIPage: TPageControl
    Left = 211
    Top = 0
    Width = 860
    Height = 603
    ActivePage = TrainCat1Tab
    Align = alClient
    Images = LargeIcons
    TabOrder = 0
    object TypeTab: TTabSheet
      Caption = 'Events Types'
      ImageIndex = 9
      OnShow = TypeTabShow
      ExplicitTop = 24
      ExplicitHeight = 575
      object Splitter2: TSplitter
        Left = 214
        Top = 0
        Width = 5
        Height = 558
        AutoSnap = False
        Color = clBtnFace
        ParentColor = False
      end
      object NISTypeBrowse: TAlpineBlockBrowse
        Left = 219
        Top = 0
        width = 633
        height = 558
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
        Caption.Color = clBlack
        Caption.ColorTo = clNone
        Caption.CloseColor = clBlack
        Caption.Flat = True
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Secondary Event Type'
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
        OnBeforeDelete = NISTypeBrowseBeforeDelete
        SearchFooter = False
        ExplicitHeight = 575
        FullHeight = 189
      end
      object NIPTypeBrowse: TAlpineBlockBrowse
        Left = 0
        Top = 0
        width = 214
        height = 558
        Align = alLeft
        BevelOuter = bvLowered
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
        Caption.ColorTo = clNone
        Caption.CloseColor = clBlack
        Caption.Flat = True
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Primary Type'
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
        OnBeforeDelete = NIPTypeBrowseBeforeDelete
        OnGridClick = NIPTypeBrowseGridClick
        SearchFooter = False
        ExplicitHeight = 575
        FullHeight = 189
      end
    end
    object TableTab: TTabSheet
      Caption = 'Codes and Sub Tables'
      ImageIndex = 11
      OnShow = TableTabShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SubTableBrowse: TAlpineBlockBrowse
        Left = 214
        Top = 0
        width = 638
        height = 558
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
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Sub Table Data'
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
        SearchFooter = False
        ExplicitHeight = 575
        FullHeight = 189
      end
      object AdvPanel2: TAdvPanel
        Left = 0
        Top = 0
        Width = 214
        Height = 558
        Align = alLeft
        BevelOuter = bvLowered
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11876608
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.2.1.0'
        BorderColor = clWhite
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Select Sub Table'
        Caption.TopIndent = 2
        Caption.Visible = True
        ColorTo = clBtnFace
        Indent = 6
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FullHeight = 50
        object TableBrowse: TAlpineTMSStringGrid
          Left = 1
          Top = 21
          Width = 212
          Height = 536
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
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnClick = TableBrowseClick
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
          FixedRowHeight = 22
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          MouseActions.NoScrollOnPartialRow = True
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
          Version = '7.1.0.1'
          ViewOnly = False
        end
      end
    end
    object FieldTab: TTabSheet
      Caption = 'Fields Setup'
      ImageIndex = 16
      OnShow = FieldTabShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvPanel1: TAdvPanel
        Left = 214
        Top = 0
        Width = 638
        Height = 558
        Align = alClient
        BevelOuter = bvLowered
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11876608
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UseDockManager = True
        Version = '2.2.1.0'
        BorderColor = clWhite
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Non Incident Field List'
        Caption.TopIndent = 2
        Caption.Visible = True
        ColorTo = clBtnFace
        Indent = 6
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FullHeight = 50
        object NIFieldListBrowse: TAlpineTMSStringGrid
          Left = 1
          Top = 21
          Width = 636
          Height = 507
          Cursor = crDefault
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          ColCount = 1
          FixedCols = 0
          RowCount = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnClick = NIFieldListBrowseClick
          OnKeyDown = NIFieldListBrowseKeyDown
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
          FixedRowHeight = 22
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
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
          Version = '7.1.0.1'
          ViewOnly = False
        end
        object AdvPanel4: TAdvPanel
          Left = 1
          Top = 528
          Width = 636
          Height = 29
          Align = alBottom
          BevelOuter = bvLowered
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
          ExplicitTop = 545
          FullHeight = 0
          object Label1: TLabel
            Left = 145
            Top = 7
            Width = 317
            Height = 14
            AutoSize = False
            Caption = 
              'Press Toggle or the space bar to turn on or off the selected fie' +
              'ld.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object FieldToggleButton: TAlpineGlowButton
            Left = 1
            Top = 1
            Width = 69
            Height = 27
            Align = alLeft
            Caption = 'Toggle'
            ImageIndex = 109
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
            OnClick = FieldToggleButtonClick
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
          object FieldEditButton: TAlpineGlowButton
            Left = 70
            Top = 1
            Width = 69
            Height = 27
            Align = alLeft
            Caption = 'Caption'
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
            Position = bpRight
            TabOrder = 1
            OnClick = FieldEditButtonClick
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
          object StandardButton: TAlpineGlowButton
            Left = 566
            Top = 1
            Width = 69
            Height = 27
            Align = alRight
            Caption = 'Load Basic'
            ImageIndex = 109
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
            TabOrder = 2
            OnClick = StandardButtonClick
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
        end
      end
      object AdvPanel3: TAdvPanel
        Left = 0
        Top = 0
        Width = 214
        Height = 558
        Align = alLeft
        BevelOuter = bvLowered
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 11876608
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Version = '2.2.1.0'
        BorderColor = clWhite
        Caption.Color = clBlack
        Caption.ColorTo = clBlack
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Height = 22
        Caption.Indent = 2
        Caption.Text = 'Select Primary Type'
        Caption.TopIndent = 2
        Caption.Visible = True
        ColorTo = clBtnFace
        Indent = 6
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FullHeight = 50
        object FieldPTypeGrid: TAlpineTMSStringGrid
          Left = 1
          Top = 21
          Width = 212
          Height = 536
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
          Options = [goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
          OnClick = FieldPTypeGridClick
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
          FixedRowHeight = 22
          FixedRowAlways = True
          FixedFont.Charset = DEFAULT_CHARSET
          FixedFont.Color = clWindowText
          FixedFont.Height = -11
          FixedFont.Name = 'Tahoma'
          FixedFont.Style = []
          FloatFormat = '%.2f'
          MouseActions.NoScrollOnPartialRow = True
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
          Version = '7.1.0.1'
          ViewOnly = False
        end
      end
    end
    object TrainCat1Tab: TTabSheet
      Caption = 'Training and Drill Types'
      ImageIndex = 10
      OnShow = TrainCat1TabShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object NITrainCATControl: TAdvPageControl
        Left = 0
        Top = 0
        Width = 852
        Height = 558
        ActivePage = NITrainCATReqSetTab
        ActiveFont.Charset = DEFAULT_CHARSET
        ActiveFont.Color = clWindowText
        ActiveFont.Height = -11
        ActiveFont.Name = 'Tahoma'
        ActiveFont.Style = [fsBold]
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        RaggedRight = True
        DefaultTabColor = 10790052
        DefaultTabColorTo = clSilver
        ActiveColor = clWhite
        ActiveColorTo = clBtnFace
        TabBorder3D = True
        TabBorderColor = clBtnFace
        TabSheetBorderColor = clBtnFace
        TabHoverColor = clInfoBk
        TabHoverColorTo = clWhite
        TabHoverBorder = clInactiveBorder
        TabBackGroundColor = clBtnFace
        TabMargin.LeftMargin = 10
        TabMargin.TopMargin = 2
        TabMargin.RightMargin = 0
        TabOverlap = 0
        RoundEdges = True
        TabStyle = tsDotNet
        Version = '2.0.0.4'
        PersistPagesState.Location = plRegistry
        PersistPagesState.Enabled = False
        TabHeight = 24
        TabOrder = 0
        ExplicitHeight = 575
        object NITrainCATTypeTab: TAdvTabSheet
          Caption = 'Training Groups'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = 10790052
          TabColorTo = clSilver
          OnShow = NITrainCATTypeTabShow
          ExplicitHeight = 541
          object NITrainRepBrowse: TAlpineBlockBrowse
            Left = 0
            Top = 257
            width = 844
            height = 267
            Align = alBottom
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
            Caption.Color = clBlack
            Caption.ColorTo = clNone
            Caption.Flat = True
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clHighlightText
            Caption.Font.Height = -11
            Caption.Font.Name = 'Arial'
            Caption.Font.Style = [fsBold]
            Caption.GradientDirection = gdVertical
            Caption.Height = 22
            Caption.Indent = 2
            Caption.Text = 'Training Report Setup'
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
            SearchFooter = False
            ExplicitTop = 274
            FullHeight = 189
          end
          object NITrainCatTypeBrowse: TAlpineBlockBrowse
            Left = 0
            Top = 0
            width = 844
            height = 257
            Align = alClient
            BevelOuter = bvLowered
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
            Caption.ColorTo = clNone
            Caption.Flat = True
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clHighlightText
            Caption.Font.Height = -11
            Caption.Font.Name = 'Arial'
            Caption.Font.Style = [fsBold]
            Caption.GradientDirection = gdVertical
            Caption.Height = 22
            Caption.Indent = 2
            Caption.Text = 'Sub Table Data'
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
            SearchFooter = False
            ExplicitHeight = 274
            FullHeight = 189
          end
        end
        object NITrainCAT1Tab: TAdvTabSheet
          Caption = 'Training Courses'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = 10790052
          TabColorTo = clSilver
          OnShow = NITrainCAT1TabShow
          ExplicitHeight = 541
          object NITrainCat1Browse: TAlpineBlockBrowse
            Left = 0
            Top = 0
            width = 844
            height = 524
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
            Caption.Color = clBlack
            Caption.ColorTo = clBlack
            Caption.Flat = True
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clHighlightText
            Caption.Font.Height = -11
            Caption.Font.Name = 'Arial'
            Caption.Font.Style = [fsBold]
            Caption.GradientDirection = gdVertical
            Caption.Height = 22
            Caption.Indent = 2
            Caption.Text = 'Training Courses'
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
            SearchFooter = False
            ExplicitHeight = 541
            FullHeight = 189
            object SearchButton: TAlpineGlowButton
              Left = 363
              Top = 496
              Width = 70
              Height = 28
              Caption = 'Search'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 104
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
              Position = bpRight
              TabOrder = 0
              OnClick = SearchButtonClick
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
          end
        end
        object NITrainCatReqTab: TAdvTabSheet
          Caption = 'Training Requirements'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = 10790052
          TabColorTo = clSilver
          OnShow = NITrainCatReqTabShow
          ExplicitHeight = 541
          object NITrainCatReqBrowse: TAlpineBlockBrowse
            Left = 0
            Top = 0
            width = 844
            height = 524
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
            Caption.Color = clBlack
            Caption.ColorTo = clBlack
            Caption.Flat = True
            Caption.Font.Charset = ANSI_CHARSET
            Caption.Font.Color = clHighlightText
            Caption.Font.Height = -11
            Caption.Font.Name = 'Arial'
            Caption.Font.Style = [fsBold]
            Caption.GradientDirection = gdVertical
            Caption.Height = 22
            Caption.Indent = 2
            Caption.Text = 'Training Requirements'
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
            SearchFooter = False
            ExplicitHeight = 541
            FullHeight = 189
          end
        end
        object NITrainCATReqSetTab: TAdvTabSheet
          Caption = 'Training Requirements Grid'
          Color = clBtnFace
          ColorTo = clNone
          TabColor = 10790052
          TabColorTo = clSilver
          OnShow = NITrainCATReqSetTabShow
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object AdvPanel5: TAdvPanel
            Left = 0
            Top = 0
            Width = 844
            Height = 524
            Align = alClient
            BevelOuter = bvLowered
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 11876608
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
            Caption.Height = 22
            Caption.Indent = 2
            Caption.Text = 
              'Training Requirements Grid (Press the Space Bar to Toggle the Re' +
              'quirements)'
            Caption.TopIndent = 2
            Caption.Visible = True
            ColorTo = clBtnFace
            Indent = 1
            StatusBar.Font.Charset = DEFAULT_CHARSET
            StatusBar.Font.Color = clWindowText
            StatusBar.Font.Height = -11
            StatusBar.Font.Name = 'Tahoma'
            StatusBar.Font.Style = []
            FullHeight = 50
            object NITrainCATReqSetBrowse: TAlpineTMSStringGrid
              Left = 2
              Top = 22
              Width = 840
              Height = 500
              Cursor = crDefault
              Align = alClient
              BorderStyle = bsNone
              ColCount = 1
              Ctl3D = False
              RowCount = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Options = [goVertLine, goHorzLine]
              ParentCtl3D = False
              ParentFont = False
              ScrollBars = ssBoth
              TabOrder = 0
              OnDblClick = NITrainCATReqSetBrowseDblClick
              OnKeyDown = NITrainCATReqSetBrowseKeyDown
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
              FixedRowHeight = 22
              FixedRowAlways = True
              FixedColAlways = True
              FixedFont.Charset = DEFAULT_CHARSET
              FixedFont.Color = clWindowText
              FixedFont.Height = -11
              FixedFont.Name = 'Tahoma'
              FixedFont.Style = []
              Flat = True
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
              ExplicitLeft = -2
              ExplicitTop = 26
            end
          end
        end
      end
    end
    object ASCTab: TTabSheet
      Caption = 'Correct Secondary Types'
      ImageIndex = 4
      OnShow = ASCTabShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object ASCNISTypeBrowse: TAlpineTMSStringGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 416
        Cursor = crDefault
        Align = alClient
        BorderStyle = bsNone
        ColCount = 1
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnDblClick = ASCNISTypeBrowseDblClick
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
        FixedRowHeight = 20
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        MouseActions.NoScrollOnPartialRow = True
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
        Version = '7.1.0.1'
        ViewOnly = False
        RowHeights = (
          20)
      end
      object Panel1: TPanel
        Left = 0
        Top = 416
        Width = 852
        Height = 142
        Align = alBottom
        BevelOuter = bvLowered
        Caption = ' '
        TabOrder = 1
        object Label11: TLabel
          Left = 443
          Top = 27
          Width = 132
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Original NISTYPEID Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 443
          Top = 73
          Width = 132
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'New NISTYPEID Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 443
          Top = 6
          Width = 132
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Original NIPTYPEID Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 443
          Top = 52
          Width = 132
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'New NIPTYPEID Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LoadNITrainCat1Label: TLabel
          Left = 443
          Top = 96
          Width = 132
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Load Into NITRAINCAT1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 443
          Top = 116
          Width = 132
          Height = 14
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date Range'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DeleteNISTYPEButton: TAlpineGlowButton
          Left = 111
          Top = 40
          Width = 97
          Height = 30
          Caption = 'Delete Secondary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
          TabOrder = 5
          OnClick = DeleteNISTYPEButtonClick
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
        object RefreshButton: TAlpineGlowButton
          Left = 7
          Top = 6
          Width = 201
          Height = 30
          Caption = 'Refresh Secondary Types'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 116
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006666
            660051515100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0043434900FF00FF00FF00FF007B7B7B0051515100555B
            5B004B52520071797900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0050505C005D5D6700363641004B4BA90051515100424B4B00424B4B006982
            8200BCECEC00555F6200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF004343490030304F0031313A001617AF003A3A3A00637C7C0092BABA0092BA
            BA00718484006D707000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0031313A0031313A00383D5D007EA2A2006A7E7E00666666006D70
            7000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF003A3A3A00393F430021225F002F30470051515100FF00FF00FF00FF00FF00
            FF00FF00FF00516E7100556D6E00FF00FF00FF00FF00FF00FF00FF00FF003A3A
            3A00424B4B006582820031313A0031313A0031313A00FF00FF00FF00FF00FF00
            FF00FF00FF001590A90028696F00FF00FF00FF00FF00FF00FF0033333300596B
            6B0082A2A200555B5B002929290029292900434343002121210043434300555F
            6200FF00FF002A525C00FF00FF00FF00FF00FF00FF00FF00FF006A7E7E0094B8
            B800434343002121210019191900333333005151510043434300212121000808
            0800FF00FF00304B4D00FF00FF00FF00FF00FF00FF00FF00FF00555B5B00555B
            5B0019191900080808001919190019191900191919000F0F0F000F0F0F000F0F
            0F00364B4B0024727200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000F0F0F00212121004343430043434300434343003A3A3A00333333002A41
            41002262620013656500212121001919190033333300FF00FF00FF00FF002121
            210033333300434343003A3A3A003A3A3A002C4A4A002C4A4A00226262001591
            910022626200333333002121210033333300FF00FF003A3A3A00212121003A3A
            3A003A3A3A003A3A3A003A3A3A003A3A3A002854540016858500245656003333
            33002929290019191900FF00FF00FF00FF00FF00FF0033333300212121002121
            2100292929003333330033333300333333003333330033333300333333002121
            210021212100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00515151002121210021212100212121002121210029292900191919003333
            3300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF004343430019191900474B4B00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 6
          OnClick = RefreshButtonClick
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
          ImageName = 'TRAINING'
        end
        object EditNISTypeButton: TAlpineGlowButton
          Left = 111
          Top = 74
          Width = 97
          Height = 30
          Caption = 'Edit NISTYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 108
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
          TabOrder = 7
          OnClick = EditNISTypeButtonClick
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
        object UpdateButton: TAlpineGlowButton
          Left = 220
          Top = 40
          Width = 161
          Height = 64
          Caption = '&Update Code:  Original Code -> New Code'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 108
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
          TabOrder = 8
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
          ImageName = 'EDIT'
        end
        object OldButton: TAlpineGlowButton
          Left = 220
          Top = 6
          Width = 161
          Height = 30
          Caption = '&Load OLD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 29
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360300000000000036000000280000001000000010000000010018000000
            000000030000C30E0000C30E00000000000000000000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFA9AEB1A8ACAFAAAFB2FF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9FA2A49FA0A0AAAAAAB1B1
            B1AAAAAA9E9F9FA0A3A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF8D8D8DA9A9A9C1C1C1C8C8C8C9C9C9C8C8C8C0C0C0A7A7A78E8E8FFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF868687B6B6B6E6E6E6E6E6E6E2E2E2E2E2
            E2E3E3E3E7E7E7E4E4E4AEAEAE868787FF00FFFF00FFFF00FFFF00FF8F929496
            9696BABABAEFEFEFF1F1F1FFFFFFFFFFFFFFFFFFF1F1F1EBEBEBB0B0B0969696
            939798FF00FFFF00FFFF00FF7B7B7C9C9C9C9C9C9C8D8D8DBDBDBDFEFEFEFFFF
            FFF9F9F9AFAFAF8E8E8E9E9E9E9B9B9B7D7E7EFF00FFFF00FF9A9EA17373738E
            8F8F898989B5B5B5FFFFFFFFFFFFFEFEFEFFFFFFFAFAFAA8A8A8898A8A8E8E8E
            717171A0A6A8FF00FF8D91936868687E7E7EB3B3B3FFFFFFE7E7E7CCCCCCFFFF
            FFBEBEBEF4F4F4FDFDFDA4A4A47F7F7F666666969B9DFF00FF94989B61616185
            8585BEBEBEE2E2E28C8D8DB5B5B5FFFFFF9999999B9B9BE6E6E6AEAEAE838383
            5D5D5D9CA1A4FF00FFFF00FF747575B0B0B0A5A5A59E9E9E909090C5C5C5FFFF
            FFADADAD9494949D9D9DA5A5A5AEAEAE757676FF00FFFF00FFFF00FF848789BC
            BCBCCECECEC9C9C9C1C1C1D8D8D8FFFFFFC6C6C6C6C6C6C8C8C8CFCFCFB9B9B9
            888B8DFF00FFFF00FFFF00FFFF00FF959595E6E6E6DEDEDED6D6D6E2E2E2FFFF
            FFD2D2D2DBDBDBDFDFDFE4E4E4959696FF00FFFF00FFFF00FFFF00FFFF00FFA1
            A6A9A3A3A3E8E8E8F6F6F6E8E8E8E9E9E9E7E7E7F7F7F7E5E5E5A1A2A2A8AEB1
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9FA1B8B9B9D1D1D1D7D7
            D7D1D1D1B6B7B79B9FA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFA3AAAD9BA0A29CA0A29BA0A2A6ADB0FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 9
          OnClick = OldButtonClick
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
          ImageName = 'DOWNLOAD'
        end
        object DeleteNIPTypeButton: TAlpineGlowButton
          Left = 7
          Top = 40
          Width = 97
          Height = 30
          Caption = 'Delete Primary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
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
          TabOrder = 10
          OnClick = DeleteNIPTypeButtonClick
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
        object OldNIPTypeIDField: TAlpineLookup
          Left = 579
          Top = 3
          Width = 261
          Height = 25
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          TabStop = True
          ImageName = 'DOWNARROW'
          PictureMask = '!!!!!!!!'
          EditWidth = 60
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'NIPTYPEID'
          DisplayField = 'NIPTYPEID'
          ReferencingTable = 'NIPTYPE'
          ReferencingField = 'NIPTYPEID'
          ReturnField = 'CODE'
          ReturnFieldFont.Charset = ANSI_CHARSET
          ReturnFieldFont.Color = clMaroon
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'NIPTYPE'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object NewNIPTypeIDField: TAlpineLookup
          Left = 579
          Top = 49
          Width = 261
          Height = 25
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          TabStop = True
          ImageName = 'DOWNARROW'
          PictureMask = '!!!!!!!!'
          EditWidth = 60
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'NIPTYPEID'
          DisplayField = 'NIPTYPEID'
          ReferencingTable = 'NIPTYPE'
          ReferencingField = 'NIPTYPEID'
          ReturnField = 'CODE'
          ReturnFieldFont.Charset = ANSI_CHARSET
          ReturnFieldFont.Color = clMaroon
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'NIPTYPE'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object OldNISTypeIDField: TAlpineLookup
          Left = 579
          Top = 24
          Width = 261
          Height = 25
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          TabStop = True
          ImageName = 'DOWNARROW'
          PictureMask = '!!!!!!!!'
          EditWidth = 60
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DisplayField = 'NISTYPEID'
          ReferencingTable = 'NISTYPE'
          ReferencingField = 'NISTYPEID'
          ReturnField = 'CODE'
          ReturnFieldFont.Charset = ANSI_CHARSET
          ReturnFieldFont.Color = clMaroon
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'NISTYPE'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object NewNISTypeIDField: TAlpineLookup
          Left = 579
          Top = 70
          Width = 261
          Height = 25
          BorderStyle = bsNone
          Color = clBtnFace
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
          TabStop = True
          ImageName = 'DOWNARROW'
          PictureMask = '!!!!!!!!'
          EditWidth = 60
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DisplayField = 'NISTYPEID'
          ReferencingTable = 'NISTYPE'
          ReferencingField = 'NISTYPEID'
          ReturnField = 'CODE'
          ReturnFieldFont.Charset = ANSI_CHARSET
          ReturnFieldFont.Color = clMaroon
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'MS Sans Serif'
          ReturnFieldFont.Style = []
          LookupCode = 'NISTYPE'
          TreeLookMinimumCharacters = 0
          StandardLookup = False
          LookupCaption = 'RedNMX System'
        end
        object EditNIPTypeButton: TAlpineGlowButton
          Left = 7
          Top = 74
          Width = 97
          Height = 30
          Caption = 'Edit NIPTYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 108
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
          TabOrder = 11
          OnClick = EditNIPTypeButtonClick
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
        object LoadNITrainCat1Field: TAlpineCheckBox
          Left = 579
          Top = 92
          Width = 14
          Height = 21
          Alignment = taLeftJustify
          ButtonType = btClassic
          Caption = ' '
          ReturnIsTab = False
          TabOrder = 4
          TabStop = True
          Transparent = True
          Version = '1.6.0.0'
          ValueChecked = 'Y'
        end
        object InitialDateField: TAlpineDateTime
          Left = 578
          Top = 113
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          TabOrder = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object FinalDateField: TAlpineDateTime
          Left = 674
          Top = 113
          Width = 95
          Height = 25
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          TabOrder = 13
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
      end
    end
  end
  object FdidPanel: TAdvPanel
    Left = 0
    Top = 0
    Width = 211
    Height = 603
    Align = alLeft
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
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
    Caption.Font.Height = -11
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 22
    Caption.Indent = 2
    Caption.Text = 'Select Agency'
    Caption.TopIndent = 2
    Caption.Visible = True
    ColorTo = clBtnFace
    Indent = 1
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 50
    object FDIDBrowse: TAlpineTMSStringGrid
      Left = 2
      Top = 22
      Width = 207
      Height = 579
      Cursor = crDefault
      Align = alClient
      BorderStyle = bsNone
      ColCount = 1
      DefaultRowHeight = 25
      FixedCols = 0
      RowCount = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnClick = FDIDBrowseClick
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
      FixedRowHeight = 25
      FixedRowAlways = True
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FloatFormat = '%.2f'
      MouseActions.NoScrollOnPartialRow = True
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
      Version = '7.1.0.1'
      ViewOnly = False
    end
  end
  object BaseBottomPanel: TAdvPanel
    Left = 0
    Top = 603
    Width = 1071
    Height = 28
    Align = alBottom
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
    object Gauge: TGauge
      Left = 1
      Top = 1
      Width = 917
      Height = 26
      Align = alClient
      BackColor = clBtnFace
      BorderStyle = bsNone
      Progress = 0
      Visible = False
      ExplicitLeft = 0
      ExplicitTop = 624
      ExplicitWidth = 1028
      ExplicitHeight = 11
    end
    object CloseButton: TAlpineGlowButton
      Left = 994
      Top = 1
      Width = 76
      Height = 26
      Align = alRight
      Caption = 'Close'
      ImageIndex = 101
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
      Position = bpRight
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
    object PrintButton: TAlpineGlowButton
      Left = 918
      Top = 1
      Width = 76
      Height = 26
      Align = alRight
      Caption = 'Print'
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
      Position = bpLeft
      TabOrder = 1
      OnClick = PrintButtonClick
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
  object LargeIcons: TImageList
    Height = 32
    Width = 32
    Left = 71
    Top = 24
    Bitmap = {
      494C0101150048008C0020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDC5C800ABB2B500979DA0008D92
      95008D9295009DA3A500B0B7BA00C2C9CD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B9BD008F877C008D643A008A5B
      2C008A5B2C008566490092918D00B7BEC2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C9CD00A1A09C0091643800B66E3000C776
      3400C1733200B06B2E0087582900B3B9BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDC5C80097897800A46E3B00D48C4C00D48C
      4C00D48C4C00D48C4C008B5D2D00B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C9CD0098877300B57F4800DB9F6300DB9F
      6300DB9F6300CB9157008D643A00BDC5C8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C4CCD000C4CCD000C4CCD0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1958600A87C4B00DFA97000DFA9
      7000DFA97000A87C4B009F907D00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B5B500936A4100D8965900D896
      5900CC8D5200936A4100BBC0C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A7F6300A76C3500D083
      4200A76C35009C876F00C4CCD000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BBC0C2008D613400B367
      280091643800B2B2AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3B0AA008D64
      3A00906E4900BDC5C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB9F
      8F00AB9F8F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4C7CE0072A5
      B60072AEBF0072AEBF006C9BAA007298A30086A9B400A9CDD900D2DADD00C4CC
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C4CCD000BBC0
      C200BDC5C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A2D8E700A7E5
      F700A7E5F700A7E5F70099D8E90072B3C70051829000597D8700A0C1CC00C9D5
      D900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C2C9CD009DA3A5006A6E7000585D
      5F005D6061008D929500BBC0C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A6C5D000A6DDEE00B0E7
      F600B0E7F600ADE0EF0072A5B6005C92A20054818D004F686F007F949A00C4CC
      D000BDC5C8008D9295006A6E70006E7274006A6E70008D929500B3B9BD00C4CC
      D00000000000000000000000000000000000999FA200333333004A4A4A005458
      5900545859006E72740075797B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B2E0ED00B2E0ED00A6DD
      EE00ADE0EF009BC7D3006B95A200597D870028373C003A4345005D6061008589
      8B005D6061004A4A4A005252530052525300595A5A006A6E70006A6E7000A6AC
      AE00C4CCD0000000000000000000000000008D9295004A4A4A00595A5A005252
      5300595A5A00999999008D929500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C1D7DE0091CEE0006597A700628E
      9A007CAEBD00598A99004A6974002C3233003333330052525300666666006A6E
      7000585D5F00585D5F0054585900666666007272720072727200999FA2008C8C
      8C00AAB0B3000000000000000000000000008D929500666666006A6E70009999
      9900A6A8A9004A4A4A006A6E7000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5CFDC00597E890047646C004F68
      6F00617B82001C343A001B2427003C3C3C00525253008C8C8C00999999009291
      8D008C8C8C00A5A5A500A5A5A5008D9295008C8C8C008C8C8C0099999900595A
      5A008D9295006A6E70006666660066666600585D5F0075797B008C8C8C006666
      66005D60610075797B006E727400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B95A20047646C004A6974005471
      7B004F686F001122260028282800585D5F006666660042424200424242004A4A
      4A004A4A4A004242420042424200424242004242420042424200424242004242
      42004A4A4A0099999900858585007A7B7C008C8C8C0092918D00424242003C3C
      3C004A4A4A00B3B9BD00797E8000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000577781004A697400597E89006289
      960054717B00112226002C32330042424200424242008D929500A5A5A500A1A0
      9C00A1A09C00A6A8A900B5B5B500BFBFBF00C5C5C500C5C5C500BFBFBF00A1A0
      9C005D6061003C3C3C004A4A4A004A4A4A004A4A4A0033333300666666009999
      9900B5B5B500B5B5B500A6A8A900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054717B004A6974005B859200628E
      9A0064828B0013262B00282828002C323300A1A09C00CED6D600DDDEDE00D7D7
      D700DDDEDE00E6E6E600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00DDDE
      DE00CCCCCC00B2B2AF009DA3A5009999990099999900A5A5A500ACADAE00ACAD
      AE00A6A8A90099999900C2C9CD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000054717B0054717B00628E9A006B95
      A200648691001F3439001A272B002C32330075797B009DA3A500ACADAE00B5B5
      B500BFBFBF00CCCCCC00D7D7D700CCCCCC00CCCCCC00EFEFEF00DDDEDE00CCCC
      CC00ACADAE00999999008C8C8C00858585008585850085858500858585008589
      8B009CA5AD00C2C9CD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B777F005B777F006B95A2006C9B
      AA006486910039525800233A410028373C00545859006A6E7000666666007A7B
      7C00858585009999990085858500666666004A4A4A00333333007C818400979D
      A000BDC5C8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000617B8200577781006B95A2006DA1
      B100628E9A00526E770029424A00527A8500617B82004F5D61007A7B7C00B7BE
      C200979DA00092918D006A6E70004A4A4A003C3C3C002828280054585900C2C9
      CD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006C838A00527A85006BABBD0074BB
      D0006EB0C4004E7C8A003A5860003A58600078A3AF0064828B00B4C7CE00C4CC
      D000C4CCD00020202000000000000000000000000000000000002C3233000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0B0B70054717B005C92A20072B3
      C70072AEBF005B8592004F686F0064869100B3DBE7009EB9C200C9D5D900C4CC
      D000C4CCD00066666600585D5F00727272003333330019191900797E80000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C2D6DD00C2D6DD00B5CE
      D600B5CED600B5CED600C2D6DD00B4C7CE00B4C7CE0000000000BCC8CE00BDC5
      C800BDC5C800C4CCD0009DA3A5006A6E70003C3C3C00979DA000C2C9CD00BDC5
      C800BDC5C800C4CCD00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCCBD000BCCBD000BCCB
      D000BCCBD000BCCBD000BCCBD00000000000C4CCD000A6ACAE00A6ACAE008D92
      9500A6ACAE00979DA0008D92950052525300525253007C818400A6ACAE006E72
      74007C818400B0B7BA00C4CCD000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BCCBD000BCCB
      D000BCCBD000BCCBD0000000000000000000B5BDC00066666600ACADAE00CCCC
      CC00D7D7D700B5B5B500A1A09C00CCCCCC00DDDEDE0099999900B5B5B500C5C5
      C500DDDEDE0066666600BBC0C200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3B9BD00A1A09C00D7D7D7005D60
      6100333333005252530092918D005D6061002020200042424200A1A09C006666
      660019191900A6A8A900B7BEC200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDC5C8009DA3A5002C323300FFFF
      FF00EFEFEF005458590054585900ACADAE007A7B7C006A6E70006A6E7000CED6
      D600FFFFFF00999FA200C2C9CD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4CCD000C4CCD000C4CCD000BDC5C800B3B9BD00ABB2
      B500B0B7BA00BBC0C200BBC0C200B5BDC000B5BDC000BDC5C800B5BDC000B0B7
      BA00B0B7BA00BDC5C80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C8199001D72
      8F001D728F001C6F8B001C6F8B001B6C87001B6C87001A6983001A6983003877
      8B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008ACF
      D0005EBCBD0040AEAF002DA2A3004FB2B300C5E6E70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACAEAF00666666004D657500185A8500185A850059646B006666
      66006D6C6A0099999900727373006D6C6A00787A7B007E7F81007E7F81007E7F
      81007E7F81007E7F8100A2A19D00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E7896001E78
      96001D7592001D7592001D7592001C718D001C718D001B6E89001B6E89001B6E
      8900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7D9DA00149B
      9D00149B9D00149B9D0040AEAF00149B9D0015A4A6005EC2C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFA62000FFA62000FFAC
      3000EFB05100EFB05100EFB35A00EFB35A00EFB35A00E7B87000DFB98000DFB9
      8000DFB98000BFA986006D6C6A004C6F87001B6A9D00226A9A00666666006666
      66006D6C6A009999990072737300727373007E7F81008A8B8B0099999900A4A5
      A500ACAEAF00ACAEAF00928F8C00ADADB5000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F7D9C001F7D
      9C00257691003D4040000C0C0C000C0C0C001E20200025687F001C718D001C71
      8D00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000040AEAF001393
      9400149B9D00128F910032A8AA00159FA00015A4A60015A4A60025ADAE00D4EE
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFAB2C00FFAB2C00FFAB
      2C00FFAB2C00FFAF3800FFAF3800FFB34100FFB34100FFB64900FFB64900FFB9
      5100FFB95100E3AF61006666660060758200197CBE00387EAC00666666006666
      66006D6C6A00999999007F7B7400C0ACA000C0ACA000A5989000CDBEB500B9B0
      AB00C7BAB200C9C1BC0099999900ACAEAF000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002081A200257A
      960042424300262626006C6C6C00575757000C0C0C000C0C0C0026748D001D74
      9100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4EEEF00149B9D001393
      9400139394001393940015A4A60015A4A60015A4A60016ADAF0016ADAF0024AC
      AD00A8DDDE000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E6E6E600D6D6D600D6D6
      D600E6E6E600E6E6E600EFEFEF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFAC3000FFAC3000FFAF
      3800FFAF3800FFB34100FFB34100FFB64900FFB64900FFB95100FFB95100FFBD
      5900FFBD5900E3AF610066666600727373004981A5006588A000666666006666
      66006D6C6A009999990072737300D8AD9400DFB59D00A5989000FFC8A500B9B0
      AB00E7BDA500F8C8AD0099999900ACAEAF000000000000000000000000000000
      00000000000000000000000000000000000000000000808080002286A800384B
      520005050500B4B4B400A7A7A700818181004D4D4D000303030026363B001E79
      9700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007CCCCD00149B9D00128F
      9100149B9D0044B9BA0019B3B50019A5AD00159FA0001185860019A5AD0019A5
      AD0019A5AD00A8DDDE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00E6E6E600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00DEDEDE00DEDEDE00E6E6
      E600EFEFEF00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFAF3800FFAF3800FFB3
      4100FFB34100FFB64900FFB64900FFB95100FFB95100FFBD5900FFBD5900FFC0
      6100FFC06100DFB16B006666660072737300817F7D0089878700666666006666
      66006D6C6A00999999006D6C6A00AA918400AF9B8F00928F8C00DFB59D00A4A5
      A500D6B9A900E5C4B10099999900ACAEAF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000238BAD003A3E
      3F0018181800CECECE00A7A7A700818181005B5B5B0007070700121516001F7D
      9D00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000024A8AA00128F91001393
      9400159FA00041C7C90018BDBF0018B7B900149B9D00128C8D00118688001186
      880015A4A60015A4A600B7E1E200000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00E6E6E600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D6D6
      D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00E6E6E600EFEFEF00F7F7
      F700F7F7F7000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFB34100FFB34100FFB6
      4900FFB64900FFB95100FFB95100FFBD5900FFBD5900FFC06100FFC06100FFC0
      6100FFC56D00EDB96D0066666600727373008080800089878700666666006666
      66006D6C6A009999990078736F0078736F00817F7D00928F8C0099999900ADA5
      A500BDB5AF00C9C1BC0099999900ACAEAF000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000248FB3002F34
      360014141400BBBBBB00A7A7A700818181005656560004040400131617002081
      A200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B7E6E600159FA000128C8D00149B
      9D0019A5AD0019C0C20019C0C20019B3B50013939400139394000F737400128C
      8D0015A4A60015A4A60024A8AA00D4EEEF000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE00DEDEDE00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600E6E6E600E6E6E600EFEFEF00EFEFEF00F7F7F7000000
      00000000000000000000000000000000000000000000FFB64900FFB64900FFB9
      5100FFB95100FFBD5900FFBD5900FFC06100FFC06100FFC06100FFC56D00FFC5
      6D00FFC56D00AF9A7B006666660078736F007E7F81008A8B8B00666666006666
      66006D6C6A00999999006B737600656E74006F787D007E7F810051778F003871
      96003B759B003B759B00387196004F7C99000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002594B9000A15
      1800282828004C4C4C00A0A0A000797979002424240006060600192326002286
      A800808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006EC9CB00149B9D00128F9100159F
      A00032BDBF0018BDBF0018BDBF0019B3B50013939400149B9D000F7374000944
      440015A4A60015A4A600159FA0002DA2A3000000000000000000000000000000
      000000000000000000000000000000000000D6D6D600DEDEDE00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00E6E6E600EFEFEF000000000000000000FFB95100BF8E46008F6A
      32009F763A00BF914C00CF9D5200F7BD6600BF9658008F6F3F009F7D4A00BF96
      5800CFA5650063818600275D8100787A7B006B7376007997970079838300605D
      5E006D6C6A008EA09D002F729E001B6A9D001B6A9D001B6A9D002774A700267A
      B400197CBE00197CBE004981A500B3B7B9000000000000000000000000000000
      00000000000000000000000000000000000000000000808080002698BE001555
      6A001B1B1B00212121000A0A0A000A0A0A000A0A0A000A0A0A00205C7000238B
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000024ACAD00139394001393940019A5
      AD003DC8CA0018BDBF001AC9CB0017B0B200128F9100159FA0000F7374000B57
      580018BDBF001BD0D200149B9D00128F91000000000000000000000000000000
      000000000000000000000000000000000000CECED700DEDEDE00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E6E6E6000000000000000000FFBD5900BF8E46007F60
      30007F6030007F6030007F603000DFAD6300BF9658007F6641007F6641007F66
      41007F664100D4B07A001A5E8B005C788800545A5500354949008EA09D00605D
      5E006D6C6A008EA09D002E75A400196CA4001F73AB001F73AB001F76B1002179
      B4002580BD002473A70090A1AC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000279DC400279D
      C4000F3C4B00000101001A1A1A00151515000102020015404E002491B5002491
      B500808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B7E6E600159FA000128F9100159FA00015A4
      A60025C7C90019C4C60019C4C60017B0B200128C8D0015A4A600107A7B00107A
      7B0017B0B2001CD9DB00149B9D00128F91000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC00D6D6D600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00A3A3BD006969A1008A8A9B0093939C00A8A8
      AE00CCCCCC00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E6E6E6000000000000000000FFC06100BF914C007F60
      30007F6339007F6339007F633900DFB16B00BF9658007F6641007F6641007F66
      41007F664100DFB98000D3BD93002B698E004D65750077918E00607E8B006666
      66006D6C6A008EA09D002E75A400196CA4001F73AB001F73AB001F73AB002179
      B4002473A700819BAC0000000000000000000000000000000000000000000000
      000080808000000000008080800000000000000000008080800028A2CA0028A2
      CA0028A2CA00228AAC0016586E0016586E002186A7002697BD002697BD002594
      B900000000000000000000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005FC4C500149B9D0018B7B9001393940026B1
      B30019C4C60019C4C60019C4C60019A5AD00128C8D0017B0B2000B5454000D67
      680019A5AD0028E0E300149B9D00149B9D000000000000000000000000000000
      000000000000000000000000000000000000C4C4C500D6D6D600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC008989C6000000CC000000CC000000CC000000
      CC00373784005C5C750043436E00CCCCCC00D6D6D600CCCCCC009D9DB300BCBC
      BD00ADADAD00C4C4C500DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E6E6E6000000000000000000FFC56D00DFAD6300AF89
      4E009F7D4A007F6641007F664100DFB57500DFB57500AF8F5F009F8359007F6A
      4B007F6A4B00DFBB8500FFD79A00D0BE9D00376583004A788D00275D81006666
      66006D6C6A008EA09D002F729E001B6A9D001B6A9D004A788D0040799E004079
      9E00819BAC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002AA6D0002AA6
      D00029A3CC0029A3CC003492B2003385A000279DC400279DC400279DC4002699
      BF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000015A4A60015A4A600128F9100128F91003DBC
      BD0019C4C6001AC9CB0018BDBF0015A4A600159FA00011868800000000000944
      4400159FA00030E1E300159FA000149B9D000000000000000000000000000000
      000000000000000000000000000000000000C4C4C500D6D6D600CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00ADADD8001A1AAD006565BA008585DA007272
      DD009C9CDD00B6B6D6000000CC00A4A4A400D6D6D6006D6DB1000000CC00ADAD
      D8000000CC0074748800DEDEDE00DEDEDE008E8EBD00A8A8AE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E6E6E6000000000000000000FFC67100FFC67100FFCB
      7D00FFCB7D00FFCB7D00F7C98200F7C98200FFD28E00FFD28E00FFD59600FFD5
      9600F7D19900F7D19900FFDCA700FFDCA7005A8092001B629200376583006666
      66006D6C6A00A2A19D00A3A38C008F9581009C9A7E00FBC97C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080002BABD5002BAB
      D5003E89A1002A2A2B0005050500050505001415150036738800289FC600289F
      C600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8DDDE0015A4A60015A4A600107F8100107F810026B1
      B30019C0C20019C4C60018B7B90015A4A60018B7B900107A7B00000000000944
      4400159FA00041E4E600159FA000149B9D000000000000000000000000000000
      000000000000000000000000000000000000BCBCBD00CECED700CECED700CECE
      D700B7B7CC0069699600D6D6D600ADADDD0035359100D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D6007979DE005E5E8F00CCCCCC001C1CB2001D1DC900ADAD
      AD000000CC006C6C8F00DEDEDE00DEDEDE007979DE0038387600DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E6E6E6000000000000000000FFCB7D00BF9658008F73
      49009F835900BF9D6A00CFAA7300F7CC8D00BFA070008F7956009F876300BFA4
      7C00D1B27B00F7D6A500FFDFAE00FFDFAE00FFE2B600DACEB300989988006666
      6600796F690099999900D1B27B00E7B87000FBC97C00EFC78C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002CAFDB003095
      B600303030003C3C3C0091919100767676001A1A1A00090909003796B50028A2
      CA00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005EBCBD0015A4A60020A5A60021939400128C8D00149B
      9D0019B3B5001CD5D7001EDFE10030E1E3001BCCCE0019C4C600000000000944
      440018B7B90051E6E80015A4A600159FA0000000000000000000000000000000
      000000000000000000000000000000000000B6B6B600CCCCCC00CECED7001A1A
      93002727AF008484A500D6D6D600ADADDD0035356100D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600BABAE4000F0FCC009D9DD5000000CC007D7DBA00A4A4
      A4000000CC006C6C8F00DEDEDE00DEDEDE008B8BE10039397F00DEDEDE00DEDE
      DE00E6E6E600E6E6E600E6E6E6000000000000000000FFCE8300BF9B64007F67
      43007F6A4B007F6A4B007F6A4B00DFBB8500C2A477007F6D51007F6D51007F6D
      51007F6F5700DFC49C00FFE2B600FFE2B600FFE5BF00FFE5BF0024648C003D65
      7D004D6575003871960024648C00C29F6A00F0C37F00EFCA9200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080002DB4E1003C49
      4E000D0D0D00C5C5C500A7A7A700818181005151510003030300212B2F002AA6
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005ECCCD0018B7B90015A4A600149B9D00149B9D001186
      8800107F810015A4A60041E4E6005AE7E9006DEAEC006DEAEC001CD5D70015A4
      A6001AC9CB0061E8EA0015A4A60015A4A6000000000000000000000000000000
      000000000000000000000000000000000000ADADAD00CCCCCC00D6D6D6007979
      DE008484A500D6D6D600D6D6D600ADADDD002A2A7E0093939C00ADADAD00ADAD
      AD00C4C4C500D6D6D600D6D6DE000000CC000F0FCC000F0FB300DEDEDE00DEDE
      DE000000CC006C6C8F00DEDEDE00DEDEDE008B8BE10039397F00DEDEDE00AAAA
      B600DEDEE700E6E6E600E6E6E6000000000000000000FFD28E00BF9D6A007F6A
      4B007F6A4B007F6A4B007F6A4B00DFBF8E00BFA47C007F6F57007F6F57007F6F
      57007F6F5700DFC7A400FFE5BF00FFE5BF00FFE5BF00FFEACB00AAAC9B00185A
      850012649B001B71AA0094877400BFA07000EFC78C00EFCD9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002EB9E7003A3E
      40001B1B1B00CECECE00A7A7A700818181005B5B5B0007070700171C1E002BAB
      D600808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CDEDF0015A4A60015A4A60015A4A600159F
      A000107F81001186880016ADAF0051E6E80081EDEE0094F0F100A3F2F20028E0
      E3001DDEE00073EBEC00149B9D0019A5AD000000000000000000000000000000
      000000000000000000000000000000000000A8A8AE00CCCCCC00CCCCCC00D6D6
      D600AFAFE4004F4F6D00D6D6D600ADADD8000000CC000000CC000000CC000000
      CC0093939C00D6D6D600DEDEDE007272DD000000CC0055559B00DEDEDE00DEDE
      DE000000CC006C6C8F00DEDEDE00DEDEDE008B8BE10039397F00DEDEDE009C9C
      A7001D1D8A00E6E6E600E6E6E6000000000000000000FFD28E00DFBB8500AF94
      6A009F8763007F6D51007F6D5100DFC49C00DFC49C00AF9A7B009F8B6D007F71
      5B007F715B00DFCAAB00FFEACB00FFEACB00FFEACB00FFEACB00BEBAA400185A
      85001B6292004E7D9600BFA47C00C2A47700EFCA9200EFCD9900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080002FBDEC00262D
      2F0011111100B3B3B300A7A7A700818181005454540003030300161C1E002CB0
      DC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C6ECEC0015A4A60015A4A60015A4A600149B
      9D00107F8100149B9D0018B7B9001CD9DB004AE5E70094F0F100A3F2F2009AF0
      F10041E4E6008CEEEF00149B9D0015A4A6000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400C4C4C500CECED700CECE
      D700CECED700C5C5DC00D6D6D600ADADD8000D0DB0007373D6007C7CD9000000
      CC009D9DB300D6D6D600D6D6D6009191D8000000CC009898A400DEDEDE00DEDE
      DE000000CC006C6C8F00DEDEDE00DEDEDE008B8BE10039397F00E6E6E600E6E6
      E600C4C4C5007272DD00C8C8EA00F7F7F70000000000FFD79A00FFD79A00FFDA
      A300FFDAA300FFDAA300F7DAAD00F7DAAD00FFE2B600FFE2B600FFE5BF00FFE5
      BF00F7E3C500F7E3C500FFECCF00FFECCF00FFEFD700FFEFD700F7DDB5005A80
      92001A5E8B0099999900FFDCA700FFDCA700FFDCA700EFD5AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030C2F2000D22
      290037373700323232008E8E8E006E6E6E00181818000C0C0C0020343B002DB4
      E100808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CDEDF0015A4A600159FA000139394001185
      86001393940019B3B5001BD0D20030E1E3004AE5E70061E8EA006DEAEC0078EC
      ED003AE3E500107F810011868800159FA0000000000000000000000000000000
      000000000000000000000000000000000000A4A4A400C4C4C500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600ADADDD0036369200D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D6001A1AC2000000CC0079798600DEDEDE00C4C4
      C5000000CC006C6C8F00DEDEDE00DEDEDE008B8BE10039397F00E6E6E600BCBC
      BD004848BB000E0E91009D9DD500F7F7F70000000000FFDAA300BFA47C008F7C
      60009F8B6D00BFA98600CFB79500F7DDB500BFAC8F008F826D009F917C00BFAF
      9500CFC0A800F7E6CC00FFEFD700FFEFD700FFF1DD00FFF1DD00FFE7C3009999
      990031597100D1C8AF00FFE0B200FFE0B200FFE0B200EFD5AD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800032C6F8002597
      BC000F1010003333330004040400040404001A1A1A00080909002D97BB002EB9
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000070D9DA0015A4A60013939400128C8D00A2D5
      D50033B4B60019C4C60028E0E30041E4E60061E8EA0073EBEC005AE7E9001AC9
      CB0019B3B500149B9D000F737400139394000000000000000000000000000000
      0000000000000000000000000000000000009A9A9D00C4C4C500D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600ADADDD0035356100D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D6008E8EBD000000CC000F0FCC002E2E7F00C4C4C500B6B6
      B6000000CC006C6C8F00DEDEDE00DEDEDE008B8BE10039397F00E6E6E6009393
      9C0066669900E6E6E600E6E6E600F7F7F70000000000FFDFAE00BFA783007F6F
      57007F715B007F715B007F715B00DFCAAB00BFAF95007F7463007F7463007F74
      63007F786D00DFD1BC00FFF1DD00FFF1DD00FFF5E600FFF5E600ECD9BC00675F
      510024242100C2AF9300DFC7A400E8CFA700FFE0B200EFD8B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000008080800000000000000000000000000033CBFD0033CB
      FD002184A500010304000000000000000000050708002686A60030BFEF0030BF
      EF00808080000000000000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000053D4D500159FA000139394002DA2A3000000
      00000000000081EDEE003AE3E5005AE7E90078ECED0061E8EA004AE5E70018B7
      B900139394001D9FA100107F8100128C8D000000000000000000000000000000
      00000000000000000000000000000000000094959800BCBCBD00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600ADADDD00111184003535610060608A006C6C
      8F00A8A8AE00D6D6D6003636B2000F0FCC007D7DBA000000CC00B7B7CC00B9BA
      BC000000CC006C6C8000DEDEDE00DEDEDE005252C50039397F00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600F7F7F70000000000FFE0B200BFA986007F71
      5B007F715B007F715B007F746300DFCDB200BFB19B007F786D007F786D007F78
      6D007F786D00DFD5C700FFF5E600FFF5E600FFF8EE00FFF8EE00DACEB3001E1C
      19000B0B090094877400C2B19500C2B19500EFD8B400EFD8B400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800030CFFF0030CF
      FF0030CFFF0033CBFE002185A7002185A70032C6F80032C6F80032C6F80030C2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000053D4D500159FA000149B9D004EAFB0000000
      00000000000000000000D4F9F90081EDEE006DEAEC0051E6E80028E0E30016AD
      AF001393940015A4A60036C0C20021999A000000000000000000000000000000
      0000000000000000000000000000000000008C949400BCBCBD00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600CDCDDE000000CC000000CC000000CC000000
      CC007272CF00ACACC1000000CC006A6AC300D6D6DE007979DE005F5FCC00B6B6
      B6000000CC006C6C8F00D6D6D600CCCCCC003B3BAE0039396500E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600F7F7F70000000000FFE5BF00DFC7A400AF9B
      8F009F917C007F7463007F746300DFD1BC00DFD1BC00AFA596009F978B007F7B
      74007F7B7400DFD5C700FFF8EE00FFF8EE00FFFCF800FFFCF800FFF1DD00504C
      44001E1C1900C2B39C00C2B39C00C2B39C00ECD9BC00F0DEC300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002BD4FF002BD4
      FF002BD4FF0030CFFF003B84C6003B84C60033CBFE0033CBFE0032C8FA0032C8
      FA00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000053D4D50015A4A60013939400219394000000
      000000000000000000000000000000000000A3F2F20041E4E6001AC9CB00149B
      9D001393940016ADAF0028E0E30071EAEC000000000000000000000000000000
      000000000000000000000000000000000000898A8E00B9BABC00D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600C1C1D200B6B6D600ADAD
      DD00C1C1E000B7B7DF005454D500CECED700DEDEDE00D6D6ED001C1CCF00ADAD
      AD000000CC007272CF003939CC000000CC000F0FCC00111184006A6A79008C8C
      9500E6E6E600E6E6E600E6E6E600F7F7F70000000000FFE7C300FFE7C300FFEA
      CB00FFEACB00FFEACB00F7E9D400F7E9D400FFF1DD00FFF1DD00FFF5E600FFF5
      E600F7F1E800F7F1E800FFFCF800FFFFFF00FFFFFF00FFFFFF00FFF5E600EFE5
      D600D9CEBD00D1C6B300C2B6A300C2B6A300F0DEC300F0DEC300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800027D8FF0027D8
      FF003195C7000405B5000000E1000000E1000405D500398FD70032CDFF0032CD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007FE2E30018B7B900128F9100128F9100A7D9
      DA000000000000000000000000000000000000000000BEF6F60025BBBD00159F
      A0001393940018B7B9005AE7E900BEF6F6000000000000000000000000000000
      00000000000000000000000000000000000084858800B6B6B600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEE700DEDE
      E7009C9CDD00D2D2E5009393DB000000CC000000CC000000CC000000CC003B3B
      8D00E6E6E600E6E6E600E6E6E600F7F7F70000000000FFEACB00FFEACB00FFEA
      CB00FFEFD700FFEFD700FFF1DD00FFF1DD00FFF5E600FFF5E600FFF8EE00FFF8
      EE00FFFCF800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8EE00FFF8
      EE00FFF5E600FFF5E600FFF5E600FFEFD700FFEFD700EFE2CF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000022DDFF002BB9
      D4000202A6000000D1000000D1000000DF000000DF000202D2003CBADE002FD0
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8EFF00019C4C600149B9D001393940031A7
      A800000000000000000000000000000000000000000000000000CDD7D700369E
      A0001393940075CBCC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7B7F00B6B6B600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00E6E6E600E6E6E600CECED700CDCDDE00ADADD8009C9C
      CB00E6E6E600E6E6E600E6E6E600F7F7F70000000000FFEFD700FFEFD700FFEF
      D700FFF1DD00FFF1DD00FFF5E600FFF5E600FFF8EE00FFF8EE00FFFCF800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFCF800FFFC
      F800FFF8EE00FFF8EE00FFF8EE00FFF5E600FFF5E600EFE5D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000808080001EE1FF001B31
      57000000C1000000C1000000CF000000CF000000DC000000DC002A3D7A002BD4
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028CCCE0018B7B90013939400128C
      8D006CC2C3000000000000000000000000000000000000000000CDD7D7002193
      9400149B9D008ACFD00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7B7F00B6B6B600D6D6D600D6D6
      D600D6D6D600D6D6D600D6D6D600D6D6D600DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600F7F7F70000000000EFE5D600FFF1DD00FFD7
      9A00FFCB7D00FFCB7D00FFCB7D00FFCB7D00FFCE8300FFCE8300FFCE8300FFCE
      8300FFCE8300FFCE8300FFCE8300FFE0B200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFCF800FFFCF800FFF8EE00FFF8EE00EFE8DC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000019E6FF000E17
      44000000B7000000B7000000C5000000C5000000D3000000D3001A22680026D9
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000070DDDF001CD9DB0017B0B200159F
      A000128C8D005EBCBD00D4EEEF000000000000000000000000005C9F9F00149B
      9D0015A4A6009ADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A7B7F00D6D6D600E6E6E600E6E6
      E600DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600EFEFEF0000000000C4C4C400FFF5E600FFF5
      E600FFD59600FFCB7D00FFCE8300FFCE8300FFCE8300FFCE8300FFCE8300FFCE
      8300FFCE8300FFCE8300FFE0B200FFFFFF00FFFFFF00FFFFFF00FFFCF800FFFC
      F800FFFCF800FFFFFF00FFFFFF00FFFFFF00FFFCF800EFEBE300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800015EAFF000B16
      2C000000AE000000AE000000BC000000BC000000CA000000CA0019244D0022DD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041E4E60061E8EA0016AD
      AF00128F9100149B9D00128F910013939400139394001393940011858600128C
      8D0041B1B200E0FAFB0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CECED700EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600EFEFEF000000000000000000D4D4D400FFFC
      F800FFF8EE00FFE2B600FFCE8300FFCE8300FFCE8300FFCE8300FFCE8300FFCE
      8300FFDAA300FFF1DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8E8E800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010EFFF000A2A
      2D00050562000000AC000000AC000000B9000000B90007079C00213E42001DE2
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0FAFB00B6F5F5008CEE
      EF001CD5D700107A7B00128F9100159FA000159FA000149B9D00107A7B005492
      9300E0FAFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00000000000000000000000000CCCC
      CC00FFFCF800FFFFFF00FFF8EE00FFEACB00FFE7C300FFE7C300FFECCF00FFF8
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E0E0E000C4C4C40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008080800000000000808080000000000000000000808080000CF3FF000ABA
      C40001020200050561000202A1000303A8000A0A7D00060713001DBCCE0019E6
      FF00000000000000000000000000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4F9F9006DEAEC004EAFB0004A94950068A7A80096C5C600C1CDCD00CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F7000000000000000000F7F7F700F7F7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4C4C400E8E8E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EF00E8E8E800D4D4D40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000007F8FF0007F8
      FF0007A1A800010F100000000000000000000916170014A5B10013ECFF0013EC
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DADADA00DADA
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C4C4C400E0E0E000E8E8E800EFEFEF00EFEFEF00E8E8
      E800D4D4D4000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002CDCF0004FB
      FF0004FBFF0004FBFF0009F6FF0009F6FF0009F6FF000DF2FF000DF2FF0025DA
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010101000404040004040
      400020202000000000000000000000000000000000000000000020202000DFDF
      DF00000000000000000000000000000000000000000000000000666666004040
      4000404040004040400040404000404040004040400040404000404040001010
      1000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5ECDA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BFBFBF0000000000717171000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002020200050505000CCCCCC000000000000000000404040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000083A8E60064B0ED009F9F9F009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F1D9BB00E8B89100C59372009B735C00B9846500D69F7E00E8C9A500F8DC
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000696969005252520052525200525252005252520052525200525252005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000717171000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000202020008080800000000000000000004040
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000083A8E60000BFFA0000CCFF00004C8B00000000009F9F9F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5ECDA00E9C59300E4BD
      8400E4BD8400D4BD9200D4BD9200DDCD9C00DDCD9C00D4BD9200DDCD9C00E9C5
      9300EBC38B00E9C59300F5ECDA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000696969005252520052525200525252005252520052525200525252005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007171710010101000666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600717171000000
      00000000000066666600DFDFDF00AFAFAF007171710033333300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000083A8E60000BFFA0000CCFF0000CCFF0000CCFF00004C8B00000000009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBC38B00E4BD8400E7D29400E0CE
      9700E0CE9700DDCD9C00EDDEB300E6D9B500EDDEB300E6D5A700DDCD9C00DDCD
      9C00E6D5A700EED79C00E4BD8400E9C593000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002020200071717100404040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000DFDFDF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000083A8
      E60000BFFA0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF00004C8B000000
      00009F9F9F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7E9D700E1B17600E3CD8600E7D29400E7D29400E7D2
      9400E8D59900E8D59900F7E7BB00E9DFC600F7E7BB00EED79C00E8D59900E8D5
      9900E8D59900E8D59900E8D59900EAD58B00E1B17600F7E9D700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000050505000DFDFDF00404040000000
      0000000000000000000000000000000000000000000000000000000000005050
      5000BFBFBF00BFBFBF00BFBFBF00999999007F7F7F007F7F7F007F7F7F007F7F
      7F00404040009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000083A8E60000BF
      FA0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF00004C
      8B00000000009F9F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E9DFC600DCA56B00E3CD8600E3CD8600EAD58B00E3CD8600F6DE
      9800E0CE9700F6DE9800F7E1A300E6D9B500FAEFCE00F7E7BB00E6D5A700EED7
      9C00E7D29400E7D29400E7D29400E7D29400F4D88800E1B17600F5E4C5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      000000000000000000000000000000000000000000000000000033333300DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000083A8E60000BFFA0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF00004C8B00000000009F9F9F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7E9D700DCA56B00E5C77C00E5C77C00F1CD8600E3CD8600F4D88800EAD5
      8B00EAD58B00F6DE9800F6DE9800E6D5A700FAEFCE00FAEFCE00FAEFCE00E6D9
      B500F7E1A300E3CD8600EAD58B00EAD58B00E3CD8600F4D88800EBC38B00F5EC
      DA00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000071717100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000083A8E60000BFFA0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF00004C8B00000000009F9F9F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D59E6100E1B17600E6BB7500F3C97F00E6BB7500F1CD8600F4D88800E5C7
      7C00F4D88800F4D88800F4D88800E3CD8600F7E7BB00FAEFCE00FAEFCE00E8DE
      BF00F5E4C500F7E7BB00E3CD8600E3CD8600E3CD8600E3CD8600F5E4C500DCA5
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020202000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009F9FDE000072D80000CCFF0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000CCFF0000A6F10000004A00000000009F9F9F0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D8AB
      8300D59E6100E7B36E00EFBC6F00E6BB7500E6BB7500F3C97F00F3C97F00E5C7
      7C00F4D88800F4D88800F4D88800E5C77C00F7E1A300FAEFCE00FAEFCE00F5E4
      C500E8DEBF00FAEFCE00F7E7BB00E0CE9700F1CD8600F1CD8600E6CBAE00E7B3
      6E00E1B588000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600AEAE
      AE00BCBCBC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000050505000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009F9FDE000000A5000000A500007FDE0000CCFF0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CC
      FF0000A6F100000DBD000000BD0000004A00000000009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000F7E9D700CC8C
      5100E0A56200EFB36C00EFB36C00EFB36C00F0C67800F0C67800E6BB7500F0C6
      7800F3C97F00F3C97F00F3C97F00E5C77C00F1CD8600F7E7BB00FAEFCE00FAEF
      CE00E6D9B500F5E4C500F5E4C500F5E4C500E6D9B500F4CF9F00E6BB7500E7B3
      6E00D59E6100F7E9D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EFEFEF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C4008B8B
      8B00BCBCBC000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF00000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFDFDF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009F9FDE000000A5000000A5000000A5000000A500007FDE0000CC
      FF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000A6
      F100000DBD000000BD000000BD000000BD0000004A00000000009F9F9F000000
      0000000000000000000000000000000000000000000000000000D8AB8300CC8C
      5100E0A56200EAAB6600E0A56200EFB36C00EFB36C00EFBC6F00DCA56B00F0C6
      7800F0C67800F0C67800F0C67800E7B36E00F0C67800F7E1A300F5E4C500F5E4
      C500F1D9BB00F1D9BB00F5E4C500F5E4C500E6D9B500F6D6B500EFBC6F00E0A5
      6200D59E6100E1B5880000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600D6D6
      D600A3A3A3007474740074747400747474007474740074747400585858005252
      52008B8B8B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020202000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009F9FDE000000A5000000A5000000A5000000A5000000A5000000A500007F
      DE0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000CCFF0000A6F100000D
      BD000000BD000000BD000000BD000000BD000000BD0000004A00000000009F9F
      9F00000000000000000000000000000000000000000000000000B2764000CC8C
      5100DE9E5C00DE9E5C00DE9E5C00EAAB6600EAAB6600EAAB6600EAAB6600EFBC
      6F00EFBC6F00EFBC6F00EFBC6F00E7B36E00F0C67800F6D6B500F5E4C500F5E4
      C500F1D9BB00F1D9BB00F5E4C500F5E4C500F1D9BB00E8C9A500EFB36C00E0A5
      6200D59E6100CC8C510000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600E6E6
      E60000000000A3A3A300A3A3A300A3A3A300A3A3A300A3A3A300585858005252
      5200797979000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000333333000000
      00000000000000000000000000000000000000000000DFDFDF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000066666600000000000000
      000000000000000000000000000000000000000000000000000000000000A0A0
      D9000000A5000000A5000000A5000000A5000000A5000000A5000000A5000000
      A500007FDE0000CCFF0000CCFF0000CCFF0000CCFF0000A6F100000DBD000000
      B6000000BD000000BD000000BD000000BD000000BD000000BD0000004A000000
      00009F9F9F0000000000000000000000000000000000E5CFBA00B2764000CC8C
      5100DF985400D7914F00DE9E5C00ECA55E00ECA55E00ECA55E00ECA55E00EAAB
      6600EFB36C00EFB36C00EFB36C00E0A56200F4CF9F00F8DCBD00F8DCBD00F8DC
      BD00F8DCBD00E6CBAE00F8DCBD00F8DCBD00F8DCBD00E6CBAE00E9C59300E0A5
      6200D6925C00C4814600F1D9BB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E6E6E600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A3005252
      520052525200B3B3B30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900000000000000
      0000000000000000000000000000000000000000000000000000A0A0D9000000
      99000000A5000000A5000000A5000000A5000000A5000000A5000000AD000000
      AD000000AD00007FDE0000CCFF0000CCFF0000A6F100000DBD000000B6000000
      B6000000BD000000BD000000BD000000BD000000C5000000C5000000C5000000
      4A00000000009F9F9F00000000000000000000000000C49E8200AD6F3900CA89
      4B00CA894B00CA894B00DF985400DF985400EA9F5900DF985400EA9F5900ECA5
      5E00ECA55E00ECA55E00ECA55E00DE9E5C00F6D6B500F8DCBD00F8DCBD00F8DC
      BD00F8DCBD00E6CBAE00F8DCBD00F8DCBD00F8DCBD00E6CBAE00E1B58800DF98
      5400DF985400B2764000D6AD8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BCBCBC005252
      5200525252005252520099999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AFAFAF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFDFDF00000000000000
      00000000000000000000000000000000000000000000A0A0D900000099000000
      990000009900BFBFE7000000000000000000EFEFF9006060C4000000AD000000
      AD000000AD000000AD00007FDE0000A6F100000DB8000000B6000000B6000000
      B6007F7FDD00000000000000000000000000000000000000C5000000C5000000
      C50000004A00000000009F9F9F0000000000000000009E664600AD6F3900C37B
      4000CD834300C4814600D7914F00D7914F00E8975000D7914F00E8975000EA9F
      5900EA9F5900EA9F5900EA9F5900DCA56B00F6D6B500F6D6B500F6D6B500F6D6
      B500F6D6B500E6CBAE00F6D6B500F6D6B500F0CEB200DCA56B00D7914F00D791
      4F00CC8C5100B2764000B5774F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6D6D600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006969
      69005252520052525200525252008B8B8B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      2000000000000000000000000000000000002020200000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000202020000000
      000000000000000000000000000000000000A0A0D90000009900000099000000
      9900000099008080D0006060C4007F7FD000DFDFF7009F9FDE000000AD000000
      AD000000AD000000AD000000AD00000DB8000000B6000000B6000000B6000000
      B6007F7FDD00000000008080DF008080DF004F4FD5000000C5000000C5000000
      C5000000C50000004A00000000009F9F9F00000000007F513500AD6F3900BB76
      3C00BB763C00BB763C00D5854300D48B4A00D48B4A00D48B4A00D48B4A00E897
      5000E8975000E8975000E8975000D8AB8300F4D0B300F6D6B500F6D6B500F6D6
      B500F6D6B500E8C9A500F4D0B300F4D0B300DE9E5C00D48B4A00CD834300CD83
      4300CD834300AD6F39009E664600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5
      F5008B8B8B005252520052525200525252007979790000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000000000001919190040404000DFDFDF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666000000
      0000000000000000000000000000000000006060BF0000009900000099000000
      9900000099007F7FD0006060C4008080D000DFDFF7009F9FDE000000AD000000
      AD000000AD000000AD000000AD000000B6000000B6000000B6000000B6000000
      B6003030C200AFAFEA008080DF00BFBFEF00000000000000C5000000C5000000
      C5000000C50000007B000000000060606000000000007F513500A65A2800B269
      3100B2693100BB763C00CD834300CD834300D5854300CD834300D5854300DE8B
      4700DE8B4700DE8B4700DE8B4700D6925C00F0CEB200F4D0B300F4D0B300F4D0
      B300F4D0B300DBBBA200F0CEB200E8B89100D48B4A00CD834300C37B4000C37B
      4000C37B4000AD6F39008E5E4600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E6
      E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00A3A3A30052525200525252005252520079797900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007171710010101000000000000000000066666600AFAFAF0000000000DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999000000
      000000000000000000000000000000000000000000006060BF00000099000000
      990000009900ADADDE000000000000000000DFDFF7006060C4000000AD000000
      AD000000AD000000AD000000AD000000B6000000B6000000B6000000B6000000
      B6005050D000DFDFF7000000000000000000B0B0EC000000C5000000C5000000
      C50000007B00000000006060600000000000000000007F5135009D562B00AE63
      2C00B2693100B2693100C9733400C9733400D07A3900D07A3900D07A3900D585
      4300D5854300D5854300D5854300D07A3900E0A56200F0CEB200F0CEB200F0CE
      B200F0CEB200DBBBA200E8B89100D48B4A00CD834300C37B4000BB763C00BB76
      3C00BB763C009D562B008E5E4600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BCBCBC005252520052525200525252008B8B8B000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999990000000000000000000000000020202000333333008F8F8F00AFAF
      AF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF000000
      00000000000000000000000000000000000000000000000000006060BF000000
      99000000A5000000A5000000A5000000A5000000A5000000A5000000AD000000
      AD000000AD000000AD000000AD000000B6000000B6000000B6000000B6000000
      B6000000BD000000BD000000BD000000BD000000C5000000C5000000C5000000
      7B0000000000606060000000000000000000000000008E5E46008D4B2100A65A
      2800AE632C00AE632C00BE6D3100C9733400C9733400C9733400C9733400D07A
      3900D07A3900D07A3900D07A3900D07A3900D6925C00EFCBAF00EFCBAF00EFCB
      AF00E8C9A500D69F7E00D07A3900D07A3900D07A3900BE6D3100BE6D3100BE6D
      3100AE632C008F5325009E664600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C4C4C400EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BCBCBC00525252005252520052525200C4C4
      C400000000000000000000000000000000000000000000000000000000000000
      0000666666000000000000000000202020002626260010101000333333000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      20000000000000000000505050008F8F8F000000000000000000000000006060
      C4000000A5000000A5000000A5000000A5000000A5000000A5000000AD000000
      AD000000AD000000AD000000AD000000B6000000B6000000B6000000B6000000
      B6000000BD000000BD000000BD000000BD000000BD000000BD0000007B000000
      00006060600000000000000000000000000000000000C593720082431E009B54
      2200A65A2800A65A2800B5642B00BE6D3100BE6D3100BE6D3100BE6D3100C973
      3400C9733400C9733400C9733400CD936A00D6925C00D6925C00E1B58800D692
      5C00C37B4000BE6D3100C9733400C9733400BE6D3100AE632C00AE632C00AE63
      2C00A65A28008D4B2100C49E8200000000000000000000000000000000000000
      00000000000000000000AEAEAE008B8B8B007474740069696900585858005252
      52005252520052525200D6D6D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A30052525200525252009999
      990000000000000000000000000000000000000000000000000000000000DFDF
      DF001010100000000000000000004B4B4B00404040000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0071717100DFDFDF0000000000000000000000000000000000000000000000
      00006060C4000000A5000000A5000000A5000000A5000000A5000000AD000000
      AD000000AD000000AD000000AD000000B6000000B6000000B6000000B6000000
      B6000000BD000000BD000000BD000000BD000000BD0000007B00000000006060
      60000000000000000000000000000000000000000000E6CBAE007B401B008D4B
      21009B5422009B5422009B542200AE632C00AE632C00AE632C00AE632C00BE6D
      3100BE6D3100BE6D3100D69F7E00D6AD8E00BE6D3100BE6D3100BE6D3100BE6D
      3100BE6D3100B5642B00BE6D3100BE6D3100B5642B00A65A2800A65A2800A65A
      2800934E21008D4B2100E6CBAE00000000000000000000000000000000000000
      000000000000000000008B8B8B00525252005252520052525200585858007474
      7400525252005252520079797900E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F50052525200525252008B8B
      8B00000000000000000000000000000000000000000000000000000000007171
      7100000000000000000039393900595959001010100000000000000000008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006060C4000000A5000000A5000000A5000000A5000000A5000000
      A5003F3FC1007F7FD6008080D9008080D9008080D9002020BF000000B6000000
      B6000000BD000000BD000000BD000000BD0000007B00000000009F9F9F000000
      00000000000000000000000000000000000000000000000000008D4B21007B40
      1B008D4B2100934E2100934E2100A65A2800A65A2800A65A2800A65A2800A65A
      2800BB763C00D5A88900DBBBA200B5774F00B5642B00BB763C00CD936A00C686
      5B00AE632C00AE632C00AE632C00AE632C00A65A28009B5422009B542200934E
      210082431E009B54220000000000000000000000000000000000000000000000
      0000D6D6D600E6E6E600E6E6E600D6D6D600E6E6E600FFFFFF00FFFFFF00FFFF
      FF00999999005252520052525200B3B3B300DFDFDF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008B8B8B00525252008B8B
      8B00000000000000000000000000000000000000000000000000000000004040
      400000000000000000004B4B4B0066666600262626000000000000000000DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006060C4000000A5000000A5000000A5000000A5000000
      A5007F7FD600000000008F8FDD008080D9008080D9002020BF000000B6000000
      B6000000BD000000BD000000BD0000007B00000000009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000B98465006D37
      17007B401B008D4B21008D4B21008D4B21009B5422009B5422009B542200C38E
      6D00D6AD8E00C38E6D00D5A889009D562B00B2764000C38E6D00B5774F00AE63
      2C009D562B00A65A2800A65A2800A65A28008D4B2100934E2100934E21008243
      1E007B401B00B984650000000000000000000000000000000000000000000000
      0000E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BCBCBC0052525200525252005252520082828200E6E6E600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A300525252009292
      9200000000000000000000000000000000000000000000000000000000004040
      4000000000000000000039393900595959001010100000000000000000008F8F
      8F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006060C4000000A5000000A5000000A5000000
      A5002020B700CFCFF0000000000000000000EFEFF9002020BF000000B6000000
      B6000000B6000000B60000006000000000009F9F9F0000000000000000000000
      0000000000000000000000000000000000000000000000000000F5ECDA00763B
      1A006D3717007B401B0082431E0082431E008D4B21008D4B21009E664600C4A4
      9200C59372009B5422009D562B008F532500AC6D4900A65A28009D562B009D56
      2B009D562B009D562B00934E21008D4B21008D4B21008D4B21007B401B00763B
      1A00763B1A00F5ECDA0000000000000000000000000000000000000000000000
      0000DFDFDF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0069696900525252005252520052525200E6E6E600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A3A3A30052525200BCBC
      BC00000000000000000000000000000000000000000000000000000000006666
      6600000000000000000000000000393939001010100000000000000000002020
      2000DFDFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006060C4000000A5000000A5000000
      A5003F3FC100BFBFE700BFBFE700CFCFF000000000004040C5000000B6000000
      B6000000B60000004A00000000009F9F9F000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AA7A
      6300642E1C00642E1C00763B1A00763B1A00763B1A008F532500AA7A6300C4A4
      9200C4A49200975633008D4B21008D4B2100B98465009E6646008D4B21008D4B
      21008D4B21008D4B210082431E0082431E0082431E00763B1A006D3717006D37
      1700AA7A63000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F5F5F500AEAEAE00A3A3A300D6D6D600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0099999900828282000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000404040001919190000000000000000000000
      0000999999000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006060C4000000AD000000
      AD000000AD004040C5004040C5004040C5003030C2000000B6000000B6000000
      B60000004400000000009F9F9F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007D442A00642E1C00642E1C006D3717006D3717008E5E4600B6938100BDA5
      9D00BDA59D00C4A49200B6938100B6938100C7ADA100B69381008D4B21007B40
      1B0082431E0082431E00763B1A00763B1A006D3717006D3717006D3717007D44
      2A00000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0074747400000000000000
      000000000000000000000000000000000000000000000000000000000000DFDF
      DF00101010000000000000000000333333002020200000000000101010007F7F
      7F00DFDFDF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006060CE000000
      AD000000AD000000AD000000AD000000B6000000B6000000B6000000B6000000
      4400000000009F9F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E2D4CF006A321D005B2915005B2915006A321D008D675600B49E9500C7AD
      A100B49E9500C7ADA100C7ADA100B49E9500C7ADA100C7ADA100AA8A7B00763B
      1A00763B1A006D3717006D371700642E1C00642E1C00642E1C00763B1A00E2D4
      CF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C4C4C400C4C4C400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009999990010101000000000004B4B4B005959590099999900DFDFDF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006060
      CE000000AD000000AD000000AD000000B6000000B6000000B600000044000000
      00009F9F9F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C7ADA100642E1C005B2915005B291500AA8A7B00AD9A9300BDA5
      9D00B49E9500B49E9500BDA59D00B49E9500BDA59D00BDA59D00B49E9500B693
      8100865A4E006A321D005B2915005B2915005B2915006A321D00C7ADA1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006060CE000000AD000000AD000000AD000000AD0000004400000000009F9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E2D4CF00642E1C005B291500642E1C009A898500AD9A
      9300B49E9500AA958E00BDA59D00AD9A9300BDA59D00AD9A9300B49E9500AD9A
      9300AD9A9300724F49005B2915005B2915006A321D00E2D4CF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006060CE000000AD000000AD0000004400000000009F9F9F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000865A4E005B2915005B2915009A89
      8500A48E8A00AA958E00AD9A9300AD9A9300A48E8A00724F49008A6258009A89
      85006C4539005B2915005B291500865A4E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFDFDF00F5F5F500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DFDFDF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006060CE009F9FDE00606060009F9F9F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4C3BE008A625800724F
      4900A48E8A009A8985009A8985009A8985008A6258005B291500724F4900865A
      4E005B2915008A625800D4C3BE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DFDFDF00E6E6
      E600EFEFEF00F5F5F500FFFFFF00FFFFFF00FFFFFF00F5F5F500EFEFEF00DFDF
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F5EC
      DA00C8B6B200BDA59D009A898500735C5900735C5900724F4900AA958E00BDA5
      9D00F5ECDA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008FBD
      CC001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E1002EB9E70030BEEE0019627B00000000000000
      0000000000000000000000000000000000000000000010101000E0E0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000444E540000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008FBD
      CC001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E1002EB9E70030BEEE0019627B00000000000000
      0000101010005959590042424200000000000000000000000000424242000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00434343001919
      19000000000008080800191919002121210049494900A5A5A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B3CAD6005B92AC00E6E7EC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008FBD
      CC001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E1002EB9E70030BEEE0019627B00000000000000
      000083838300000000000000000099999900000000000000000000000000ADAD
      AD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C5C5C5002121210019191900494949008585
      85008C8C8C00737373003C3C3C0011111100080808001919190021212100D0D4
      D000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0E5E7002A6F91007299A80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E53
      5A0016576D002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E1002EB9E70030BEEE001F7B9A00000000000000
      0000BCBCBC000000000000000000000000007474740000000000000000002020
      200000000000000000000000000000000000CAECCA00C7E3C700C1DBC100C0D5
      C000C0D5C000C0CEC000C0CEC000C0CEC000C0CEC000C0CEC000C0CEC000C0CE
      C000C0CEC000C0CEC000858A8500212121005A5A5A00BDBDBD00E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600CCCCCC00434343000808080019191900080E
      0800787C7800C0C5C000D0D4D000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5D9DE002A6F9100308195008BB9CD0061A0E700CEDDF4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001B24
      26000000000002080A0009222B00134A5C00134A5C00134A5C00134F62001552
      66001552660016576D00175A71000E3A48000C303C0006171D00090C0D000000
      0000BCBCBC000000000000000000000000000000000020202000000000000000
      0000999999000000000000000000000000001BC71B0017BA170005A705000099
      000000880000007C000000730000007300000073000000730000006C0000006C
      0000006C0000296E29001919190085858500EFEFEF00EFEFEF00EFEFEF00E6E6
      E600E6E6E600E6E6E600E6E6E600DEDEDE00CCCCCC005A5A5A00080808001919
      190000000000001E000040634000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008E8E8E005151670000000000000000000000000000000000000000000000
      00000000000000000000CEE9E900BDEAEA00F0FAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A6F91002A6F9100348499004C8AD4003975D1003B5BA3005465
      7A008D98A8000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D26
      3200236A8D000D263200061319000D263200091C260000000000000000000000
      00000D2632000D2632000D2632000E3A4800061319002D86B2002F414A000000
      000066666600CCCCCC0000000000000000000000000066666600000000000000
      00006666660000000000000000000000000026D0260023C8230000C6000000BF
      000000BF000000BF000000BF000000B4000000AE000000AE000000AE000000AE
      000000A400004343430085858500EFEFEF00EFEFEF00EFEFEF00EFEFEF00E6E6
      E600E6E6E600E6E6E600DEDEDE00DEDEDE00DEDEDE00C5C5C500525252000000
      000008080800000A000040634000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000434343008E8E8E0000000000000000000000000000000000000000000000
      0000D2DDDD00B1D5D500B1D5D500BDEAEA00DFF9FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A1BA
      C000207E9F0014648F001C6C9500316FA5004C8AD4003B5BA3001C3052001C30
      5200313C61000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001940
      53003399CC00194C6600194C66003399CC003399CC003399CC003399CC000000
      00003399CC003399CC003399CC003399CC00030A0D00236A8D001B2123001010
      1000191919000707070074747400000000000000000083838300000000000000
      00004242420000000000000000000000000031D5310031D5310000C6000007C4
      07000DC20D0012C0120012C0120017BA170017BA170015B5150015B5150015B5
      15005199510043434300EFEFEF00F7F7F700F7F7F700EFEFEF00EFEFEF00E6E6
      E600E6E6E600E6E6E600DEDEDE00DEDEDE00DEDEDE00D5D5D500C5C5C5001919
      190019191900000000002C4B2C00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C6002F2F42007E7EBB0000000000000000000000000000000000D2DDDD0093B7
      B7009BC1C100A7CDCD00BDEAEA00C5F8F800CCFFFF00DCFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E5E700B1BDDD006DA0D5001464
      8F00147E990033A4C0003EAFCF002E89B4006FADDE00A6D9E7002D4662001C30
      52001C3052008D98A80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B63
      7F003399CC00194C6600205F7F003399CC003399CC003399CC003399CC000000
      00003399CC003399CC003399CC003399CC0000000000202020003A3A3A004949
      4900494949003A3A3A0020202000ADADAD0000000000ADADAD00000000000000
      0000202020000000000000000000000000003CD73C003CD73C0007C4070007C4
      070012C012001BC71B0020BD200020BD200020BD200020B5200020B5200020B5
      2000617661008C8C8C00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00E6E6
      E600E6E6E600E6E6E600A5A5A50099999900DEDEDE00D5D5D500D5D5D5005A5A
      5A00000000000000000018291800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      8B00353A5700D7D7D700000000000000000000000000ACBFBF0085A5A50093B7
      B700A9D6D600A9D6D60093BCBC00BBEEEE00C5F8F800CCFFFF00ECFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F859C007F87A10031406E0030447C002F4990003159B3003159B3000965
      8200207E9F003EAFCF0063D0EB0063D0EB00A6D9E700AFE3EA008BB9CD001C30
      52001C305200313C6100E6E7EC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B63
      7F003399CC00194C6600267399003399CC003399CC003399CC003399CC000000
      00003399CC003399CC003399CC003399CC000000000083838300838383005959
      59004242420033333300535353003333330000000000BCBCBC00000000000000
      00000000000000000000000000000000000041D3410078CB7800999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990052525200CCCCCC00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF000000
      00000000000000000000000000000000000033333300858A8500C5C5C5009494
      94000808080011111100080E0800000000000000000000000000000000000000
      000000000000000000007E7E860051516700444F61004B4B6B00B7B7BF005151
      5B0042425200000000000000000000000000A5B6B6007E9D9D009DC5C500A7CD
      CD0098C2C2009DC5C500BDEAEA00C5F8F800C5F8F800C5F8F800ECFFFF000000
      0000000000000000000000000000000000000000000000000000D5D9DE005465
      7A00313C61006A728C0031406E002E4FA400356BC7003770D3001C6C95001667
      7C004092A70069BDD20071DBF60073C0EE00A6D9E700B3E6ED00AFE3EA006488
      9D001C3052001C305200717E9100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004662
      6C00206080000E3A4800267399003399CC003399CC003399CC003399CC000000
      00003399CC003399CC003399CC003399CC000000000020202000424242003333
      33003A3A3A0049494900666666002828280042424200BCBCBC00000000000000
      00000000000000000000000000000000000041D3410074C4740099999900A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A50043434300F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF000000
      0000E6E6E600E6E6E60073737300000000003333330085858500C5C5C500C5C5
      C500111111001111110000000000000000000000000000000000000000000000
      000000000000000000008E8E8E0042425200131383000A0AAA003B3B3B00757A
      7A004242520000000000000000007E9D9D008BB5B500A7CDCD0093BCBC0098C2
      C200B6E6E600BBEEEE00C5F8F800C5F8F800C5F8F800CCFFFF00000000000000
      00000000000000000000000000000000000000000000B2B6C4003E486B00313C
      6100313C61003E486B002E5BC4002E5BC400356BC7003770D300096582002171
      85004DA0B40078D0E60081D8F8005892DC0087BCE100B3E6ED00B3E6ED00AFE3
      EA003E486B001C3052001C305200E0E5E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008FBD
      CC0015556A000C303C000B242F000D2632000D2632000D26320016435A000000
      0000194C66000D2632000D26320006151A00030A0D0000000000595959002020
      2000424242005353530042424200282828000000000059595900000000000000
      00004242420000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF005252520000000000F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF000000
      0000E6E6E600E6E6E600A5A5A50099999900DEDEDE00D5D5D500D5D5D500C5C5
      C500111111001111110000000000000000000000000000000000000000000000
      0000000000000000000000000000D7D7D70051515B00353A57001D1D7A004242
      52003C424900D7D7D70088ABAB0099CCCC008BB5B5008BB5B500AADCDC00BBEE
      EE00BBEEEE00BBEEEE00BBEEEE00C5F8F800DFF9FF0000000000000000000000
      000000000000000000000000000000000000959DB50031406E0030447C002F49
      90002E4FA4002C54B8002E5BC4002E5BC400356BC7002360A5000D657B003081
      950064B8CD0085D9EF007BD5F600356BC700356BC700B3E6ED00B3E6ED00B3E6
      ED008BB9CD001C3052001C305200717E91000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008FBD
      CC001F7B9A002185A6002185A6002185A6001C6E8A001C738E00134F6200134F
      62001D7491002185A600279DC5002EB9E7002828280010101000424242007C7C
      7C00A7A7A700E7E7E700C6C6C600949494006B6B6B0042424200202020000000
      00005353530000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF0073737300E6E6E600F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF000000
      0000E6E6E600E6E6E600DEDEDE00DEDEDE00DEDEDE00D5D5D500D5D5D500A5A5
      A5000808080019191900080E0800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600515167002F2F
      42002F2F42006175AB008BB5B5008BB5B500A7CDCD00B6E6E600B6E6E600B6E6
      E600C6F0F000DFF9FF00F0FAFA000000000000000000A0CFDA00D0D8DA000000
      000000000000000000000000000000000000B2B6C40031406E0030447C002F49
      90002E4FA4002C54B8002E5BC4002E5BC400356BC70014648F0016677C004092
      A70075C8DD008CE0F50061A0E7003062BD003062BD006DA0D500B8EDF100B8ED
      F100B3E6ED0064889D001C3052001C305200D5D9DE0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ABCD
      D9001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E10053A1BB00282828003A3A3A00666666008383
      8300A7A7A700D6D6D600D6D6D600999999007C7C7C0059595900282828000000
      00008383830000000000000000000000000041CC410072BD7200A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00A5A5A500BDBDBD00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF000000
      0000E6E6E600E6E6E600DEDEDE00DEDEDE00DEDEDE00D5D5D500D5D5D5008585
      8500000000000000000018291800000000000000000000000000000000000000
      00000000000000000000000000000000000000000000757A7A0030323A001C1C
      650021216300444F610098C2C200AADCDC00AADCDC00B6E6E600DAEDED00F0FA
      FA00000000000000000000000000D0F6FF0036828D0017A6C9004B646B00DFF9
      FF0000000000000000000000000000000000E6E7EC0031406E0030447C002F49
      90002E4FA4002C54B8002E5BC4002E5BC4003062BD00065D73002171850051A5
      BB0078D0E6008CE0F5003975D1003062BD003062BD003062BD00AEDFE800B8ED
      F100B8EDF100A6D9E7002D4662001C30520054657A0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA0029A3CC00293A3A00202020003A3A3A00595959007C7C
      7C0099999900CCCCCC00E0E0E000999999007C7C7C00595959003A3A3A001010
      10008C8C8C0000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF00DEDEDE00A5A5A500F7F7F700F7F7F700F7F7F700EFEFEF002B2B2B000000
      00002B2B2B00E6E6E600DEDEDE00DEDEDE00DEDEDE00D5D5D500D0D4D0003333
      33002B2B2B00000000002C4B2C00000000000000000000000000000000000000
      0000000000000000000000000000D7D7D70043434300384848003C4249001313
      83000000BA0027296F003A3D560093BCBC00DAEDED0000000000000000000000
      00000000000000000000000000007BE5FF001D93A9000ABBE70038707E00C4EC
      F70000000000000000000000000000000000000000007F87A10030447C002F49
      90002E4FA4002C54B8002E5BC4002E5BC40014648F000D657B0037879B0069BD
      D20085D9EF0073C0EE00356BC7003062BD003062BD003062BD005180C500BEF3
      F600B8EDF100B8EDF1008BB9CD001C3052001C305200C7CCD300000000000000
      000000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA0058B6D500202020001010100033333300595959007474
      740099999900C6C6C600E7E7E700A7A7A7008383830066666600424242002020
      20008C8C8C0000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF0000000000A5A5A500CCCCCC00F7F7F700F7F7F700EFEFEF00858585000000
      000085858500E6E6E600DEDEDE00DEDEDE00DEDEDE00D5D5D500858585000808
      080011111100000D0000406D4000000000000000000000000000000000000000
      00000000000000000000CCCCCC001B2021003F53530086B2B200617C7C00353A
      57000808A40012129A003A3D56006666660066666600B0B0B000000000000000
      0000000000000000000000000000DFF9FF0010CFFF0005C2F1002B859C00D8E7
      EA000000000000000000000000000000000000000000C7CCD30030447C002F49
      90002E4FA4002C54B8002E5BC4002E5BC40009658200217185004DA0B40078D0
      E6008CE0F5005892DC00356BC700356BC7003062BD002A54AE002A54AE008BB9
      CD00BEF3F600B8EDF100B8EDF100646D89001C30520054657A00000000000000
      000000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA0067ABC100191919001010100033333300535353007474
      740094949400B8B8B800F6F6F600A7A7A7008383830066666600494949002828
      28004242420000000000000000000000000041CC410072BD7200A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E6E6E600AEAEAE00D5D5D500F7F7F700EFEFEF00DEDEDE000000
      0000D5D5D500E6E6E600E6E6E600DEDEDE00D5D5D500A5A5A500111111002B2B
      2B000000000000380000406D4000000000000000000000000000000000000000
      000000000000CCCCCC00101010003F53530082ACAC0082ACAC0099CCCC007896
      9600353A570030323A005252520066666600585858004A4A4A0052525200A5A5
      A50000000000E0E0E000C0C0C00000000000A7EDFF001D93A90047AEC7000000
      00000000000000000000000000000000000000000000C0DFEA004E6593002F49
      90002E4FA4002C54B8002E5BC4002360A5000D657B003081950069BDD20085D9
      EF0081D8F8003975D100356BC700356BC7003062BD002A54AE002A54AE003159
      B300BEF3F600BEF3F600B8EDF100AEDFE8001C3052001C305200C7CCD3000000
      000000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA0067ABC10019191900090C0D0028282800535353006B6B
      6B008C8C8C00ADADAD0000000000ADADAD008C8C8C006B6B6B00494949002828
      28001919190000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF000000000000000000D5D5D500AEAEAE00CCCCCC00EFEFEF00EFEFEF004949
      490049494900E6E6E600E6E6E600DEDEDE00A5A5A500212121002B2B2B000808
      08000D4C0D0000450000406D400000000000000000000000000000000000EFEF
      EF009999990027303000465A5A0086B2B2008BB5B50099CCCC0099CCCC005569
      690033333300434343005252520066666600585858004A4A4A003B3B3B002929
      29001B20210010101000EFEFEF0000000000D0F6FF0047AEC700C4ECF7000000
      00000000000000000000000000000000000000000000E6E7EC007297BA002F49
      90002E4FA4002C54B8002E5BC40014648F0016677C004092A70075C8DD008CE0
      F50067B2EA003975D100356BC700356BC7003062BD002A54AE00274EA800274E
      A8006DA0D500BEF3F600BEF3F600B8EDF1007299A8001C3052003E486B000000
      000000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA0067ABC100191919000707070028282800494949006B6B
      6B008C8C8C00ADADAD00EFEFEF00BCBCBC008C8C8C006B6B6B00535353003333
      33001919190000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF000000000000000000EFEFEF00EFEFEF009999990099999900BDBDBD00DEDE
      DE00E6E6E600D5D5D500A5A5A500525252002B2B2B003C3C3C00111111004F7F
      4F00157A150000450000406D40000000000000000000ECFFFF00BFDADA007896
      9600556969007E9D9D008BB5B500A7CDCD00AADCDC0099CCCC00354141002121
      2100333333003B3B3B005252520066666600585858004A4A4A003B3B3B002929
      29001B2021001010100000000000000000008EE8FF007BE5FF00000000000000
      0000000000000000000000000000000000000000000000000000E6E7EC003B5B
      A3002E4FA4002C54B8002C54B800065D73002171850051A5BB0085D9EF008CE0
      F5005892DC003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0002E4FA4009DCCD800B8EDF100B8EDF100B8EDF100425F75001C305200AAB2
      BC0000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA0058B6D5006B6B6B000000000020202000424242006666
      660083838300A7A7A700E7E7E700C6C6C6009494940074747400494949003333
      33005353530000000000000000000000000041CC410072BD7200A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00C5C5C500949494007373
      7300525252005252520052525200525252005252520094949400999999005C99
      5C00157A150000450000406D40000000000000000000F0FAFA00AED0D000A7CD
      CD009DC5C500A9D6D600B6E6E600B6E6E600AADCDC0030323A00191919002929
      2900292929002929290029292900333333003333330033333300333333002929
      29002121210027303000000000000000000043D9FF00C1F3FF00000000000000
      000000000000000000000000000000000000000000000000000000000000A1BA
      C0002E4FA4002C54B800244CA00016677C0037879B0069BDD20085D9EF0073C0
      EE003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A000244CA0005479B300BEF3F600BEF3F600BEF3F6009DCCD8001C3052002D46
      620000000000000000000000000000000000000000000000000000000000C7DE
      E6001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E1006C7477001010100020202000333333003A3A
      3A00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF000000000000000000EFEFEF000000000000000000EFEFEF00000000000000
      0000EFEFEF000000000000000000EFEFEF00000000000000000099999900619D
      6100157A150000450000406D4000000000000000000000000000D7D7D700AED0
      D000C6F0F000C5F8F800BBEEEE00BDEAEA00F0FAFA0052525200292929002929
      2900292929002929290029292900292929002929290029292900212121002121
      21002121210021212100292929002A92AC0023B7DC008E8E8E00C6C6C600D7D7
      D700000000000000000000000000000000000000000000000000000000000000
      00004664AE002C54B80009658200217185004DA0B40078D0E6008CE0F50061A0
      E7003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001F3F97009DCCD800B8EDF100B8EDF100B8EDF10064889D001C30
      5200AAB2BC00000000000000000000000000000000000000000000000000E3EE
      F2001F7B9A002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E10063BDDB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF000000000000000000EFEFEF000000000000000000EFEFEF00000000000000
      0000EFEFEF000000000000000000EFEFEF00000000000000000099999900619D
      6100157A150000450000406D400000000000000000000000000000000000DCFF
      FF00CCFFFF00CCFFFF00C5F8F800E5F1F1007373730029292900292929002929
      2900292929002929290029292900212121002121210021212100212121002121
      21002121210014272C000E728B000896BA001B20210019191900191919001919
      1900101010003333330099999900000000000000000000000000000000000000
      0000CBD3E800244CA0000D657B003081950069BDD20085D9EF0081D8F8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001F3F97004664AE00A6D9E700B3E6ED00BEF3F600B3E6ED002D46
      62001C3052000000000000000000000000000000000000000000000000000000
      000065A6BB002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041CC410072BD7200A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00999999005C99
      5C00157A150000450000406D400000000000000000000000000000000000ECFF
      FF00CCFFFF00CCFFFF00C9DCDC00434343002929290029292900292929002929
      290021212100212121002121210021212100212121002121210021212100163A
      42000E6C83000896BA000C78930014272C001919190010101000101010001010
      100021212100A5A5A50000000000000000000000000000000000000000000000
      0000000000002A6F910016677C004092A70075C8DD008CE0F50067B2EA003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E0080A9B500C5FBFC00C5FBFC00BEF3F60080A9
      B5001C305200D5D9DE00E6E7EC00000000000000000000000000000000000000
      0000E3EEF2002185A6002185A600238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF000000000000000000EFEFEF000000000000000000EFEFEF00000000000000
      0000EFEFEF000000000000000000EFEFEF00000000000000000099999900619D
      6100157A150000450000406D4000000000000000000000000000000000000000
      0000CCFFFF00A7CDCD0029292900292929002929290029292900212121002121
      210021212100212121002121210021212100163A42000C789300098EB0000896
      BA000E6C830012323A0010101000101010001010100010101000101010004A4A
      4A00E0E0E0000000000000000000000000000000000000000000000000000000
      00000000000016677C002171850051A5BB0078D0E6008CE0F5004C8AD4003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E001B378E00B8EDF100C5FBFC00C5FBFC00BEF3
      F600425F7500B3CAD60000000000000000000000000000000000000000000000
      000000000000B9D8E200308FAF00238EB1002593B8002699BE00279DC50029A3
      CC0029A3CC002BAEDA002DB4E10081D3EE00D6D6D600CCCCCC00E0E0E0000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000041CC410074C47400A5A5A5000000
      000000000000EFEFEF000000000000000000EFEFEF000000000000000000EFEF
      EF000000000000000000EFEFEF000000000000000000EFEFEF00000000000000
      0000EFEFEF000000000000000000EFEFEF00000000000000000099999900619D
      6100157A150000450000406D400000000000000000000000000000000000D7D7
      D700525252002929290029292900212121002121210021212100212121002121
      21002121210019191900191919001919190012323A000E60750012323A001010
      1000101010001010100010101000101010001010100019191900949494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A1BAC00016677C0037879B0069BDD20085D9EF0073C0EE003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E001F3582007297BA00C5FBFC00C5FBFC00B8ED
      F10052729B004E65930000000000000000000000000000000000000000000000
      00000000000000000000D5E9EF0067B1C9002593B8002699BE00279DC50029A3
      CC0029A3CC0053BDE100B3E0EF00D6D6D600CCCCCC00D6D6D600E7E7E7000000
      0000EFEFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000042C7420072BD7200A5A5A500EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00999999005C99
      5C001178110000450000406D4000000000000000000000000000D7D7D7002929
      2900212121002121210021212100212121002121210021212100212121001919
      1900191919001919190019191900191919001919190010101000101010001010
      1000101010001010100010101000101010004A4A4A00E0E0E000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000034849900147E990048A2B90078D0E60081D8F8005892DC003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E001F35820023377A00AEDFE800B8EDF1003B5B
      A30023377A0027387400959DB500000000000000000000000000000000000000
      000000000000000000000000000000000000F6F6F600323A3C00000000001919
      1900C5CCCE00CCCCCC0000000000E0E0E0006666660099999900BCBCBC00A7A7
      A700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004FC64F007CBE7C00737373008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C00737373005C99
      5C0011781100004C000040724000000000000000000000000000EFEFEF009999
      990066666600273030001B2021001B2021001919190019191900191919001919
      1900191919001919190010101000101010001010100010101000101010001010
      1000101010001010100019191900949494000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0E5
      E700147E99002497B2005BBCD4007BD5F6007BD5F6003770D3003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E0023377A0023377A0052729B003B5BA3001F35
      82001F358200273874002B3A6B00E6E7EC000000000000000000000000000000
      000000000000EFEFEF0042424200666666009999990033333300202020003333
      3300191919006666660094949400838383008383830000000000A7A7A7009494
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005EC15E0084BD8400666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600666666006666660066666600666666006666
      6600666666006666660066666600666666006666660066666600666666005897
      5800067106000053000040724000000000000000000000000000000000000000
      00000000000000000000E0E0E000A5A5A5007373730033333300191919001010
      1000101010001010100010101000101010001010100010101000101010001010
      10001010100033333300CCCCCC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000074B5
      C5002497B20033A4C00063D0EB0071DBF60067B2EA003770D3003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E0023377A0027387400273874001F3582001F35
      82001F358200273874002B3A6B00646D89000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300D6D6D600F6F6
      F600ADADAD0059595900ADADAD00BCBCBC0094949400D6D6D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000069CB69008DBD8D0099999900B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7
      B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700B7B7B700999999005292
      5200006C0000075D0700417E4100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0E0E000A5A5
      A500696969003B3B3B0010101000101010001010100010101000101010001010
      10007E7E86000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001AA9
      CC001AA9CC0035B8D90063D0EB0063D0EB00ABC4EC003770D3003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E0023377A002738740027387400485479000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000033333300535353000000000094949400000000000000
      00000000000059595900A7A7A700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000079D7790097C99700A2B8A200A2B8
      A2009DBA9D0095B5950099B5990099B5990095B5950099B5990099B5990095B5
      950099B5990099B5990095AD950099B5990099B5990095AD95009AB09A009AB0
      9A0095AD95009AB09A009AB09A0095AD950095AD95009AB09A0095AD95005199
      5100257F2500196F19004B894B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF00B0B0B000737373003333330033333300CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3CAD6003EAF
      CF0023BBE40023BBE40041D1F50081D8F800000000004C8AD4003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E0023377A00273874002B3A6B00B2B6C400E6E7
      EC00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C8C8C00C6C6C600D6D6
      D60099999900C6C6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000064DF640079D779006AC86A005EC1
      5E004FBE4F0043BC43003FB63F003FB63F003FB63F003FB63F003FAD3F003FAD
      3F003FAD3F003FAD3F003FA63F003FA63F003FA63F003FA63F003F9D3F003F9D
      3F003F9D3F0040944000409440004094400040944000409440003B913B00328C
      3200288328001E771E0052925200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A7A7E0008989
      DE008989DE009393E70067B2EA00C2E9FB0000000000CEDDF4003B77D8003D7C
      DA003D7CDA003975D100356BC700356BC7003062BD002A54AE00274EA800244C
      A0001F3F97001B378E001B378E0023377A00273874002B3A6B00646D89000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F600666666005353
      5300949494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B1BDDD009393
      E7009393E7009393E700A5A5F800000000000000000000000000000000000000
      0000C7CCD3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E6E7EC00C8C8F900D7D7FB0000000000000000000000000000000000E0E5
      E700E6E7EC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A18180001070800000C0F000013
      1B0000131B0000131B00004A5D0000617900003A4800003A480001405100004A
      5D0000566B0000566B0000617900006D8900006D8900006D890000759200007C
      9B000084A6000084A600008EB2000094B900009CC40000A5CF0000B3E00000BC
      EC0000BCEC0000BCEC0000BCEC0000CCFF000000000000000000000000000000
      000000000000AFAFAF00A4A4A4001AB7CB001AB7CB00CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000262E34000107080001070800000C
      0F00001F290000566B0000ABD600008EB200003A480000323F0001405100004A
      5D00004A5D00003A480000323F000140510000617900007C9B00007C9B00007C
      9B000084A6000084A600008EB2000094B900009CC40000A5CF0000ABD60000B3
      E00000B3E00000BCEC0000BCEC0000CCFF000000000000000000000000001AB7
      CB001AB7CB001AB7CB001AB7CB001AB7CB001AB7CB001AB7CB001AB7CB001AB7
      CB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000BE000000CC000000DC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C8C8CC00262E3400000C0F000028
      330000566B000084A600006D8900003A480000323F00003A480001405100182D
      32001A181800120C0A000000000000000000000C0F001138410000617900007C
      9B000084A6000084A600008EB2000094B900009CC40000A5CF0000A5CF00009C
      C4000094B90000B3E00000CCFF0000CCFF0000000000EFEFEF001AB7CB001AB7
      CB0078E7EB007DF3F80074DBDF006BC4C7006BC4C7006BC4C7001AB7CB001AB7
      CB001AB7CB00EFEFEF0000000000000000000000000000000000000000000000
      00000000AF000000BE000000CC000000DC000000EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B50051524E001747
      520000566B0001405100001F29000028330000323F0001405100113841002326
      27001F181600120C0A000000000000000000010708001509050011384100007C
      9B000084A6000084A600008EB2000094B900009CC40000A5CF0000A5CF000084
      A6000075920000A5CF0000CCFF0000CCFF00D5D5D5001AB7CB001AB7CB001AB7
      CB007DF3F8006BC4C7003A3A3A003333330033333300333333003C4B4C001AB7
      CB001AB7CB001AB7CB001AB7CB001AB7CB001AB7CB0000000000000000000000
      A7000000AF000000BE000000CC000000DC000000EB000000000000000000B8B2
      BA00A79DAB00C5BEC70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0E1E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009E9D9D002D3B
      3F00001F2900001F2900001F29000028330000323F0001405100113841002326
      2700120C0A00120C0A0000000000000000000000000015090500004A5D00008E
      B2000084A6000084A600008EB2000094B900009CC40000A5CF0000A5CF00007C
      9B0000566B00008EB20000CCFF0000CCFF00CCCCCC0078E7EB0076F6FB0076F6
      FB00326369001818180021212100333333003333330033333300333333002E2E
      2E001AB7CB001AB7CB001AB7CB001AB7CB001AB7CB0000000000000000000000
      A7000000AF000000BE000000CC000000DC000000EB0000000000C7C1CA004233
      4B0042334B0049395200C5BEC700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000292929007A7A7A00E4E4E4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEAE
      B000262E3400001F2900001F29000028330000323F0001405100113841001F18
      16002122220039617F00447BA2003C6C8E002B3B490000000000182D32000075
      92000094B9000094B900008EB2000094B900009CC40000A5CF0000ABD6000075
      9200003A4800006D890000CCFF0017D2FF0000000000748B8E006BC4C7006A8A
      8B00666666005252520021212100101010003333330033333300333333002E2E
      2E002228290018181800212121001AB7CB001AB7CB0000000000000000000000
      A7000000AF000000BE000000CC000000DC000000EB0000000000321B3B004E3C
      58006A6E8400564E6800B3AAB700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000454545003C3C3C00333333007A7A
      7A00C5C5C5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEDEDE002D3B3F00262E340045505500455055002D3B3F00312723001A18
      18003D6786005A99C7004684AE005694C1005A99C70029425500150905002326
      270017475200007C9B00009CC400009CC400009CC40000A5CF0000B3E0000084
      A60000131B000140510000CCFF0017D2FF000000000000000000666666006666
      6600696A6C00666666006666660022282900101010002E2E2E00333333002E2E
      2E00222829001818180018181800000000009691930000000000000000000000
      A7000000AF000000BE000000CC000000DC000000EB0000000000493952006A6E
      8400564E68007A6D810000000000000000000000000000000000000000000000
      00000000000000000000E1E1E500EEEFF000D7D7D700E5E5E5005A5A5A005A5A
      5A00DEDEDE00CCCCCC00C5C5C500B5B5B500B5B5B500B5B5B500CCCCCC00E5E5
      E5000000000000000000000000000000000000000000A5A5A500333333003333
      330010101000A5A5A50000000000000000005A5A5A0052525200454545003C3C
      3C00333333005A5A5A00C5C5C500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008D919200434343005E5C5F0051524E003A3A3A0027201A002B3B
      49004684AE00447BA200447BA200629EC8006EA8D1005694C1002B3B49001509
      0500312723002D3B3F00006D890000A5CF0000ABD60000BCEC0000ABD600007C
      9B0021222200182D320000ABD60093EFFF000000000000000000EFEFEF006D5D
      730058556D006C70750066666600525252002121210010101000333333002E2E
      2E002228290018181800181818000A0A0A00A4A4A40000000000000000000000
      A7000000AF000000BE000000CC000000DC000000EB00000000006A6E8400564E
      68007A6D8100000000000000000000000000F6F6F600EEEFF000E1E1E500D7D7
      D700ACACAC0085868B007B7B7B00ACACAC0099999900B5B5B5005A5A5A005A5A
      5A005A5A5A005A5A5A00B5B5B500BDBDBD00C5C5C500CCCCCC00C5C5C500A5A5
      A50099999900B7B7DE00D0CCF000000000000000000021212100212121002929
      2900191919003434390000000000000000006C6C6C00666666005A5A5A005252
      5200454545003C3C3C00333333005A5A5A00BDBDBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CCCCCC00797C7A006666660051524E003A3A3A0027201A002942
      5500346A900032628500326285003F749B00447BA2005694C10039617F001F18
      16003127230031272300182D32000084A600007C9B001747520017475200353F
      42004C4848004C4848008DC3D100000000000000000000000000000000000000
      00006D5D730063637400696A6C005C5C5C003A3A3A000A0A0A00181818002E2E
      2E0022282900181818001818180018181800AFAFAF0000000000000000000000
      A7000000AF000000BE000000CC000000DC000000EB000000000058556D007A6D
      810000000000000000000000000000000000ACACAC00ACACAC00B5B5B500ACAC
      AC00999999008D8D8D00848484009494940099999900A5A5A500ACACAC00ACAC
      AC00A5A5A500B5B5B500CCCCCC00CBD2D500D7D7D700DEDEDE00E5E5E500E5E5
      E50096969C002B2B9A00000099004040B3005C5CB20007071A00212121002121
      2100292929005252520099999900000000007A7A7A00727272006C6C6C006666
      66005A5A5A0052525200454545003C3C3C003333330045454500ACACAC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099959200B5B5B500707070003A3A3A001F1816003659
      75003F749B00326285003F749B005283A6003F749B003F749B00365975001F18
      160031272300312723001A1818001747520085A2A9008D9192009E9D9D00B5B5
      B500C8C8CC00D7D7D70000000000000000000000000000000000000000000000
      0000DFDFDF00625269006A6E8400645D60003A3A3A00181818001AB7CB001AB7
      CB00222829001818180018181800101010007D7D7D0000000000000000000000
      8D00000099000000A7000000AF000000CC000000EB00000000006D5D7300E4E1
      E60000000000000000000000000000000000EEEFF000D7D7D700A5A5A500ACAC
      AC00A5A5A5008D8D8D008D8D8D0099999900A5A5A500A5A5A50099999900B5B5
      B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A50030309E0000009900000099000000990008082D00212121001919
      190029292900737373003B3B87002020A6008282820082828200727272006666
      66005A5A5A0052525200494949003C3C3C0033333300292929001E1E1E003333
      3300A4A4A40000000000E0E1E200A0A2A4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D7D7D7009E9D9D004343430031272300353F42005283
      A6003D6786002E668B005694C100629EC8005A93BD005A93BD003F749B00262E
      340027201A00333333001A1818004C4848000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C5BEC7003B26440060717A003263690017484E001AB7CB0060FA
      F9001AB7CB001AB7CB001AB7CB001AB7CB003A3A3A0000000000000000003333
      3E003B3B4A003B3B4A003B3B4A0014145A000000EB0000000000D5D5D5000000
      000000000000000000000000000000000000A5A5A500A5A5A500ACACAC009999
      9900999999009494940094949400949494009494940094949400999999009999
      9900999999009999990096969C008E8E9F0083839C00737399007E7E9E006F6F
      95004D4D830030309E0000009900000099000000990010102E00212121001919
      1900292929007B7B7B0031317D0000009900A4A4A40099999900949494008C8C
      8C00828282007A7A7A006C6C6C00666666005A5A5A0052525200494949003C3C
      3C003333330020293200061B32000010210020293200A0A2A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000333333006C6C6B0085807B00617E9100598A
      AE0039617F00346A90005694C100629EC800629EC800629EC8005694C100384F
      5E0027201A003127230021222200AEAEB0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099939C0025B1BD002CBCCA002CBCCA001AB7CB001AB7
      CB001AB7CB0060FAF90060FAF9001AB7CB001AB7CB0000000000000000008B8B
      8B000000000000000000AFAFAF00181858000000EB0000000000000000000000
      000000000000000000000000000000000000B5B5B500B5B5B500ACACAC007E7E
      9E00505099004A4A9600646473005B5C61006E6E70005B5C6100848484007373
      7300666666002929290031317D000000990000009900000099002B2B9A000000
      840000006B0030309E000000990000009900000099000D0D4000292929002121
      2100292929007B7B7B0031317D0000009900BDBDBD00B4B4B400ACACAC00A0A2
      A400949494008C8C8C00828282007A7A7A006C6C6C00666666005A5A5A005252
      5200323D470000264C0000214200001B3800001429000010210020293200C0C1
      C200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000051524E00D7D7D70000000000B7CBDA004670
      8F00204B6B00346A90004F8BB6005A93BD005A93BD005A93BD005A93BD003659
      750027201A003A3A3A008D919200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1F7F8001AB7CB002CBCCA002CBCCA001B8793002E2E
      2E00222829001AB7CB001AB7CB001AB7CB001AB7CB000000000000000000696A
      6C00A4A4A400A4A4A4007D7D7D00181858000000EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003030
      850000006B00070764005151580066666600A5A5A5008D8D8D0099999900BDBD
      BD006E6E70005B5C6100515158005B5C61004B4B4B001010160021212C001414
      200010101600191922001919220010102E001717410015153900212121002929
      2900212121005B5C61002121530000004C00CCCCCC00C5C5C500BDBDBD00B4B4
      B400ACACAC00A0A2A400949494008C8C8C00828282007A7A7A006C6C6C005256
      5900061B3200001B38000021420000264C0000214200001B3800001429000010
      2100454545005256590010182200828282000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AEAEB000D7D7D700D6E5F100B7CBDA003961
      7F001F577A003C6C8E003F749B004684AE004684AE005A99C7005A99C7003F74
      9B002B3B4900797C7A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFEFEF0053868F003263690017484E00222829002E2E
      2E002228290018181800181818000A0A0A001AB7CB0000000000000000000000
      4C0000004C0000004C0000006100000099000000EB0000000000000000000000
      00000000000000000000000000000000000000000000000000006E6E70005555
      73004C4C66008D8D8D008484840073737300ACACAC008D8D8D0099999900BDBD
      BD00ACACAC005D5D7A0066666600848484007B7B7B0000000000000000000000
      000000000000EEEFF000E1E1E500CBD2D500C5C5C50039394300191919002929
      29001010100010101000414141008D8D8D00C5C5C500CCCCCC00CCCCCC00C5C5
      C500BDBDBD00B4B4B400ACACAC00A0A2A400949494008C8C8C0082828200171D
      2400000C19000014290000142900001B38000021420000264C0000214200001B
      3800001B3800001B380000142900000C19001018220082828200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE0085A2A900789FBB00789FBB003C6C
      8E00447BA20032628500326285004F8BB6005A93BD00629EC800629EC8004F8B
      B60032628500A5A3A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E1E600717171003A3A3A000A0A0A00212121002E2E
      2E002228290018181800181818000A0A0A0018181800B8B2BA00000000000000
      A7000000AF000000BE000000CC000000DC000000EB0000000000000000000000
      0000000000000000000000000000000000000000000000000000848484005555
      73005353660084848400848484006E6E70006E6E70005A5A5A00848484007373
      730094949400777780004E4E690085868B0085868B00A5A5A500A5A5A500A5A5
      A500A5A5A500B5B5B500B5B5B500B5B5B500B5B5B50085868B00191919002929
      29001010100019192200C5C5C500C5C5C500B4B4B400BDBDBD00C5C5C500CCCC
      CC00CCCCCC00C5C5C500BDBDBD00B4B4B400ACACAC00A0A2A4004B5C61000008
      10000003070000081000000C1900001021000019330000193300002142000021
      420000264C0000214200001B3800001B380000102100000C1900101822008282
      8200B9D7E0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007491A700789FBB00789FBB003F74
      9B003F749B00326285002A557300447BA200629EC8006EA8D1005A99C7005A93
      BD005283A60085A2A90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D500717171003A3A3A0000009900000099002E2E
      2E002228290018181800181818000A0A0A001818180049395200000000000000
      A7000000AF000000BE000000CC000000DC000000000000000000000000004242
      420042424200000000000000000000000000000000000000000085868B001919
      22002B2B370018182F0023233D006666660069696A005B5C61007B7B7B006E6E
      7000848484004A4A560000003B0000004200000042000000420015154B000000
      3B0000003300000033000D0D400017174100171741001717410010102E002B2B
      8C0008082D0010102E00151539001717410099999900A0A2A400ACACAC00B4B4
      B400BDBDBD00C5C5C500CCCCCC00BDBDBD00B4B4B400ACACAC000D5B6F00003C
      4B0000283200000E12000003070000081000000C190000102100001429000019
      330000223C0000223C0000264C0000214200001B380000142900153C55001194
      C20004C1F300E0F4F90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000095B2C50095B2C50089A9C100346A
      9000346A90003C6C8E002A5573003F749B005A93BD00598AAE005A93BD00629E
      C800598AAE00384F5E006C6C6B00D7D7D7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008C8CB6001B1B8D0012127E0000009900000099002E2E
      2E002228290018181800181818000A0A0A000000000058556D006A6E84000000
      00000000AF000000BE0000000000000000000000000000000000CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000003030
      AC0000009900000099000606960064647300B5B5B500A5A5A500CBD2D500B5B5
      B500B5B5B5004D4D8300000099000000990000009900000099003030AC000000
      8C0000006B000000840000009900000099000000990000009900000099000000
      990000009900000099000000990000009900CCCCCC00A4A4A400A4A4A400ACAC
      AC00B4B4B400BDBDBD00C5C5C500CCCCCC00CCCCCC0088B8C4000085A600006E
      8A0000576D00003F4F0000283200000E12000003070000081000000C19000010
      2100001429000019330000223C0000234800002348000F3A5F0013739F000041
      580000ABD700BFE5EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000DEDEDE00797C7A006A879D00789FBB003C6C
      8E0032628500326285003F749B005A99C700447BA200326285004F8BB6004F8B
      B60039617F00333333000107080043434300D7D7D70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006363A8000000AF000000990000009900000099002E2E
      2E002228290018181800181818000A0A0A000A0A0A0042334B004E3C58000000
      00001010B4000000BE00000000000000000000000000CCCCCC00101010000A0A
      0A00A29B9A000000000000000000000000000000000000000000000000000000
      9900000099000000990006069600666666006666660066666600666666006666
      66006666660037378900000099000000990000009900000099002828A9000000
      8C0000006B000000840000009900000099000000990000009900000099000000
      9900000099000000990000009900000099000000000000000000CCCCCC00ACAC
      AC00A4A4A400ACACAC00B4B4B400BDBDBD00C5C5C50066CBE40000B7E500009E
      C5000085A600006E8A0000576D00003F4F000028320000080A00000307000008
      1000000C19000010210000142900001B3800022C540016587A0000264C000000
      00000088AA00C0DBE10000000000000000000000000000000000000000000000
      00000000000000000000000000006C6C6B00312723002942550046708F003D67
      860036597500346A90004F8BB6005A99C7004684AE004684AE005694C1002E66
      8B00455055006C6C6B001A1818000000000051524E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000464694000000AF000000990000009900000099002228
      29001818180018181800181818000A0A0A000A0A0A002B1A3300C7C1CA000000
      000000000000000000000000000000000000CCCCCC0010101000101010005252
      5200000000000000000000000000000000000000000000000000000000000000
      9200000092000000920000009900000099000000990000009900000099000000
      99000000990000009900000099000000990000009900000099002020A6000000
      8C0000006B00000084000000990000009900000099002020A6004040B3004040
      B3004040B3004040B3007E7ECB007E7ECB000000000000000000000000000000
      0000CCCCCC00A4A4A400A4A4A400ACACAC00B4B4B40038B0D30007BBED0000CC
      FF0000B7E500009EC5000088AA0000708C0000506300002F3B0000121C000003
      07000003070000081000000C1900021729001D527500022C5400001429000014
      290000708C000000000000000000000000000000000000000000000000000000
      000000000000000000009995920021222200312723002B3B4900164E71001F57
      7A002E668B004684AE005A99C7005A99C7005A99C7005A99C7002B84BF002071
      9E00797C7A006C6C6B001A181800000000003A3A3A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000373796001E2CA1001E2CA1004C6A74004C6A74004C6A
      740053868F0053868F0053868F002B4A4F00131E21006363740042334B005C5C
      5C000000000000000000101010004C444C0018181800212121000A0A0A000000
      0000000000000000000000000000000000000000000000000000DEDEDE001010
      16001919220021212100212121002121210021212C002121210021212C001919
      1900191922002121210021212C00292929002B2B30002B2B30002B2B37003434
      39003A3A3A0053536600F6F6F600D7D7D700CCCCCC00DEDEDE00EEEFF000B5B5
      B5007B7B7B00BDBDBD0066666600999999000000000000000000000000000000
      000000000000E0F4F900C5C5C500A4A4A400A4A4A4004695B600139BCB000DAC
      DC0007BBED0000CCFF0000B9E700009EC50000708C0000576D00003F4F00002F
      3B0000121C000000000000080A001F3F60000622360000264C0000000000022C
      54005099AB000000000000000000000000000000000000000000000000000000
      000000000000000000006666660021222200333333004550550030606F001F57
      7A00204B6B003D6786005283A600598AAE005283A600346A90001A6284003D67
      86006C6C6B003A3A3A00120C0A0033333300B5B5B50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A4A4A400748B8E0060717A0066879300516974005169
      740051697400485C650050747C00485C65004C6A740058556D002E2E2E000000
      0000222829004242420051517100434384003B3B4A0010101000645D60000000
      0000000000000000000000000000000000000000000000000000000000001919
      1900191919003A3A3A005A5A5A00737373009999990085868B00212121000000
      000021212100333333004B4B4B005A5A5A00737373008484840099999900ACAC
      AC00BDBDBD001919190073737300212121005A5A5A00ACACAC00EEEFF0007B7B
      7B00414141007B7B7B00212121007B7B7B000000000000000000000000000000
      0000000000000000000000000000E0F4F900C5C5C50064889E001F7CAA00198A
      B800139BCB000DACDC0007BBED0007BBED000096BC00007D9C00006A85000054
      6900003F4F000028320000283200153C550000264C0000142900001429000041
      5800A0BDC4000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000797C7A0051524E00455055002C305F003935
      4200333333003A3A3A0051524E005E5C5F005E5C5F0043434300393542003935
      420022234D002D3B3F0070707000B5B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096919300645D600078717A004C44
      4C0054555D005C5C5C0060717A00D5D5D500EFEFEF006D5D7300000000000000
      0000333333005C5C5C0051517100515171003B3B4A0000000000CCCCCC000000
      0000000000000000000000000000000000000000000000000000000000004141
      4100101016003A3A3A005A5A5A007373730099999900A5A5A500212121000000
      000021212100343439004B4B4B00666666007B7B7B008D8D8D00A5A5A500BDBD
      BD00CBD2D500343439007B7B7B00212121005A5A5A0094949400EEEFF0009999
      9900333333007B7B7B00212121007B7B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000090A5BB002C5B8600266B
      97001F7CAA00198AB800139BCB0004C1F30000BFEF0000ABD7000096BC00007D
      9C00006A8500005063001A4B6A000217290000264C000003070000264C000E64
      7900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999592001B1B650000007B003636
      70006C6C6B006C6C6B0060656C0060656C0060656C0022234D0000035A000000
      660000007B0033337C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFAFAF00BBAFAD00F1F7F8000000000000000000B8B2BA004E3C58006363
      740058556D004E3C5800E4E1E6000000000000000000E4E1E6002B1A33001818
      18000000000000000000212121003333330018181800A29B9A00BBAFAD00BBAF
      AD00000000000000000000000000000000000000000000000000000000007B7B
      7B00101010003A3A3A005A5A5A007373730099999900B5B5B5002B2B30001919
      190021212100343439004B4B4B00666666007B7B7B008D8D8D00A5A5A500BDBD
      BD00CBD2D500414141008D8D8D00212121005A5A5A0094949400EEEFF000B5B5
      B5002121210094949400212121007B7B7B000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E1E20064889E002C5B
      86002C5B8600266B97002079A6000DACDC0007BBED0000CCFF0000B9E70000A6
      CF00008FB3000B719200153C550000264C000010210000142900002F3B0080A5
      AF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A3A2001B1B650000008B004D54
      880085807B00707070005E5C5F005E5C5F0060656C00204B6B00000066000000
      8B0000008B005050970000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A4
      A400AC938E00EEE5E300A4A4A40000000000A79DAB003B264400636374006363
      7400564E6800EFEFEF0000000000000000000000000000000000E4E1E600564E
      68006A6E8400778194003B264400B3AAB70000000000A4A4A400EFEFEF00AC93
      8E00AEA5A300000000000000000000000000000000000000000000000000B5B5
      B500212121003A3A3A005A5A5A007373730099999900B5B5B500525252001919
      190021212100343439004B4B4B00666666007B7B7B008D8D8D00A5A5A500BDBD
      BD00CBD2D5005252520094949400212121005A5A5A0094949400EEEFF000B5B5
      B50010101000ACACAC0041414100A5A5A5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDCB
      D800476D93002C5B860029628D001694C30010A2D2000DACDC0007BBED0000CC
      FF0000B7E5001E719B000622360000264C0000030700002348000D5B6F00E0F4
      F900000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7D7D7002B2B770000007B005E63
      8F00707070003A3A3A005E5C5F004C48480043434300384F5E0000035A000000
      7B0000008B005050970000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CCCCCC005D47
      4300EDDBD80000000000CCCCCC00969193004939520063637400778194004E3C
      5800DFDFDF00000000000000000000000000000000000000000000000000D5D5
      D50042334B008392A300778194004E3C580099939C00CCCCCC0000000000EDDB
      D80063575500CCCCCC0000000000000000000000000000000000000000000000
      00000000000021212100333333004B4B4B0069696A0094949400737373001919
      190019191900343439004B4B4B00666666007B7B7B008D8D8D00A5A5A500BDBD
      BD00CBD2D500666666008D8D8D00212121005A5A5A0099999900EEEFF000E5E5
      E500B5B5B500C5C5C5003A3A3A00737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B0C0D0003A628B002079A6001B86B4001694C30010A2D2000BB1
      E20007BBED001A4B6A0000264C0000102100001933000041580090A5BB000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004D54880000007B005E63
      8F0085807B00434343006C6C6B006C6C6B0051524E003B6162000E2665000000
      7B0000007B009393B10000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E353300905C
      5200D3B4AD000000000000000000C0BFC00058556D008392A300564E68009185
      9600000000000000000000000000000000000000000000000000000000000000
      000085858500493952008799AA006A6E8400C0BFC0000000000000000000EFCB
      C400B8867C003E35330000000000000000000000000000000000000000000000
      000084848400737373005B5C6100525252004141410033333300212121002121
      210021212100212121002929290033333300333333003A3A3A00414141005252
      52006666660041414100B5B5B50099999900CCCCCC00EEEFF000E5E5E500E5E5
      E500F6F6F600BDBDBD0021212100737373000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDCBD8002C5B8600266B97002079A600198AB8001694
      C300198AB8000F3A5F000023480000080A00003155002D7A8D00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8C8CC0033337C004D54
      8800797C7A006C6C6B006C6C6B0066666600666666003B6162000E2665000303
      70004D5488000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEA5A3009873
      6C009A675D00D3B4AD00EEE5E300EEE5E300AFAFAF0054555D00321B3B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A1234004C444C00AFAFAF00EEE5E300EEE5E300EFCBC400C391
      8700A07C7500AEA5A30000000000000000000000000000000000000000000000
      000000000000D9EEF700E5E5E5008E8EDA004444C9006C6CC7004684DA008989
      C0006EA8D600949DAC00939DA200B5B5B500B5B5B500ACACAC00ACACAC009999
      9900A5A5A500D7D7D700EEEFF000DFE4E600D3D8DA00C9CFD300C9CFD300C9CF
      D300F6F6F600D7D7D700B5B5B500F6F6F6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000476D93002C5B86002C5B8600266B97001F7C
      AA002079A600054B710000121C0000223C000D718B00CFDDE000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B500617E
      91007880930060656C004550550060656C00707070005E5C5F002C305F004D54
      8800DEDEDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A29B9A00594D4A00AEA5A300EFEFEF0000000000EFEFEF007D7D7D000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000078717A00EFEFEF0000000000EFEFEF00BBAFAD0063575500A29B
      9A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7E5F700DCD9F400D0CCF000D0CCF000987F
      DD00CBD2D500A1AAB100D7D7D7009898E1000000DC000000DC001D1DCA003939
      C5004E8EEA004D4FD300D6DCDE00D6DCDE00D6DCDE00D6DCDE00D6DCDE00D6DC
      DE00DFE4E600F6F6F60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0C0D0003A628B002C5B86002962
      8D001F7CAA00054B710000121C000085A6009FC4CD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDC4
      D0009E9D9D00999592008D9192008D919200A5A3A20099959200A5A3A2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A29B9A00947E7A00F0DEDA0000000000C0BFC000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0BFC0000000000000000000AC938E00AC938E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1E1E500B5B5B500CCCCCC00E1E1E500E7E5F700DFDCF500DCD9F400DCD9
      F4004E4DF9007A79FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0F4F90090A5BB003A62
      8B001B86B40007BBED0000B7E5009FCEDA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAEE
      F300BDC4D000AEAEB000A5A3A200A5A3A200CCCCCC00EAEEF300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D5D5D500A4A4A400EFEFEF00EFEFEF0066666600CCCC
      CC00000000000000000000000000000000000000000000000000000000000000
      0000CCCCCC0066666600EFEFEF00EFEFEF00A4A4A400D5D5D500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0F4
      F90063A9C90047D4F800BFE5EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EAEEF300DEDEDE00EAEEF300EAEEF3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DFDFDF00AFAFAF00C0BFC0008585
      8500000000000000000000000000000000000000000000000000000000000000
      000096919300D5D5D500AFAFAF00DFDFDF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EAEEF300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B0C9BA00BCCDC8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADBFCC009AB4C70077A2B30016962E00009900000099000024B129000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000309EEC00007BE500006A
      E100005BDE000042D9000039D7000063E00088DCF80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A5707B009040500099405200A3405400B43F5600B5405700B54057000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009191AD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009191B700000000000000
      000000000000000000000000000000000000000000000000000000000000A3C6
      AD0058B15D0064B56A00A3C6AD00BBC8D00091AFC400749DBB006C99B8006091
      B5003576A9003576A900148C400000CB000000BB000000B0000000C6000028C1
      540096C2DA00BACCD60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090D5F700008BE800007BE500006A
      E100005BDE000042D9000039D7000021D3000021D30000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009191AD0000002100000099000000A5000000A5000000
      A5000000A5000000AD000000AD000000AD000000B5000000B5000000B5000000
      BD000000BD000000BD000000BD000000C600000019009191B700000000000000
      000000000000000000000000000000000000000000000000000000000000A3C6
      AD00039A04001E9A2F005187B1006494B600749EBA00749EBA00749EBA006494
      B6003576A9002F7A940000C8000000B1000026BE630010C32B001BC047000BBB
      1C0026B0630056AFE2006BB5DF0088BDDC00B3CAD70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFF1FF0060D8F80000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D7000021D3000019D10000CCFF000073FF00003A
      FF00003AFF00001AFF00001AFF000008FF008084FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009191AD00000000000000100000001000000010000000
      1000000010000000100000001000000010000000100000001000000010000000
      100000001000000010000000100000001000000007009191B700000000000000
      00000000000000000000000000000000000000000000000000008ABF920032A7
      35000B98170032789E003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A90011AD350000BC000011A735000BC81C0000BF000041B0AA0056AF
      E2002BB9710046ABB70056AFE20056AFE20056AFE2006BB5DF0096C2DA00BACC
      D600000000000000000000000000000000000000000000000000000000000000
      00000000000000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D7000021D3000019D1000052FF000052FF000042
      FF000033FF000021FF000021FF000008FF000008FF00B0BBFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      000000000000000000000000000000000000F5E0E400F8D0D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009191AD000909370000002100000029000000
      2900000029000000290000002900000029000000290000002900000029000000
      2900000029000000290000002900090945008F8FB60000000000000000000000
      00000000000000000000000000000000000000000000A2C6AC0070B8770063B4
      6900449087003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A900288B7F00327B9E002B86890005C50E000099000041AAAA0056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000000000000000
      0000B0FAFE0000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D7000021D3000019D1000066FF000066FF00004A
      FF00004AFF00003AFF000029FF000021FF000010FF000008FF000008FF009094
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000008E808300938084000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      0000000000000000000000000000EBA0AF00DC103900FFE0E600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010102E0000002900000033000000
      330000003300000033000000330000003300000033000000330000003A000000
      3A0000003A0000003A0000002900101037000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000064B5
      6A00339265003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A9004BAFC6001BA0470036A78E0056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000000000000000
      000080F1FC0000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D7000021D3000019D100006BFF00006BFF00005A
      FF00004AFF00003AFF00003AFF00001AFF00001AFF000008FF000000FF000000
      FF003032FF000000000000000000000000000000000000000000000000000000
      000000000000E1DFDF0021000700210007009380840000000000000000000000
      000086404E006B00160077001800D09FA900B35064009C001F00AC0022000000
      00000000000000000000D8607800C6002800D3002A00E8506E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007878990010104200000033000000
      420000005200000052000000420000005A0000005A000000420000005A000000
      5A0000005A0000004200111152007979A5000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008ABF920064B5
      6A005A8DB4003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A90056AFE20056AFE20046ABB7004BAC
      C60056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000000000000000
      000080F1FC0000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D7000021D300004CDC00007BFF00007BFF00006B
      FF00005AFF00004AFF00003AFF000029FF000021FF000010FF000010FF000008
      FF000008FF005059FF0000000000000000000000000000000000000000000000
      0000000000004A404200210007002100070031000A006C404900000000000000
      000086404E006B001600770018000000000096102B009C001F00AC0022000000
      0000F5E0E400C4304D00BC002600C6002800D3002A00DD002C00F8B0BE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041416800000021000000
      52000000A5000000A500000029000000AD000000AD00000029000000BD000000
      BD00000063000000330041417400000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCCDC8007DBC8500BBCD
      C7005A8DB4003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000000000000000
      00009FF2FC0000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D7000021D3000072ED000084FF000084FF000073
      FF000066FF00004AFF00004AFF00003AFF000029FF000021FF000021FF000010
      FF000010FF000010FF0000000000000000000000000000000000000000000000
      0000A3A0A10017000500170005002700080031000A003B000C005C202C00DFD0
      D30086404E006B00160077001800D8AFB700D59FAA009C001F00AC002200E6BF
      C700BB103200B6002400BC002600C6002800D3002A00DD002C00EA2048000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041416800000021000000
      52000000A5000000A500000029000000AD000000AD00000029000000BD000000
      BD00000063000000330041417400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000089BF9100A2C6AC000000
      00005A8DB4003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000000000000000
      00000000000000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D700008FF5000099FF000099FF00008CFF00007B
      FF000073FF000066FF000052FF00003AFF00003AFF000029FF000029FF000021
      FF000021FF000021FF00607AFF00000000000000000000000000000000000000
      00001310110017000500170005002700080031000A003B000C0045000E005A10
      1F00762838006B00160077001800B25F7000E6BFC7009C001F009C001F009C00
      1F00AC002200B6002400BC002600C6002800D3002A00DD002C00E7002E00F770
      8B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041416800000021000000
      52000000A5000000A500000029000000AD000000AD00000029000000BD000000
      BD00000063000000330041417400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E7CAC003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20061A9
      D30069A4C9005DABD8005AADDD0056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000000000000000
      0000DFF1FF0000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000042D9000039D70000A5FF0000A5FF000099FF000099FF000084
      FF00007BFF00006BFF00005AFF00004AFF00003AFF000029FF000029FF000029
      FF000029FF000029FF00204AFF00000000000000000000000000000000006060
      60000D0003000D000300210007002100070031000A003B000C0045000E005200
      10005A00120066001500A14F6000DDBFC50096102B0095001E0095001E00A400
      2100AC002200B6002400BC002600C6002800D3002A00DD002C00E7002E00EE00
      3000FFE0E6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009191B70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20065A7
      CE00749EBA00749EBA00749EBA00749EBA0067A5CC0056AFE20056AFE20073B7
      DE0000000000000000000000000000000000000000000000000000000000B0FA
      FE0000E1F90000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE00004CDC0000A5FF0000B5FF0000B5FF0000B5FF0000A5FF000094
      FF00008CFF000073FF000066FF000052FF00004AFF00003AFF000033FF000033
      FF000033FF00D0D0FF0000000000000000000000000000000000000000007F7F
      7F000D0003000D000300210007002100070031000A003B000C0045000E005200
      10005A0012006300140000000000A34054009C2F45008D001C0095001E00A400
      2100AC002200B6002400BC002600C6002800D3002A00DD002C00E7002E00FA9F
      B100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041416800000021000000
      52000000A5000000A500000029000000AD000000AD00000029000000BD000000
      BD00000063000000330041417400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9006494B600709BB900558AB2004983AE003D7B
      AB003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20065A7
      CE00749EBA00749EBA00749EBA00749EBA006CA2C40056AFE20056AFE20073B7
      DE000000000000000000000000000000000000000000000000000000000010F0
      FC0000E1F90000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E100005BDE000084EF0000AEFF0000BDFF0000BDFF0000B5FF0000B5FF000099
      FF000099FF00007BFF00006BFF00005AFF000052FF000042FF000042FF00003A
      FF00103EFF000000000000000000000000000000000000000000000000000000
      0000C1BFC00022101400210007002100070031000A003B000C0045000E005200
      10005A00120063001400C89FA70000000000EFDFE2008D001C0095001E00A400
      2100AC002200B6002400BC002600C6002800D3002A00E1204600F8D0D8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041416800000021000000
      52000000A5000000A500000033000000520000005200000033000000BD000000
      BD00000063000000330041417400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9003576A9003576A9003576A9003576A9003576
      A9003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20065A7
      CE00749EBA00749EBA00749EBA00749EBA006CA2C40056AFE20056AFE20073B7
      DE000000000000000000000000000000000000000000000000000000000000EE
      FC0000E1F90000CFF50000BEF20000ABEE00009DEB00008BE800007BE500006A
      E1000063E00000CCFF000042D9000039D7000042D9000073E7000093F20000B5
      FF000099FF000084FF000084FF000066FF000066FF000052FF00004AFF000042
      FF00A0B7FF000000000000000000000000000000000000000000000000000000
      000000000000E1DFDF00483035002700080031000A003B000C0045000E005200
      10005A001200630014006B001600C89FA700000000008D001C0095001E00A400
      2100AC002200B6002400BC002600C6002800DE405F00F6EFF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000064649400414174002B2B6400000021000000
      5200000083000000290000002900000000000000100000003300000029000000
      990000006300000033001F1F6400101037004141740000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9003576A9003576A9003576A9003576A9003576
      A9003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE2005AAD
      DD0065A6CE0069A4C9006DA2C400749EBA006CA2C40056AFE20056AFE20073B7
      DE000000000000000000000000000000000000000000000000000000000000EE
      FC0000E1F90000CFF50000BEF20000ABEE00009DEB00008BE800007BE500007B
      E50000AEFF0000A5FF000029D4000039D7000039D7000042D9000042D90000AE
      FF0000AEFF00008CFF000084FF00006BFF00006BFF000052FF000052FF00004A
      FF00BFDBFF000000000000000000000000000000000000000000000000000000
      00000000000000000000F6EFF0008060660031000A003B000C0045000E005200
      10005A001200630014006B00160099405200F6EFF0008D001C0095001E00A400
      2100AC002200B6002400BC002600E47F93000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009191B700101037000000100010104A00000021000000
      52000000290000001000000052000000990000008D0000003300000010000000
      2100000063000000330011115200000010001010370041417400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9003576A9003576A9003576A9003576A9003576
      A9003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20056AF
      E20056AFE20056AFE20056AFE20056AFE2005AADDD0056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000C0F5FD0000EE
      FC0000E1F90000CFF50000BEF20000ABEE00009DEB00007BE50000AEFF0000CC
      FF0000BDFF000021D3000019D1000021D3000029D4000031D6000031D60000BD
      FF0000B5FF000099FF000099FF00007BFF00006BFF00005AFF00005AFF000052
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B19FA3003B000C0045000E005200
      10005A00120063001400D9BFC40000000000D09FA9008D001C0095001E009C00
      1F00AC002200BB103200F8B0BE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009191B70000000000090945000000210011115200000021000000
      4A0000003300000033000000BD0000000700000029000000BD00000019000000
      33000000520000003300111152000000210009094500000000009191B7000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9003576A9003576A9003576A9003576A9003576
      A9003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000B0FAFE0000EE
      FC0000E1F90040D9F80000000000DFF1FF00408CE800007BE50000BDFF0000BD
      FF0000BDFF000010CF000010CF000019D1000021D3000029D4000029D4000093
      F20000BDFF0000A5FF000094FF00007BFF000073FF00006BFF00005AFF003073
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000096757B0045000E005200
      10005A0012006300140000000000D8AFB700891028008D001C0095001E009C00
      1F00AC002200DE8F9F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B220000000000090945000000210011115200000021000000
      4A000000330000004A0000008D00000000000000000000009200000029000000
      330000005200000033001111520000002100090945000000000009090C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9003576A9003576A9003576A9003576A9003576
      A9003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE0000000000000000000000000000000000000000000000000080FFFF0000EE
      FC0000E1F900000000000000000000000000CFE3FA000063E00000BDFF000099
      FF000031DD000000CC000000CC000010CF000010CF000021D3000021D3000021
      D30000BDFF0000AEFF0000A5FF000084FF000084FF00006BFF00006BFF00005A
      FF0070AAFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000806066003E000C0048000E005200
      10005A00120063001400F6EFF000C38F9A0084001B00A42F4700A42F47009C00
      1F00AC002200AC002200D9708500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B220000000000090945000000210011115200000021000000
      5200000033000000070000009200000092000000A50000007B00000007000000
      210000005A000000330011115200000021000909450000000000383848000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003576A9003576A9003576A9003576A9003576A9003576A9003576A9003576
      A9003576A9003576A9003576A9003576A90056AFE20056AFE20056AFE20056AF
      E20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20056AFE20073B7
      DE00000000000000000000000000000000000000000000000000B0FAFE0000EE
      FC0000E1F900000000000000000000000000000000000053DD0000BDFF000031
      D6000021D3000010CF000000CC000000CC000010CF000019D1000019D1000019
      D100007BE50000B5FF0000A5FF00008CFF000084FF00006BFF00006BFF00005A
      FF00005AFF000000000000000000000000000000000000000000000000000000
      00000000000000000000E4E0E1005330370031000A003E000C0048000E005200
      10005A001200630014009A4F5E000000000084001B000000000095001E009C00
      1F00AC002200AC002200BC002600D4405E000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009191B70000000000090945000000210011115200000021000000
      5200000063000000330000001000000010000000100000001000000033000000
      6A0000006A0000003300111152000000290009094500000000009191B7000000
      000000000000000000000000000000000000AAB7C700768DB200768DB2006D87
      AF003473A7003473A7003473A7003D7BAB004982AE00548AB1006494B6006494
      B6003576A9003576A9003576A9003576A90052A9E1002A6CD900154BD6002360
      D8003074DB003982DD004695DF004EA3E10056AFE20056AFE20056AFE20073B7
      DE000000000000000000000000000000000000000000000000000000000000EE
      FC0000E1F90000000000000000000000000000000000005BDE00004CDC000031
      D6000029D4000010CF000010CF000000CC000000CC000010CF000010CF000010
      CF000010CF000093F20000AEFF000094FF00008CFF00007BFF00006BFF000066
      FF000066FF00DFF1FF0000000000000000000000000000000000000000000000
      000000000000B7B0B200381018002700080031000A003E000C0048000E005200
      10005A0012006600150066001500E5CFD400C9939E000000000095001E009C00
      1F00AC002200AC002200BC002600C6002800D6204500F8D0D800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008F8FB600101037000000070010104A00000021000000
      52000000A50000007B0000002900000029000000290000002900000083000000
      BD00000063000000330011115200000007001010370000000000000000000000
      000000000000000000000000000000000000000000004C6BA00023498F002349
      8F002A5A99003576A9003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003576A9003163DA001C4FDA001C4FDA001C4F
      DA001C4FDA001F52DC001F52DC001F52DC001F52DC00295DDD00386FDE00386F
      DE006285DB007795D9008CA4D800B5C2D50000000000000000000000000000EE
      FC0000E1F900000000000000000000000000000000000063E0000053DD000039
      D7000029D4000019D1000010CF000000CC000000CC000010CF000010CF000010
      CF000010CF000010CF000084EF000099FF00008CFF00007BFF000073FF00006B
      FF00006BFF000000000000000000000000000000000000000000000000000000
      00008680810017000500210007002100070031000A003E000C0048000E005200
      10005A00120066001500811F320099405200F6EFF000DBAFB80095001E009C00
      1F00AC002200AC002200BC002600C6002800D0002A00DD002C00FA9FB1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007979A500414174002B2B6400000021000000
      52000000A5000000A500000029000000AD000000AD00000029000000BD000000
      BD000000630000003300323270008F8FB600A8A8C70000000000000000000000
      00000000000000000000000000000000000000000000BEC8D00042629C002349
      8F0023498F002E659F003576A9006494B600749EBA00749EBA00749EBA006494
      B6003576A9003576A9003576A9003365D800275ADF00275ADF00275ADF00275A
      DF002A5DE1002A5DE1002A5DE1002A5DE1002E61E3002E61E3002E61E3002E61
      E3002E61E3003265E5003B6CE400ACBCD700000000000000000000000000DFF1
      FF0040E9FB000000000000000000000000002095EA00006AE100005BDE000042
      D9000031D6000021D3000019D1000010CF000000CC000000CC000000CC000010
      CF000010CF000000CC000000CC0000000000DFF1FF000084FF000073FF00006B
      FF00006BFF000000000000000000000000000000000000000000000000005250
      51000D00030017000500210007002100070031000A003E000C0048000E005200
      10005A0012006F0F2200EFDFE20000000000C3808D008D001C0095001E009C00
      1F00AC002200AC002200BC002600C6002800D0002A00DD002C00DD002C00F460
      7E00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000041416800000021000000
      52000000A5000000A500000029000000AD000000AD00000029000000BD000000
      BD00000063000000330041417400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BEC8D0004262
      9C0023498F00264D9100326EA4006494B600709BB900558AB2004983AE003D7B
      AB003576A9003576A900366CCE003164E5003164E5003164E5003164E5003568
      E6003568E6003568E6003568E600386BE800386BE800386BE800386BE8003C6F
      EA003C6FEA005782E700B7C4D700000000000000000000000000000000000000
      00000000000080F1FC00CFF4FD00A0DAF800008BE800006AE100005BDE000042
      D9000039D7000029D4000019D1000010CF000000CC000000CC000000CC000000
      CC000000CC000000CC006061DF000000000000000000000000004095FF00006B
      FF00006BFF000000000000000000000000000000000000000000F6EFF0001310
      11000D00030017000500210007002100070031000A003E000C0048000E005200
      100063001400D9BFC400D9BFC400A3405400A42F4700931F370095001E009C00
      1F00AC002200AC002200BC002600C6002800D0002A00DD002C00DD002C00EE00
      3000FC90A6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006565890010104200000033000000
      4A0000005200000052000000420000005A0000005A000000420000005A000000
      5A00000052000000420010104A00646494000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A9B7
      C7002D51930023498F00285295003473A7003576A9003576A9003576A9003576
      A9003576A9003773C1003C6FEA003C6FEA003C6FEA003C6FEA004073EC004073
      EC004073EC004073EC004073EC004477EE004477EE004477EE004477EE00477A
      F000789BE500C0CBD60000000000000000000000000000000000000000000000
      0000000000000000000000000000009DEB00008BE800006AE100005BDE000042
      D9000042D9000029D4000021D3000010CF000010CF000000CC000000CC000000
      CC000000CC00000000000000000000000000000000000000000000000000006B
      FF0070AAFF00000000000000000000000000000000000000000000000000B0AF
      AF000D00030017000500210007002100070031000A003E000C0048000E006820
      2E007F344300D9BFC40099405200931F3700F6EFF000B43F5600A4002100A410
      2E00AC002200AC002200BC002600C6002800D0002A00DD002C00DD002C00EA20
      4800F6EFF0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010102E0000002900000033000000
      330000003300000033000000330000003300000033000000330000003A000000
      3A0000003A0000003A0000002900101037000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A9B7C7002D51930023498F002A5A99003576A9003576A9003576A9003576
      A9003877B600487BEB00487BEB00487BEB004A7DF1004A7DF1004A7DF1004A7D
      F1004A7DF1004E81F3004E81F3004E81F3004E81F3005184F5005184F5007FA2
      E900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009DEB00008BE800006AE1000063E0000042
      D9000042D9000029D4000021D3000010CF000010CF000000CC000000CC000000
      CC009F9FEC00000000000000000000000000000000000000000000000000006B
      FF00B0D0FF000000000000000000000000000000000000000000000000000000
      00004A40420017000500210007002100070031000A003E000C006C404900F6EF
      F00086404E00A3606E00000000000000000000000000A2102D00AC002200F5E0
      E400B8304C00B6002400BC002600C6002800D0002A00DD002C00DD002C00FBBF
      CB00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010102E0000000700000007000000
      0700000007000000070000000700000007000000070000000700000007000000
      0700000007000000070000000700101037000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A9B7C7002D51930023498F002E659F003576A9003576A9003576
      A9004D82E7005285F5005285F5005285F5005588F7005588F7005588F7005588
      F7005588F700598CF900598CF900598CF900598CF9005D90FA0093B0E8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009DEB000094EA00007BE5000063E000004C
      DC000039D7000029D4000021D3000019D1000010CF009F9FEC00DFF1FF000000
      000000000000000000000000000000000000000000000000000000000000CFE3
      FA009FC5FF000000000000000000000000000000000000000000000000000000
      0000E1DFDF0026101500210007002100070031000A009E7F8500000000000000
      000086404E006B001600C38F9A0000000000000000009C001F00AC0022000000
      000000000000CF607600BC002600C6002800D0002A00DD002C00EC5070000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000007000000
      29000000A50000006A0000000000000000000000B5000000520000008D000000
      BD00000021000000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094A6BE0023498F00284E9200326EA4003576A9004B84
      D6005D90FB005D90FB005D90FB005D90FB005686E8003761B200274E96002F57
      A4006497FE006497FE006699FF006699FF006699FF0097B5E900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009DEB00008BE800007BE5000063E000004C
      DC000039D7000029D4000021D300303FD900BFCCF50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008E8083002100070038101800B7B0B20000000000000000000000
      000086404E006B00160077001800D09FA900E5CFD400A2102D00AC0022000000
      00000000000000000000E69FAD00C6002800D0002A00DC103900F6EFF0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000232348000000
      100000008D0000006A00000052000000AD000000AD0000005200000083000000
      9900000010002525520000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008A9DBA0023498F0031589700407CBD006699
      FF006699FF006699FF006699FF006699FF004571C70023498F0023498F002349
      8F006699FF006699FF006699FF006699FF008BAEEF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000088DCF800009DEB00008BE800006AE100005BDE000042
      D9000042D9000029D400303FD900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D202600A39094000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      0000000000000000000000000000F8D0D800D6204500EF90A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A8C0000000
      070000003A0000006A00000052000000AD000000AD0000004200000083000000
      290000000000A8A8C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A9DBA0023498F006D9CF7006699
      FF006699FF006699FF006699FF006699FF004571C70023498F0023498F002349
      8F006699FF006699FF006699FF0072A0FA00C2CDD70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFF1FF0010C7F400009DEB00008BE800006AE100005BDE000042
      D9000039D7004F7AE500DFF1FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      000000000000000000000000000000000000F6EFF00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E2E
      53000000070000004200000033000000AD000000AD0000003A0000003A000000
      1000313160000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008BA3CA0086A1D2000000
      0000000000000000000000000000AFC2DF006A86B70023498F0023498F002349
      8F00A3BBE40097B4EA0097B4EA00AFC2DF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000CFF50000BEF2000094EA00008BE800006AE100005BDE004F7A
      E500BFCCF5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002323480000000700000007000000730000005A0000001000000000002525
      5200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000768DB20023498F0023498F002D51
      9300000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFF4
      FD0040FBFE0000CFF50000BEF2000094EA00008BE8003081E6008FB5F0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086404E006B0016007700180084001B008D001C009C001F00AC0022000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B8A000707120000000000000000000C0C1E00727299000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3BFCB009FAEC3009FAEC300B3BF
      CB00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000070DDF8004FF7
      FE0080FFFF00CFF4FD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFD0D300D9BFC400DDBFC500DDBFC500E6BFC700E6BFC700E6BFC7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFF00000000000000000000000000
      FFFFFF00000000000000000000000000FFFFFE00000000000000000000000000
      FFFFFE00000000000000000000000000FFFFFE00000000000000000000000000
      1FFFFF01000000000000000000000000FFFFFF01000000000000000000000000
      FFFFFF81000000000000000000000000FFFFFF83000000000000000000000000
      FFFFFFC3000000000000000000000000FFFFFFE7000000000000000000000000
      FFFFFFFF000000000000000000000000C00FFFC7000000000000000000000000
      C00FFF0100000000000000000000000080000F01000000000000000000000000
      8000070100000000000000000000000000000701000000000000000000000000
      0000000100000000000000000000000000000001000000000000000000000000
      0000000100000000000000000000000000000001000000000000000000000000
      00000003000000000000000000000000000007FF000000000000000000000000
      00000FFF00000000000000000000000000001FFF000000000000000000000000
      00001FFF000000000000000000000000804003FF000000000000000000000000
      810001FF000000000000000000000000C30001FF000000000000000000000000
      FF0001FF000000000000000000000000FF0001FF000000000000000000000000
      FC0003FF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFC00FFF
      FFE07FFFFFFFFFFFFFF80001FFC00FFFFFC03FFFFFFFFFFF80000000FFC00FFF
      FFC00FFFFFFFFFFF80000000FF8007FFFF8007FF81FFFFFF80000000FE0001FF
      FF8003FF0003FFFF80000000F800007FFF8001FF000007FF80000000F000003F
      FF0000FF0000001F80000000E000001FFF0000FF0000000180000000E000001F
      FF0000FF0000000180000001C000000FFE0000FF0000000180000003C000000F
      FE0000FF0000000180000007E000001FFE0000FF000000018000003FFF0003FF
      FC0000FF000000018000003FFE0001FFFC0000FF000000018000003FF800007F
      FC0000FF000000018000003FF000003FFE0000FF000000018000003FE000001F
      FE0000FF000000008000003FE000001FFE0000FF000000008000003FC000000F
      FE0000FF000000008000003FC000000FFE1800FF000000008000003FE000001F
      FE1C00FF000000008000003FFF0003FFFE1F00FF000000008000003FFE0001FF
      FE0F80FF000000008000003FF800007FFE0FC3FF000000008000003FF000003F
      FF07C3FF000000008000003FE000001FFF01C3FF000000008000003FE000001F
      FF8003FF00000000C000003FC000000FFF8007FFFC000000E000007FC000000F
      FFF00FFFFFFFFD9FF00003FFE000001FFFFFCFFFFFFFFFFFFC07FFFFFF8007FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FC000FFFFFFFFFFFEFFFFFFFFFFFF
      0000C000FFFC3FFFFFF00FFFFFF007FF00006000FFF81FFFFF8001FFFFF007FF
      00000000FFF00FFFFF0000FFFFC007FF000001C0FFE007FFFC00003FFFC007FF
      000003C0FFC003FFF800001FFFC007FFC00FFFC0FF8001FFF000000FFFC007FF
      C01FFF80FF0000FFF000000FFFC007FFC03FFF00FE00007FE0000007FFC007FF
      C03FFF00FC00003FC0000003FFC007FF803FFF00F800001FC0000003FFC007FF
      C03FFF80F000000FC0000003FFC807FFC03FFF80E000000780000001FFC003FF
      C07FFF80C000000380000001FFC001FFC07FFF808300078180000001FFC000FF
      E07FFFC00000040080000001FFE0007FE07FFFC00000008080000001FFE0003F
      F02FFFC08300030180000001FFF0001FF00FFFC0C000000380000001FFF0000F
      F01FFFE0E000000780000001FC00000FE00FFFE3F000000F80000001FC00000F
      E00FFFFFF800001FC0000003F000000FE00FFFFFFC04003FC0000003F000000F
      E00FFFFFFE03007FC0000003F000000FE007FFFFFF0080FFE0000007F800001F
      E007FFFFFF8001FFF000000FF800003FE007FFFFFFC003FFF000000FFC00003F
      F01FFFFFFFE007FFF800001FFC0000FFFFFFFFFFFFF00FFFFC00003FFE0001FF
      FFFFFFFFFFF81FFFFF0000FFFF0003FFFFFFFFFFFFFC3FFFFF8001FFFFC00FFF
      FFFFFFFFFFFFFFFFFFE007FFFFFFFFFFE000001FFFFFFFFFFFFFFFFFFFFF7FFF
      E000001FFFFF803FFFFFFFFFFFFE3FFFE000060FFFFE000FFFFFFFFFFFFC7FFF
      E000070F00000001FFFFFFFFFFF81FFFE000078700000001FFF3FC7FFFF807FF
      E000038700000001FFF3F07FFFE007FFE000018700000001FFE3C03FFF0003FF
      E000008700000001FFE3801FF00001FFE000008700000001FC07001FC00001FF
      E000000700000001FC06003F800000FFE00000071B640001FE00007F000000FF
      E00000071B600001FF80019F0000007FE000000700000001FF800E0F0000007F
      E00000071B600001FE007E0F8000003FE00000071B680001FC003E0F8000003F
      E000000700000001F800091F8000001FE00002071B6C0001E000011F8000001F
      E00000071B6C00018000033FC000000FE0000007000000018000033FE000000F
      E00000071B6DB6C1C000000FF0000007E00000071B6DB6C1E0000001F0000007
      F000000700000001E0000003F8000001F000001F1B6DB6C1F0000007F8000003
      F800003F1B6DB6C1E000001FF0000003FC00107F00000001C000003FF0000001
      FF020FFF00000001C00000FFE0000000F8004FFF00000001FC0001FFE0000000
      FC003FFF00000001FFC007FFE000001FFCB9FFFF00000001FFFC0FFFC080000F
      FF83FFFF00000001FFFFFFFFC080001FFF87FFFFFFFFFFFFFFFFFFFFC1F7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF1E7FFFF00000000F83FF0FFFFFFFFFFFFFFFFFF
      00000000E00FF07FFFFFFFFFFFFFFFFF000000008003C03FFFFFFFFFFFFFFFFF
      8000000000004023FFFFFFFF7FFFFFFFC000000000004001FFFFFFFF1FFFFFFF
      E000000080004001FFFFFFFF07FFFFFFF0000000C0004003FC000F8301FFFFFF
      F8000000C000400700000183007FFFFFF8000001F000400F00000001001FFFFF
      FC000003F000400F000000000004FFFFFC0000FFF800401F0000000000003FFF
      FE0000FFFC004C3F0000000000000FFFFE4001FFFC00403FE0000000000000FF
      FE0003FFFC00403FC00078000000003FFE0003FFFC00003FC000000000000007
      FF0003FFFC000027C000000000000003FF0000FFFC000047E000000000000003
      FE00007FFC000187E0000000C0000003FE00007FFC001F0FE0000000F0000007
      FC00007FFC00001FC0000000F8000007FC00007FFC00001FE0000000FE000007
      FC0000FFFF00001FE0000000FF80000FFF0003FFF181800FE0000000FF80000F
      FF0003FFE103C087E0000000FFE0000FFF0003FFC407E023F0000000FFF8001F
      FF8003FFC60FF063F0000000FFFC003FFF8007FFC01FF803F8000000FFFE003F
      FFC007FFF09FF90FFE000003FFFF007FFFE01FFFF8BFFD9FFFF003FFFFFF80FF
      FFE03FFFFC0FF03FFFFFFFFFFFFFE1FFFFF0FFFFFF0FF0FFFFFFFFFFFFFFFFFF
      FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF01FFFFF807FFFFFF01FFFFC00003FE00003FFFF007FFFFFF01FFFFC00003F
      E000007FF800007FFFF01FFFFC00003FC000000FF800003FFFF01F3FFE00007F
      8000000FF000000FFCF01E3FFF0000FFE000000FF0000007F8701C3FFF0000FF
      C000000FF0000003F831101FFF8001FF8000000FF0000003F000001FFF8001FF
      9000000FF8000001F000000FFF8001FFF000000FF0000001E0000007FF0001FF
      F000000FE0000003E002000FFF8001FFF000000FE0000007F001001FFF8001FF
      F000000FE0000007F800803FFE00007FF000000FE0000007FC0000FFFC00003F
      F000000FC000000FFF0101FFF800001FF000000FC200000FFF8203FFF800001F
      F000000FC7000007FF0001FFF800001FF000000FC7800007FC0140FFF800001F
      0000000FE7800003F800403FFC00007F80000000E7800007F000001FFE00007F
      80000000E7000107E001000FFF8001FFC0000001F80001C7C0000007FF0000FF
      E0000003FE0007E7E0000007FF0000FFF000000FFE0007E7F003800FFF0000FF
      F800001FFE001FE7F031981FFFC003FFFC00003FFE007FFFF8701C1FFFC003FF
      FE00007FFC01FFFFFCF01E3FFFC003FFFF00007FF801FFFFFFF01F7FFFE007FF
      FF9E00FFF807FFFFFFF01FFFFFF00FFFFFFF0FFFE01FFFFFFFF01FFFFFF81FFF
      FFFF0FFFC3FFFFFFFFF01FFFFFFE7FFF00000000000000000000000000000000
      000000000000}
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
    Left = 104
    Top = 24
  end
end
