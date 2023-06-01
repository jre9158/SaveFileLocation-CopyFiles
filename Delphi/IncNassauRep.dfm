inherited IncNassauRepForm: TIncNassauRepForm
  Left = 58
  Top = 15
  Width = 886
  Height = 780
  HorzScrollBar.Position = 87
  HorzScrollBar.Range = 1200
  VertScrollBar.Position = 102
  VertScrollBar.Range = 2000
  Caption = 'Incident Manpower Report'
  Font.Name = 'Arial'
  OldCreateOrder = True
  OnCreate = FormCreate
  ExplicitWidth = 886
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 14
  inherited BaseReport: TQuickRep
    Left = 72
    Top = -56
    Width = 653
    Height = 845
    Frame.Width = 0
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [LastPageFooter]
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
      127.000000000000000000
      2159.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    Zoom = 80
    ExplicitLeft = 72
    ExplicitTop = -56
    ExplicitWidth = 653
    ExplicitHeight = 845
    inherited AlpineBaseFooter: TQRBand
      Left = 38
      Top = 1113
      Width = 576
      Height = 16
      Frame.DrawTop = True
      Size.Values = (
        52.916666666666670000
        1905.000000000000000000)
      ExplicitLeft = 38
      ExplicitTop = 1113
      ExplicitWidth = 576
      ExplicitHeight = 16
      inherited SysDateField: TQRSysData
        Left = 4
        Width = 106
        Height = 14
        Size.Values = (
          46.302083333333340000
          13.229166666666670000
          3.307291666666666000
          350.572916666666800000)
        FontSize = 10
        ExplicitLeft = 4
        ExplicitWidth = 106
        ExplicitHeight = 14
      end
      inherited SysPageNumber: TQRSysData
        Left = 497
        Top = 2
        Width = 67
        Height = 14
        Size.Values = (
          46.302083333333330000
          1643.723958333333000000
          6.614583333333333000
          221.588541666666700000)
        AutoSize = True
        FontSize = 10
        ExplicitLeft = 497
        ExplicitTop = 2
        ExplicitWidth = 67
        ExplicitHeight = 14
      end
    end
    object TitleBand: TQRBand
      Left = 38
      Top = 38
      Width = 576
      Height = 752
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        2487.083333333333000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape24: TQRShape
        Left = 12
        Top = 292
        Width = 553
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          39.687500000000000000
          965.729166666667000000
          1828.270833333330000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object DeptName: TQRLabel
        Left = 10
        Top = 9
        Width = 101
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          29.104166666666700000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' EDWARD P. MANGANO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object DescField: TQRLabel
        Left = 338
        Top = 7
        Width = 215
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1119.187500000000000000
          23.812500000000000000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NASSAU COUNTY FIRE COMMISSION'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object RepLabel: TQRLabel
        Left = 155
        Top = 122
        Width = 266
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          512.630208333333300000
          403.489583333333300000
          879.739583333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'FIRE LOSS REPORT 2006'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 20
      end
      object QRLabel3: TQRLabel
        Left = 10
        Top = 22
        Width = 101
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          74.083333333333300000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'COUNTY EXECUTIVE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 338
        Top = 24
        Width = 215
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1119.187500000000000000
          79.375000000000000000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'OFFICE OF THE FIRE MARSHAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 338
        Top = 40
        Width = 215
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1119.187500000000000000
          132.291666666667000000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1194 PROSPECT AVENUE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 338
        Top = 55
        Width = 215
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1117.864583333333000000
          181.901041666666700000
          711.067708333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'WESTBURY, NY 11590'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 338
        Top = 73
        Width = 215
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1117.864583333333000000
          241.432291666666700000
          711.067708333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '516- 573-9900'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 137
        Top = 7
        Width = 141
        Height = 117
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          386.291666666667000000
          452.437500000000000000
          23.812500000000000000
          465.666666666667000000)
        XLColumn = 0
        Picture.Data = {
          07544269746D6170161A0000424D161A00000000000036040000280000004F00
          0000460000000100080000000000E01500000000000000000000000100000001
          0000739DA2007201020076F6FB0089DCE2008300010092A3A800724C5000732C
          2E007270750081C9CD0075DDE400637F88005F090A006030330077B3B9007E61
          6500554B51004A748100375B69006A3E41006A5C600030242C0061C2CD007017
          1800505A61004E98A7007E868B006AE8F2005E1E20003D37410065DBE400FFFF
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
          00001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F09090909090E0E00001A051F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F03030A1B0A1B1B1B
          1B1B0A0A160E1A1A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F030A1B02021B0A0A090909090A0A0202020216190B081F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031B1B020A000806070717171C
          1C070713081A0902021B160B141A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F0A1B020A00061C1C1C0701040401060E171707010C1C0D0B09020216111405
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031E020A0B0D0717010803141704040407
          1410030F010705080D1C0809020219100F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A1B
          0200070C0F1A09141C0900050D1704170B030007041709181A050117140A021E
          1210051F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F031E02090601011A000C1A031C00091109070108
          030B0B0F0108031A140F01011C070002020B1D1A1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031E020E1C
          0104010E0E011C090D1A00060F17170F060C081317030B08060C1C0E050C1708
          020219151A1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F031E021A0C1A1A010406031A080F0C07130D130F0808
          080F130D070D061A1A0B0909190E1A01140A0219151A1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031E02081C0F14
          081704040714060D0F08000E091E0A1B0A160E001A0F130D0D0E0910090A0604
          01130A0219151A1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1E02080C0E09130F0F130101130800160A1B1B02020A0E
          1B02021B1B160E1A061C1C0F0814170404010D03020B15091F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1E0200011706090E
          100513130800091B1B1B021B0008070C070F0E021B1B1B0A0E08130C060E0C04
          040407180202181D1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F0A1B0E1C1704011C03050D141A161B1B1E1B1B001301010404
          04010C0609021E1B1B09000F071307071710030808020A1D081F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1B0A0D1A000C061314
          140F1A091B1E1E1B0A14010404040404040404011C00021B1E1B0A0008170709
          090209140C0E020E15051F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F0A02080C05020B11051C08000A1B1E1E02091301040404010104
          04040404040C08021E1E1B1B0E081C06000E1C01011C0A0212141F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031B0E1C07010D09090D0F
          000A1B1E1E020A0D04040404010508010404040404040108021E1E1E1B0E080C
          141A0C00090608021615051F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1E0206080E0C0F0E06061A161B1E02020A130404040404011A0206
          0404040404170D0C00021B1B1E1B000F070600030B08130E0212101F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031B0E0C0603080608131A16
          1B1B0200140701040404040404010F070404040401140E110D1A000A021E0A1A
          0701051C0106080802161D051F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F0A021406140E02060C1A0E1B1B091401010404040404040404040104
          0404040404171319100101130E021B09081706140B02081C030218081F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1B0A1C1A1A10080613000A02
          091C01040404040404040404040404040404040404010C1910010404170E021B
          00130C1A09080C0100020B101F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F031B00170D0C06060C080E1B0213010404040404040101040404040404
          0404040117140E161C1A1401041C0902090817170D1C0B001002161D051F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A1B141A03140B05131A1E0200
          0104170D010404130B0B1D0C040404040404011D16021113011A031C04010802
          1B00071309030A00130302101A1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1E0A1C0F1A09021406001B0A0D04041303130404070E0B19191D010404
          04011D161E190C0404170F1704041C0A0216140D0018000B17000211141F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1B090C0401100913080E020A13
          01040C0505010401170C171A161D0404041D161B16120C040404010404041709
          1B0A081C0F1A0903080B0219141F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1B00011717060F1C1A161B1B1B08010417070404040404040C19100104
          0C111E1E0A110C0404040404041C0E1B1E1B1A070D050D0C0614020E101F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0302080D0900060707001E1B1E1B
          02060404040404040404040C19190D181D0E1E1E1B190C010C0404041709021E
          1E1B00130708141A1A130216101F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F0A0214130B03140606001E1E0A1E020E0104040404040404040C161E1619
          15191E1E0A191D0B0E1401010B021E1E1E1B0E1314031B0A000D0A1E181F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F030214131C090E0614001B1E1E1E
          1B03070404040404040404171602161211191E1E1E1611060609060C091B1E1E
          1E1B09060D081B1913070A1E181F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F0302060F1A14030D14001B1E1E1E1B1B1304040404040404040114001119
          161E161E02001704010808131B1E1E1E1E1B0906140E1409091C0A1E181F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A02140C17010C010F001B1E1E1E
          1B1B0D0404040404040404040C121919161E1B0A0801040401001308021E1E1E
          1E1B09060606011C000D0A1E181F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F0A021401040F17040F001B0A0A1E1B0A0701040404040401041C11191916
          161B0A130104010D1A1A0C0B021E1E1E1E1B0E0601011701170D031E181F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F03020804010F170106001E1B0A1E
          020E0C06140D0D0D10101012111919161E1B140104071A1A0F0D1C06021E1E1E
          1E1B0E060407050701130216141F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F031B000104011713131A161B1E1B0213071E16190A1B1E16160E11191E16
          1E0E0104061A0D010108030D0E021E0A1E1B00130104171717140216141F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1B0E07130D0F05131A0E1B1E02
          1A0D1C081413141A0E161E1E1E1E0A1E1E0B0107080C1717041C09080D021B1E
          1E0A1A071701170E13080219081F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1B0A0D0E03101C1708001B1B080C09000C04040401011C191E09161619
          190B0C0F07070E13040417170108021E1B160F130300081A1C00020B1A1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A1B060D0003091C13001B0001
          0114051704040404011512190B0B110B001113060708091C040404040401141B
          1B00061300030A0D170902111F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F031B1A0708001A060D1A160917040401010404040C1119121212111111
          1911120D080813010404040404040C0A1E1A0704011C031A0D0216081F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1B0E061A170C050B0600020B
          0104040404040111020910180B191111110B110D171704040404040404010602
          0E0F071701061A130B02191A1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F0A1B06010106000D071A0E020D040404041C121600070117060B0B0B
          11110B130404040404040404040C0E1B1A0D0E090D080E1C091B0B1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031B00010609160E1414000A
          09170404070E19100104170707081112111111061717040404040404011A0200
          0F170F0E030E141402161A1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1E1B131A090000081C1A1A02160D01010B08010404071314101111
          120B111C0F0E1C040404011C1A020E1A0701011C0B091C0E02001F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A020E0C01010C0600131A
          00020A0B130D010404010113030B191E1112121307031A0107131A0A02161A07
          061A17130E1306021E1A1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1E020604010F14140614000002021B030D04011A131C0916110A
          191212130107071C031B1B02161A060C13020008061C0902001F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031B0917060303110E06
          0D1A000A1B0200010405031C0C0B1919191111170404010E021B1B0E1A060D09
          100E1105130B0216051F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1E02000D081103030606100800161B1B08010C08070401140B
          08081304040C08021B0A001A06061306080A000C14021B051F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1E0214131A141C07
          080813081A0E1B020007010101011C0D1C01010C1300021B16001A0D141A1A0C
          0C0E0B1C0302161F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F031E0A10070407001810001C06081A0E1B0309000B000303
          00081A09031B160008060C14030C061A13130D0E02091F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031B0313010009
          09030E0D1A13130F0B00090A0A1B1B1B1B0A09090E1A08141414170602080C1A
          051C0E021E051F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F0A1B03061310180B071709141314131314081A000000
          0000081413071C0F080E091C1402081C1D0E021E0E1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A1B1B141C
          1A070417140B0A030F0708141C070707071713140F011303171C021A0C0E140D
          09021E091F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F0A1E02001C010401080A090D0C09050F0F010404
          010805131A080D02080C0E1A0117080A1B0A1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031E02
          0A0F0101050017041C030D170F0104040103000101070100031A081C130E021B
          0A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A1B020E061C01040408031C1314010404
          0100091C131A010106140D1A0A021E031F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          031E1B020E0F07011308171A0F0404040417051A08060117131A0A021E031F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F031E1B020A00080D171C17010101
          01010C070D1400091B021B0A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F030A1B1B021B0A0E001A1A1A1A1A0E090A1B1B1B0A0A1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F030A0A1B1B02020202
          02021B1B1E0A031F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F03030303030303031F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F001F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
          1F00}
        Stretch = True
      end
      object QRLabel1: TQRLabel
        Left = 19
        Top = 151
        Width = 533
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          49.609375000000000000
          62.838541666666670000
          499.401041666666700000
          1762.786458333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TO ALL FIRE DEPARTMENT CHIEFS;'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object BodyLabel: TQRLabel
        Left = 19
        Top = 169
        Width = 532
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          155.442708333333300000
          62.838541666666670000
          558.932291666666700000
          1759.479166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'The Fire Commission must file with the County Executive a detail' +
          'ed report of activities each year.  An important part of this re' +
          'port is the estimated fire loss.  Please fill in the spaces belo' +
          'w with your best estimate for the calendar year 2004.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 19
        Top = 295
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          976.312500000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Estimated Dollar Loss:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape1: TQRShape
        Left = 12
        Top = 314
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1037.166666666670000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel11: TQRLabel
        Left = 19
        Top = 318
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1050.395833333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of Structural Fire Resulting in Damage:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object SubLabel: TQRLabel
        Left = 75
        Top = 224
        Width = 402
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          125.677083333333300000
          248.046875000000000000
          740.833333333333300000
          1329.531250000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'PLEASE COMPLETE AND RETURN TO THE FIRE COMMISSION BY JANUARY 31,' +
          ' 2007.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape2: TQRShape
        Left = 12
        Top = 336
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1111.250000000000000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 19
        Top = 339
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1121.833333333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Of The Above Fire How Many Were:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 12
        Top = 358
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1182.687500000000000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel15: TQRLabel
        Left = 58
        Top = 384
        Width = 378
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          190.500000000000000000
          1270.000000000000000000
          1251.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cooking Fires'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape4: TQRShape
        Left = 12
        Top = 380
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1256.770833333330000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel16: TQRLabel
        Left = 58
        Top = 406
        Width = 378
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          190.500000000000000000
          1341.437500000000000000
          1251.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Gas Barbeque Fires (propane & Natural gas)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape5: TQRShape
        Left = 12
        Top = 402
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1328.208333333330000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel17: TQRLabel
        Left = 19
        Top = 428
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1415.520833333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of Vehicle Fires (include rail, air, boat):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape6: TQRShape
        Left = 12
        Top = 424
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1402.291666666670000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel18: TQRLabel
        Left = 19
        Top = 450
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1486.958333333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of Brush, Grass, Outside Rubbish and Dumpster Fires:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape7: TQRShape
        Left = 12
        Top = 446
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1473.729166666670000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel19: TQRLabel
        Left = 19
        Top = 472
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1561.041666666670000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Number of Hazardous Material Spills (gasoline, fuel oil, chemica' +
          'ls, etc):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape8: TQRShape
        Left = 12
        Top = 468
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1547.812500000000000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel20: TQRLabel
        Left = 19
        Top = 494
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1632.479166666670000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of Carbon Monoxide Alarm Activations:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape9: TQRShape
        Left = 12
        Top = 490
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1619.250000000000000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel21: TQRLabel
        Left = 19
        Top = 701
        Width = 417
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          63.500000000000000000
          2317.750000000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TOTAL ALARMS:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape10: TQRShape
        Left = 12
        Top = 512
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1693.333333333330000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 12
        Top = 292
        Width = 2
        Height = 428
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1415.520833333330000000
          39.687500000000000000
          965.729166666667000000
          5.291666666666670000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 442
        Top = 292
        Width = 2
        Height = 428
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1415.520833333330000000
          1460.500000000000000000
          965.729166666667000000
          5.291666666666670000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 564
        Top = 292
        Width = 2
        Height = 429
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1418.166666666670000000
          1865.312500000000000000
          965.729166666667000000
          5.291666666666670000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object DamAmtField: TQRLabel
        Left = 463
        Top = 295
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          976.312500000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '$20,021.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object StructureFires: TQRLabel
        Left = 463
        Top = 318
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1050.395833333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object NoDamCntField: TQRLabel
        Left = 463
        Top = 339
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1121.833333333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object HeatingUnitFires: TQRLabel
        Left = 463
        Top = 361
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1193.270833333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object cookingfires: TQRLabel
        Left = 463
        Top = 383
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1267.354166666670000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object gasbarbequefires: TQRLabel
        Left = 463
        Top = 406
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1341.437500000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object VehicleFires: TQRLabel
        Left = 463
        Top = 427
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1412.875000000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object BrushFires: TQRLabel
        Left = 463
        Top = 450
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1486.958333333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '22'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object hazmatspills: TQRLabel
        Left = 463
        Top = 471
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1558.395833333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object TotalField: TQRLabel
        Left = 463
        Top = 701
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          2317.750000000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1,512'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel30: TQRLabel
        Left = 10
        Top = 67
        Width = 101
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          222.250000000000000000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'CHIEF FIRE MARSHAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel44: TQRLabel
        Left = 10
        Top = 54
        Width = 101
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          31.750000000000000000
          177.270833333333000000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'SCOTT D. TUSA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 58
        Top = 362
        Width = 378
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          190.500000000000000000
          1195.916666666670000000
          1251.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Heating Unit Fires (oil burner, gas burner, etc.)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel23: TQRLabel
        Left = 19
        Top = 516
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1706.562500000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Number of Fire Mutual Aid Responses Sent to Other Fire Departmen' +
          'ts:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel24: TQRLabel
        Left = 19
        Top = 538
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1778.000000000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of False Alarms:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel25: TQRLabel
        Left = 19
        Top = 559
        Width = 417
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333000000
          63.500000000000000000
          1849.437500000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Number of Automatic Alarms with No Damage (Example: cooking smok' +
          'e steam from showers, etc.)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel26: TQRLabel
        Left = 19
        Top = 598
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          1976.437500000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of Automatic False Alarms (No apparent cause for alarm):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel27: TQRLabel
        Left = 19
        Top = 620
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          2050.520833333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of All Other Fire responses not specified:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel28: TQRLabel
        Left = 19
        Top = 642
        Width = 417
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          63.500000000000000000
          2121.958333333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Number of Ambulance and Rescue Calls:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel29: TQRLabel
        Left = 19
        Top = 663
        Width = 417
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333000000
          63.500000000000000000
          2193.395833333330000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Number of Ambulance and Rescue Call Mutual Aid Responses Sent to' +
          ' Other Fire Departments:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape14: TQRShape
        Left = 12
        Top = 534
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1767.416666666670000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 12
        Top = 556
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1838.854166666670000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 12
        Top = 594
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          1963.208333333330000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 12
        Top = 616
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          2037.291666666670000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 12
        Top = 638
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          2111.375000000000000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 12
        Top = 660
        Width = 552
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          39.687500000000000000
          2182.812500000000000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 12
        Top = 697
        Width = 552
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          39.687500000000000000
          2304.520833333330000000
          1825.625000000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object coalarms: TQRLabel
        Left = 463
        Top = 493
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1629.833333333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '121'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object mutualaidgiven: TQRLabel
        Left = 463
        Top = 515
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1703.916666666670000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '89'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object falsealarms: TQRLabel
        Left = 463
        Top = 538
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1778.000000000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '343'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object autofalse: TQRLabel
        Left = 463
        Top = 597
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1973.791666666670000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '122'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object other: TQRLabel
        Left = 463
        Top = 619
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          2047.875000000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '212'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ambulanceruns: TQRLabel
        Left = 463
        Top = 641
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          2119.312500000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '671'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object ambulancegiven: TQRLabel
        Left = 463
        Top = 663
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          2193.395833333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '271'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object automaticalarms: TQRLabel
        Left = 463
        Top = 560
        Width = 80
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          1531.937500000000000000
          1852.083333333330000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '221'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel40: TQRLabel
        Left = 19
        Top = 273
        Width = 135
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          62.838541666666670000
          902.890625000000000000
          446.484375000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FIRE DEPARTMENT:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object FireDeptField: TQRLabel
        Left = 158
        Top = 273
        Width = 386
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          522.552083333333300000
          902.890625000000000000
          1276.614583333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Alpine Sample Fire Department'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape21: TQRShape
        Left = 12
        Top = 719
        Width = 553
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          6.614583333333332000
          39.687500000000000000
          2377.942708333333000000
          1828.932291666667000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object ChildBand1: TQRChildBand
      Left = 38
      Top = 790
      Width = 576
      Height = 323
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1068.255208333333000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = TitleBand
      PrintOrder = cboAfterParent
      object QRLabel31: TQRLabel
        Left = 102
        Top = 22
        Width = 372
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          337.343750000000000000
          72.760416666666680000
          1230.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DEATH OR INJURY TO FIRE DEPARTMENT MEMBERS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape22: TQRShape
        Left = 45
        Top = 46
        Width = 486
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          261.276041666666700000
          148.828125000000000000
          152.135416666666700000
          1607.343750000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 45
        Top = 74
        Width = 486
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333340000
          148.828125000000000000
          244.739583333333400000
          1607.343750000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel32: TQRLabel
        Left = 48
        Top = 54
        Width = 391
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          158.750000000000000000
          178.593750000000000000
          1293.151041666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Number of Injuries to Firefighters Requiring Treatment at a Medi' +
          'cal Facility:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 48
        Top = 81
        Width = 391
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          158.750000000000000000
          267.890625000000000000
          1293.151041666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'Number of Injuries to Firefighters Requiring admittance to a Hos' +
          'pital:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 48
        Top = 106
        Width = 391
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          158.750000000000000000
          350.572916666666800000
          1293.151041666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Deaths as a Result of Fire Related injuries to Firefighters:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape25: TQRShape
        Left = 449
        Top = 46
        Width = 2
        Height = 78
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          257.968750000000000000
          1484.973958333333000000
          152.135416666666700000
          6.614583333333332000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object medicalfacility: TQRLabel
        Left = 457
        Top = 54
        Width = 58
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1511.432291666667000000
          178.593750000000000000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object hospital: TQRLabel
        Left = 457
        Top = 81
        Width = 58
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1511.432291666667000000
          267.890625000000000000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '5'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object deaths: TQRLabel
        Left = 457
        Top = 106
        Width = 58
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1511.432291666667000000
          350.572916666666800000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel38: TQRLabel
        Left = 102
        Top = 162
        Width = 372
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          337.343750000000000000
          535.781250000000000000
          1230.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'FIRE INSPECTIONS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRShape26: TQRShape
        Left = 45
        Top = 187
        Width = 486
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333340000
          148.828125000000000000
          618.463541666666800000
          1607.343750000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel39: TQRLabel
        Left = 48
        Top = 195
        Width = 391
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          158.750000000000000000
          644.921875000000000000
          1293.151041666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total Number of Fire Inspections Made:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape28: TQRShape
        Left = 449
        Top = 187
        Width = 2
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333340000
          1484.973958333333000000
          618.463541666666800000
          6.614583333333332000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object inspections: TQRLabel
        Left = 457
        Top = 195
        Width = 58
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1511.432291666667000000
          644.921875000000000000
          191.822916666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel41: TQRLabel
        Left = 48
        Top = 227
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          158.750000000000000000
          750.755208333333300000
          181.901041666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Signed by:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 48
        Top = 254
        Width = 26
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          158.750000000000000000
          840.052083333333300000
          85.989583333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Title:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 48
        Top = 278
        Width = 83
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          158.750000000000000000
          919.427083333333300000
          274.505208333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fire Department'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape27: TQRShape
        Left = 109
        Top = 241
        Width = 354
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          6.614583333333332000
          360.494791666666800000
          797.057291666666600000
          1170.781250000000000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape29: TQRShape
        Left = 86
        Top = 266
        Width = 377
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          6.614583333333332000
          284.427083333333400000
          879.739583333333500000
          1246.848958333333000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape30: TQRShape
        Left = 136
        Top = 292
        Width = 326
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          6.614583333333332000
          449.791666666666700000
          965.729166666666800000
          1078.177083333333000000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
  end
end
