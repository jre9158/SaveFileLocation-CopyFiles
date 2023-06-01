object DLCondForm: TDLCondForm
  Left = 192
  Top = 123
  Caption = 'Daily Log Condition'
  ClientHeight = 518
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DatePanel: TAdvPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 81
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 24
    Caption.Indent = 2
    Caption.Text = '<IMG src="idx:6"> Enter Date Range'
    Caption.TopIndent = 2
    Caption.Visible = True
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 84
    object InitialDateLabel: TLabel
      Left = 2
      Top = 30
      Width = 172
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Initial Date and Time to Include:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object FinalDateLabel: TLabel
      Left = 2
      Top = 54
      Width = 172
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Final Date and Time to Include:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object StartDateField: TAlpineDateTime
      Left = 178
      Top = 27
      Width = 134
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object EndDateField: TAlpineDateTime
      Left = 178
      Top = 51
      Width = 134
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
  end
  object DescrPanel: TAdvPanel
    Left = 0
    Top = 81
    Width = 689
    Height = 72
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 21
    Caption.Indent = 2
    Caption.Text = 'Select Filters'
    Caption.TopIndent = 2
    Caption.Visible = True
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 47
    object PersIDDescr: TLabel
      Left = 432
      Top = 25
      Width = 133
      Height = 14
      AutoSize = False
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 2
      Top = 25
      Width = 172
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Description:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object PersIDLabel: TLabel
      Left = 2
      Top = 48
      Width = 172
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Personnel Name:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DescrField: TAlpineLookup
      Left = 178
      Top = 23
      Width = 213
      Height = 21
      BorderStyle = bsNone
      Ctl3d = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      ImageName = 'DOWNARROW'
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 192
      SpinControl = False
      NoValidate = True
      KeywordSearch = False
      DisplayField = 'DESCR'
      ReferencingTable = 'DLDESCR'
      ReferencingField = 'DESCR'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clMaroon
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Arial'
      ReturnFieldFont.Style = []
      AlpineColors.DisabledColor = clBtnFace
      LookupCode = 'DESCR'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object PersIDField: TAlpineLookup
      Left = 178
      Top = 46
      Width = 213
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
      TabOrder = 1
      TabStop = True
      OnEnter = PersIDFieldEnter
      ImageName = 'DOWNARROW'
      Descriptionlabel = PersIDDescr
      DataFieldIsCharacter = True
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      EditWidth = 200
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'PERSID'
      DisplayField = 'LNAME'
      ReferencingTable = 'PERS'
      ReferencingField = 'PERSID'
      ReturnField = 'PERSCODE'
      ReturnFieldFont.Charset = ANSI_CHARSET
      ReturnFieldFont.Color = clNavy
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'Comic Sans MS'
      ReturnFieldFont.Style = []
      LookupCode = 'PERS'
      DisplayDescription = False
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
  end
  object SchdPanel: TAdvPanel
    Left = 0
    Top = 153
    Width = 689
    Height = 290
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 11876608
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clBtnFace
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWhite
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 21
    Caption.Indent = 2
    Caption.Text = 'Select Filters'
    Caption.TopIndent = 2
    CollapsColor = clBtnFace
    ColorTo = clBtnFace
    Indent = 6
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 47
    object Label3: TLabel
      Left = 432
      Top = 25
      Width = 133
      Height = 14
      AutoSize = False
      Caption = ' '
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object SchdShiftNamePanel: TAdvPanel
      Left = 1
      Top = 1
      Width = 312
      Height = 288
      Align = alLeft
      BevelInner = bvLowered
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11876608
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clBtnFace
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clBlack
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 21
      Caption.Indent = 2
      Caption.Text = 'Shift (Blank for All)'
      Caption.TopIndent = 2
      Caption.Visible = True
      CollapsColor = clBtnFace
      ColorTo = clBtnFace
      Indent = 6
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      FullHeight = 84
      object SchdShiftNameBrowse: TAlpineTMSStringGrid
        Left = 2
        Top = 21
        Width = 308
        Height = 265
        Cursor = crDefault
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        ColCount = 1
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 1
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
        SelectionColor = clBtnFace
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.IndexShow = True
        Version = '7.1.0.1'
        ViewOnly = False
      end
    end
    object SchdLocPanel: TAdvPanel
      Left = 313
      Top = 1
      Width = 375
      Height = 288
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11876608
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clBtnFace
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clBlack
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clWhite
      Caption.Font.Height = -11
      Caption.Font.Name = 'MS Sans Serif'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 21
      Caption.Indent = 2
      Caption.Text = 'Location (Blank for All)'
      Caption.TopIndent = 2
      Caption.Visible = True
      CollapsColor = clBtnFace
      ColorTo = clBtnFace
      Indent = 6
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      FullHeight = 84
      object SchdLocBrowse: TAlpineTMSStringGrid
        Left = 2
        Top = 21
        Width = 371
        Height = 265
        Cursor = crDefault
        Align = alClient
        BorderStyle = bsNone
        Color = clBtnFace
        ColCount = 1
        DefaultRowHeight = 21
        FixedCols = 0
        RowCount = 1
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
        SelectionColor = clBtnFace
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.IndexShow = True
        Version = '7.1.0.1'
        ViewOnly = False
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
    Left = 499
    Top = 20
  end
end