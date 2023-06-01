inherited NfirsAttEntryRepForm: TNfirsAttEntryRepForm
  Left = 125
  Top = 195
  Caption = 'NFIRS Attendance Report'
  ClientHeight = 572
  ClientWidth = 1045
  Font.Name = 'Arial'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1061
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 14
  inherited BaseReport: TQuickRep
    Left = 7
    Width = 979
    Height = 1267
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
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
    PrintIfEmpty = False
    Zoom = 120
    ExplicitLeft = 7
    ExplicitWidth = 979
    ExplicitHeight = 1267
    inherited AlpineBaseFooter: TQRBand
      Left = 58
      Top = 260
      Width = 864
      Height = 22
      Frame.DrawTop = True
      Size.Values = (
        48.506944444444440000
        1905.000000000000000000)
      ExplicitLeft = 58
      ExplicitTop = 260
      ExplicitWidth = 864
      ExplicitHeight = 22
      inherited SysDateField: TQRSysData
        Left = 4
        Top = 2
        Width = 159
        Size.Values = (
          37.482638888888890000
          8.819444444444444000
          4.409722222222222000
          350.572916666666700000)
        Font.Height = -11
        FontSize = 8
        ExplicitLeft = 4
        ExplicitTop = 2
        ExplicitWidth = 159
      end
      inherited SysPageNumber: TQRSysData
        Left = 700
        Top = 2
        Width = 159
        Size.Values = (
          37.482638888888890000
          1543.402777777778000000
          4.409722222222222000
          350.572916666666700000)
        Font.Height = -11
        FontSize = 8
        ExplicitLeft = 700
        ExplicitTop = 2
        ExplicitWidth = 159
      end
      object IncNumFooter: TQRLabel
        Left = 240
        Top = 2
        Width = 383
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          529.166666666666700000
          4.409722222222222000
          844.461805555555600000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object DetailData: TQRBand
      Left = 58
      Top = 58
      Width = 864
      Height = 151
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = PrtData
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        332.934027777777800000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object IncNumField: TQRLabel
        Left = 682
        Top = 2
        Width = 107
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1503.715277777778000000
          4.409722222222222000
          235.920138888888900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '9999-999999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object DateAlarmField: TQRLabel
        Left = 404
        Top = 2
        Width = 91
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          890.763888888888900000
          4.409722222222222000
          200.642361111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '99/99/9999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object AddressField: TQRLabel
        Left = 147
        Top = 72
        Width = 344
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          324.114583333333300000
          158.750000000000000000
          758.472222222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object TimeAlarmField: TQRLabel
        Left = 500
        Top = 2
        Width = 79
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1102.430555555556000000
          4.409722222222222000
          174.184027777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '99:99:99'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 117
        Top = 3
        Width = 21
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          257.968750000000000000
          6.614583333333330000
          46.302083333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'A'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object FireDeptField: TQRLabel
        Left = 142
        Top = 2
        Width = 258
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          313.090277777777800000
          4.409722222222222000
          568.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fire Department Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 117
        Top = 48
        Width = 21
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          257.968750000000000000
          105.833333333333000000
          46.302083333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'B'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object LocTypeField: TQRLabel
        Left = 146
        Top = 49
        Width = 248
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          321.909722222222200000
          108.038194444444400000
          546.805555555555600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 142
        Top = 23
        Width = 258
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          313.090277777777800000
          50.711805555555560000
          568.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fire Department'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 404
        Top = 23
        Width = 91
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          890.763888888888900000
          50.711805555555560000
          200.642361111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 500
        Top = 23
        Width = 79
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          1102.430555555556000000
          50.711805555555560000
          174.184027777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Time of Alarm'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 682
        Top = 23
        Width = 107
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          1503.715277777778000000
          50.711805555555560000
          235.920138888888900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Incident Number'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 797
        Top = 23
        Width = 61
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          1757.274305555556000000
          50.711805555555560000
          134.496527777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Exposure'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object ExpNumField: TQRLabel
        Left = 797
        Top = 2
        Width = 61
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1757.274305555556000000
          4.409722222222222000
          134.496527777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 112
        Top = 43
        Width = 752
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          248.046875000000000000
          95.911458333333300000
          1656.953125000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object CensusField: TQRLabel
        Left = 494
        Top = 48
        Width = 103
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1089.201388888889000000
          105.833333333333300000
          227.100694444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'XXXXXXXX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 494
        Top = 67
        Width = 103
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          1089.201388888889000000
          147.725694444444400000
          227.100694444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Census Tract'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRShape12: TQRShape
        Left = 112
        Top = 0
        Width = 2
        Height = 148
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          327.421875000000000000
          248.046875000000000000
          0.000000000000000000
          3.307291666666670000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRImage1: TQRImage
        Left = 33
        Top = 75
        Width = 50
        Height = 61
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          135.598958333333000000
          72.760416666666700000
          165.364583333333000000
          109.140625000000000000)
        XLColumn = 0
        Picture.Data = {
          07544269746D6170360D0000424D360D00000000000036040000280000003000
          000030000000010008000000000000090000C30E0000C30E0000000100008000
          000000000000E1E0DF001C9CA800286368009999990003F6F900333333006AA5
          C5005A5A5A0082CBF200000066005D9ABD00208B9700212121008080800016BE
          D300313C4100AEADAB002983AD00D6D6D6002E74A300FFFFFF00000024009091
          92004A8AB000434343006BB8E40041586A004A9CCE00BABABA0052A3D4005896
          BB006B6B7200111111003366990008E7EF0011146A000ED5E30091D9FD0017AA
          B200464C51002B404B00F0F0F0002395B900404E5E00237A84004485AE0076AF
          CD00000084007AC5EE000808080060AEDC0062698700B6B6B6008C8C8C005392
          B600268CB30010CEDE000E0E290058636D00A4A4A40019B5CD0000001B008BD4
          F900444B7B0068B5E1003A3A3A0020276A0029292900219DBD00569FCA00397B
          A500CCCCCC002F484F000BDDE8004494C6007373730000FFFF0072BEE8005151
          51002A313C005097C20097DDFF0000007200A3AEC00006EEF400E7E7E700858E
          9B002494B70013C5D8001FA3C1007D8489005AA9D800F7F7F7000D0D7E002888
          AF006066870086CFF500AFB8C70064B2DF000808420065A1C300316D9E005556
          5C003A7BAD007BB8D900000033004D8CB300374550002F4243001CACC7006666
          6600297EA300475B5D00494949009398A4006C7587009CA1B300405254002282
          8B007779790013BECB002F617E006B6F78002F464900BDC3CA00619DBE006FAA
          C800000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000151515151515151515151515151515060606060606060606060606060606
          0606061515151515151515151515151515151515151515151515151515060606
          0606060606060606060606060606060606060606060615151515151515151515
          1515151515151515151515060606060606063D0F0F593925254A03066D054D4D
          4D4D060606060606151515151515151515151515151515151515150606062B45
          5A5A6E3D3D0F593939256D060655054D4D4D4D4D4D0606061515151515151515
          151515151515151515151506065F382B455A5A6E3D3D0F595979060606235505
          054D4D4D4D4D0606061515151515151515151515151515151515150606125F38
          5858455A6E6E3D0F597706060639235555054D4D4D4D4D060615151515151515
          1515151515151515151515060670705F385858455A6E6E3D0F7C060606274A23
          2355054D4D4D4D06061515151515151515151515151515151515150606141412
          1238382B455A5A6E0C0606060677254A232355054D4D4D060615151515151515
          1515151515151515151515060666661470125F382B455A5810060D0D06033925
          4A4A235505054D06061515151515151515151515151515151515150606066666
          1414125F3858584906064444067C0F39254A4A23555505060615151515151515
          1515151515151515151515150606062266141412707A6D060606060606064902
          3925254A23230606061515151515151515151515151515151515151506060606
          2266667A1006060606064444060606062D3939254A2306061515151515151515
          151515151515151515151515151506060622490606060D320000000000324406
          062D593925060606151515151515151515151515151515151515151515151506
          0606060644320606060606060000000D06060C59060606151515151515151515
          151515151515151515151515151515130606060D060606060606060606063232
          44066D0606061515151515151515151515151515151515151515151515151511
          06060D060606064B4B4747060606060D32060606061515151515151515151515
          1515151515151515151515151515154842060606061C1C1C4B2E2E4747060606
          0606060615151515151515151515151515151515151515151515151515151515
          3C0606061E1C1C1C1C2E2E2E4747444406060648151515151515151515151515
          151515151515151515151515151515150606065C1E1E1E1E1E6B2E2E2E2E4744
          06485D1515151515151515151515151515151515151515151515151515151506
          060633335C5C5C5C5C5118182E2E2E4444151515151515151515151515151515
          1515151515151515151515151515150606636363333333335C466B6B6B181844
          4406151515151515151515151515151515151515151515151515151515151506
          061A414141636363635C3737376B181844061515151515151515151515151515
          15151515151515151515151515151506064E4E1A1A1A414141411F1F3737376B
          4444061515151515151515151515151515151515151515151515151515151506
          06314E4E4E4E4E1A1A1A7E0B1F3737376B060615151515151515151515151515
          15151515151515151515151515155D0606313131314E4E4E4E4E077E0B0B1F1F
          370606422A151515151515151515151515151515151515151515151515117206
          060909093131313131314165650B0B0B1F060632191515151515151515151515
          15151515151515151515151535444206066161610909090909314E0765657E7E
          0B060632324C151515151515151515151515151515151515151515010D444206
          063F3F3F3F6161616109317F0707077E7E060632323201151515151515151515
          15151515151515151515150821444206062626263F3F3F3F6161617F7F070707
          6506063232320115151515151515151515151515151515151515152121444206
          06525252262626263F3F3F692F2F7F7F070606643A1915151515151515151515
          151515151515151515151521214442060652525252525252262626312F2F2F7F
          06065E2406191515151515151515151515151515151515151515153C210D2132
          3210106C6C10101010713B2C4929292921643006060E15151515151515151515
          15151515151515151515151515780000005074743B7B5B5B6F7B20676C000000
          000A240606481515151515151515151515151515151515151515151515080000
          6A1B0606060606060606060606061616160A24064C1515151515151515151515
          151515151515151515151515154C00325E40064C4C20206F4F4242281B060A53
          300A3A422A1515151515151515151515151515151515151515151515153C0000
          5E4006360E17040404724F426C060A53306A3E08151515151515151515151515
          151515151515151515151515155600002460060421171704425B0D7276060A53
          303E003615151515151515151515151515151515151515151515151515154400
          6A3406040420170404215B0871060A530A000013151515151515151515151515
          151515151515151515151515151536000060063C363617046742722071062453
          3E0044151515151515151515151515151515151515151515151515151515560D
          003406484F420404727236787106436A00321115151515151515151515151515
          1515151515151515151515151515154821340613137D1D35113C176F28065000
          006F151515151515151515151515151515151515151515151515151515151515
          35740673353573353636366F67064200672A1515151515151515151515151515
          151515151515151515151515151515151557065704171711040404040E06424C
          2A15151515151515151515151515151515151515151515151515151515151515
          157D0662040404040404043C1106351515151515151515151515151515151515
          151515151515151515151515151515151515065454353C04043501011D061515
          1515151515151515151515151515151515151515151515151515151515151515
          1515560675157D13485D5D010615151515151515151515151515151515151515
          151515151515151515151515151515151515151506135D155D5D5D0615151515
          1515151515151515151515151515151515151515151515151515151515151515
          151515155D060606060606151515151515151515151515151515151515151515
          1515}
      end
      object QRLabel92: TQRLabel
        Left = 6
        Top = 7
        Width = 102
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          112.447916666666700000
          13.229166666666670000
          16.536458333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NFIRS-10 Personnel'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel13: TQRLabel
        Left = 493
        Top = 86
        Width = 104
        Height = 58
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.881944444444400000
          1086.996527777778000000
          189.618055555555600000
          229.305555555555600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '(* - date/time of handscan; otherwise date/time record entered).'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRShape2: TQRShape
        Left = 112
        Top = 43
        Width = 752
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          248.046875000000000000
          95.911458333333300000
          1656.953125000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 600
        Top = 43
        Width = 2
        Height = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          238.125000000000000000
          1322.916666666667000000
          94.809027777777780000
          4.409722222222222000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 606
        Top = 48
        Width = 21
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1336.145833333333000000
          105.833333333333300000
          46.302083333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Left = 633
        Top = 49
        Width = 194
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1395.677083333333000000
          108.038194444444400000
          427.743055555555600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Incident Type'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object IncTypeField: TQRLabel
        Left = 635
        Top = 72
        Width = 222
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          1400.086805555556000000
          158.750000000000000000
          489.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object TimeInField: TQRLabel
        Left = 586
        Top = 2
        Width = 79
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1292.048611111111000000
          4.409722222222222000
          174.184027777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '99:99:99'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 586
        Top = 23
        Width = 79
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          30.868055555555560000
          1292.048611111111000000
          50.711805555555560000
          174.184027777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Time In'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
    end
    object NFIRSAttBand: TQRSubDetail
      Left = 58
      Top = 235
      Width = 864
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = NFIRSAttBandBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.121527777777780000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = DetailData
      PrintBefore = False
      PrintIfEmpty = True
      object PersCodeField: TQRLabel
        Left = 3
        Top = 2
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          6.614583333333333000
          4.409722222222222000
          152.135416666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '99999999'
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
      object NameField: TQRLabel
        Left = 74
        Top = 2
        Width = 167
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          163.159722222222200000
          4.409722222222222000
          368.211805555555600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NameField'
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
      object EntryMethField: TQRLabel
        Left = 248
        Top = 2
        Width = 103
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          546.805555555555600000
          4.409722222222222000
          227.100694444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NameField'
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
      object EntryCompField: TQRLabel
        Left = 357
        Top = 2
        Width = 143
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          787.135416666666700000
          4.409722222222222000
          315.295138888888900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LYNBROOKKIOSK10'
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
      object DateTimeEntryField: TQRLabel
        Left = 506
        Top = 2
        Width = 137
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          1115.659722222222000000
          4.409722222222222000
          302.065972222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '99/99/9999 99:99'
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
      object SecNameField: TQRLabel
        Left = 648
        Top = 2
        Width = 157
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          1428.750000000000000000
          4.409722222222222000
          346.163194444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'XXXXXXXXXXXXXXXXXX'
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
      object frdsfield: TQRLabel
        Left = 820
        Top = 2
        Width = 30
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          1807.986111111111000000
          4.409722222222222000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'XXXXXXXXXXXXXXXXXX'
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
    end
    object ChildBand1: TQRChildBand
      Left = 58
      Top = 209
      Width = 864
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        57.326388888888890000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = DetailData
      PrintOrder = cboAfterParent
      object QRLabel8: TQRLabel
        Left = 3
        Top = 3
        Width = 69
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          6.614583333333333000
          6.614583333333333000
          152.135416666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ID#'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 74
        Top = 3
        Width = 167
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          163.159722222222200000
          6.614583333333333000
          368.211805555555600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Last, First'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 248
        Top = 3
        Width = 103
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          546.805555555555600000
          6.614583333333333000
          227.100694444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Entry Method'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 357
        Top = 3
        Width = 143
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          787.135416666666700000
          6.614583333333333000
          315.295138888888900000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Entry Computer'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 506
        Top = 3
        Width = 137
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          1115.659722222222000000
          6.614583333333333000
          302.065972222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date and Time'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 648
        Top = 3
        Width = 149
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          1428.750000000000000000
          6.614583333333333000
          328.524305555555600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Entered By'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object frdscaption: TQRLabel
        Left = 811
        Top = 3
        Width = 46
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          1788.142361111111000000
          6.614583333333333000
          101.423611111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FRDS?'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 136
    Top = 0
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 170
    Top = 0
  end
  inherited compreport: TQRCompositeReport
    Left = 0
    Top = 0
  end
  inherited BasePDFFilter: TQRPDFFilter
    Left = 34
    Top = 0
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 68
    Top = 0
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 102
    Top = 0
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 204
    Top = 0
  end
  inherited QRXMLSSFilter1: TQRXMLSSFilter
    Left = 238
    Top = 0
  end
  inherited QRXMLSFilter1: TQRXMLSFilter
    Left = 272
    Top = 0
  end
end
