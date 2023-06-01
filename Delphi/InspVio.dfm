object InspVioForm: TInspVioForm
  Left = 98
  Top = 98
  Align = alClient
  ClientHeight = 479
  ClientWidth = 862
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 479
    Align = alClient
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 0
    object ErrorLabel: TLabel
      Left = 0
      Top = 446
      Width = 862
      Height = 33
      Align = alBottom
      AutoSize = False
      Caption = 
        'The Current Inspection, All Inspections, and Open Violations Onl' +
        'y buttons are inactive because the inspection is not connected t' +
        'o an address.  Use the Find Address Button to link the inspectio' +
        'n to Addresses.'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      WordWrap = True
      ExplicitLeft = 3
      ExplicitTop = 525
      ExplicitWidth = 791
    end
    object InspVioBrowse: TAlpineBlockBrowse
      Left = 0
      Top = 0
      width = 862
      height = 446
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
      BorderColor = clSilver
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clBlack
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.Indent = 2
      Caption.Text = 'Violations'
      Caption.TopIndent = 2
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      Spacer = 9
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
      ButtonWidth = 75
      TopBorder = 20
      SideBorder = 12
      SearchFooter = False
      FullHeight = 124
      object VioButtonPanel: TPanel
        Left = 324
        Top = 393
        Width = 405
        Height = 22
        BevelOuter = bvNone
        Caption = ' '
        TabOrder = 0
        object CurrentButton: TRadioButton
          Left = 30
          Top = 3
          Width = 116
          Height = 17
          Caption = 'Current Inspection'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = CurrentButtonClick
        end
        object AllButton: TRadioButton
          Left = 156
          Top = 3
          Width = 116
          Height = 17
          Caption = 'All Inspections'
          TabOrder = 1
          OnClick = CurrentButtonClick
        end
        object OpenButton: TRadioButton
          Left = 283
          Top = 3
          Width = 116
          Height = 17
          Caption = 'Open Violations Only'
          TabOrder = 2
          OnClick = CurrentButtonClick
        end
      end
      object DateTimeStartField: TAlpineDateTime
        Left = 83
        Top = 23
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        AlpineColors.EditColor = clInfoBk
        DataField = 'DATETIMESTART'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Visible = False
      end
      object PropIDField: TAlpineEdit
        Left = 650
        Top = 23
        Width = 77
        Height = 22
        DataType = pftString
        AutoSize = False
        Color = clWhite
        Controller = OvcController1
        Epoch = 1900
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 30
        options = [efoCaretToEnd]
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 2
        Visible = False
        AlpineColors.EditColor = clInfoBk
        DataField = 'PROPID'
        CurrentPos = -1
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
    Left = 104
    Top = 24
  end
end
