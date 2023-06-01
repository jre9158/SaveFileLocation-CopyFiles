object RPanelForm: TRPanelForm
  Left = 206
  Top = 219
  BorderStyle = bsNone
  Caption = 'RPanelForm'
  ClientHeight = 126
  ClientWidth = 643
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
  object MainPanel: TAlpinePanel
    Left = 0
    Top = 0
    Width = 643
    Height = 126
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
    BorderColor = clGray
    BorderWidth = 1
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.GradientDirection = gdVertical
    GradientDirection = gdHorizontal
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    LeftCaption = 'R'
    RightCaption = 'R - Department'
    FullHeight = 0
    object PointLabel: TLabel
      Left = 4
      Top = 33
      Width = 97
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Point'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object MilesLabel: TLabel
      Left = 4
      Top = 56
      Width = 97
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Miles'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label556: TLabel
      Left = 4
      Top = 79
      Width = 97
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Report Finished?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DispCallTypeIDLabel: TLabel
      Left = 4
      Top = 102
      Width = 97
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Dispatch Call Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label80: TLabel
      Left = 25
      Top = 6
      Width = 151
      Height = 16
      Caption = 'Department Information'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CLabel: TLabel
      Left = 1
      Top = 1
      Width = 27
      Height = 124
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      Caption = 'R'
      Color = 15329769
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      ExplicitHeight = 192
    end
    object PointField: TAlpineEdit
      Left = 105
      Top = 30
      Width = 52
      Height = 21
      DataType = pftExtended
      AutoSize = False
      Color = clWhite
      Controller = OvcController1
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 6
      options = [efoCaretToEnd, efoRightAlign]
      ParentCtl3D = False
      ParentFont = False
      PictureMask = '###.##'
      TabOrder = 0
      DataField = 'POINT'
      RightAlign = True
      CurrentPos = -1
      Text = '  0.00'
      RangeHigh = {E175587FED2AB1ECFE7F}
      RangeLow = {E175587FED2AB1ECFEFF}
    end
    object MilesField: TAlpineEdit
      Left = 105
      Top = 53
      Width = 52
      Height = 21
      DataType = pftExtended
      AutoSize = False
      Color = clWhite
      Controller = OvcController1
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 6
      options = [efoCaretToEnd, efoRightAlign]
      ParentCtl3D = False
      ParentFont = False
      PictureMask = '###.##'
      TabOrder = 1
      DataField = 'MILES'
      RightAlign = True
      CurrentPos = -1
      Text = '  0.00'
      RangeHigh = {E175587FED2AB1ECFE7F}
      RangeLow = {E175587FED2AB1ECFEFF}
    end
    object DispCallTypeIDField: TAlpineLookup
      Left = 105
      Top = 99
      Width = 392
      Height = 21
      BorderStyle = bsNone
      Ctl3d = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      ImageName = 'DOWNARROW'
      PictureMask = '!!!!!!!!'
      EditWidth = 90
      SpinControl = False
      NoValidate = False
      KeywordSearch = False
      DataField = 'DISPCALLTYPEID'
      DisplayField = 'CODE'
      ReferencingTable = 'DISPCALLTYPE'
      ReferencingField = 'DISPCALLTYPEID'
      ReturnField = 'DESCR'
      ReturnFieldFont.Charset = DEFAULT_CHARSET
      ReturnFieldFont.Color = clWindowText
      ReturnFieldFont.Height = -11
      ReturnFieldFont.Name = 'MS Sans Serif'
      ReturnFieldFont.Style = []
      LookupCode = 'STDLOOK'
      TreeLookMinimumCharacters = 0
      StandardLookup = False
      LookupCaption = 'RedNMX System'
    end
    object DoneField: TAlpineEdit
      Left = 105
      Top = 76
      Width = 18
      Height = 21
      DataType = pftString
      AutoSize = False
      Color = clWhite
      Controller = OvcController1
      Ctl3D = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 1
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      PictureMask = '!'
      ShowHint = False
      TabOrder = 3
      DataField = 'DONE'
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
    Left = 444
    Top = 35
  end
end
