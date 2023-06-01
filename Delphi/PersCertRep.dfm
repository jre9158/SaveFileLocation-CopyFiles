inherited PersCertRepForm: TPersCertRepForm
  Left = 120
  Top = 112
  Width = 1372
  Height = 408
  VertScrollBar.Range = 2000
  Caption = 'Apparatus Summary Report'
  Font.Name = 'Arial'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1372
  ExplicitHeight = 408
  PixelsPerInch = 96
  TextHeight = 14
  inherited BaseReport: TQuickRep
    Left = 8
    Top = 37
    Width = 1267
    Height = 979
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Frame.Width = 2
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [LastPageFooter]
    Page.Orientation = poLandscape
    Page.Values = (
      63.500000000000000000
      2159.000000000000000000
      63.500000000000000000
      2794.000000000000000000
      63.500000000000000000
      63.500000000000000000
      0.000000000000000000)
    Zoom = 120
    ExplicitLeft = 8
    ExplicitTop = 37
    ExplicitWidth = 1267
    ExplicitHeight = 979
    inherited AlpineBaseFooter: TQRBand
      Left = 29
      Top = 217
      Width = 1209
      Height = 25
      Frame.DrawTop = True
      Size.Values = (
        55.121527777777780000
        2665.677083333333000000)
      ExplicitLeft = 29
      ExplicitTop = 217
      ExplicitWidth = 1209
      ExplicitHeight = 25
      inherited SysDateField: TQRSysData
        Left = 6
        Top = 3
        Width = 190
        Height = 19
        Size.Values = (
          41.892361111111110000
          13.229166666666670000
          6.614583333333333000
          418.923611111111100000)
        Font.Height = -12
        FontSize = 9
        ExplicitLeft = 6
        ExplicitTop = 3
        ExplicitWidth = 190
        ExplicitHeight = 19
      end
      inherited SysPageNumber: TQRSysData
        Left = 1040
        Top = 3
        Width = 162
        Height = 19
        Size.Values = (
          41.892361111111110000
          2293.055555555556000000
          6.614583333333333000
          357.187500000000000000)
        Font.Height = -12
        FontSize = 9
        ExplicitLeft = 1040
        ExplicitTop = 3
        ExplicitWidth = 162
        ExplicitHeight = 19
      end
    end
    object NIEvAttBand: TQRBand
      Left = 29
      Top = 144
      Width = 1209
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      BeforePrint = NIEvAttBandBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        2665.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object PersCodeField: TQRLabel
        Left = 2
        Top = 2
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          4.409722222222222000
          4.409722222222222000
          134.496527777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '99999999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object CertNumField: TQRLabel
        Left = 956
        Top = 2
        Width = 250
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          2107.847222222222000000
          4.409722222222222000
          551.215277777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Location'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
      object NITrainCat1DescrField: TQRLabel
        Left = 288
        Top = 2
        Width = 310
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          635.000000000000000000
          4.409722222222222000
          683.506944444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'DescField'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object NameField: TQRLabel
        Left = 67
        Top = 2
        Width = 217
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          147.725694444444400000
          4.409722222222222000
          478.454861111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '99999999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object DateTimeExpField: TQRLabel
        Left = 880
        Top = 2
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          1940.277777777778000000
          4.409722222222222000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '99/99/9999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
      object DescrField: TQRLabel
        Left = 604
        Top = 2
        Width = 198
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          1331.736111111111000000
          4.409722222222222000
          436.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'XXXXXXXX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object DateTimeAttendField: TQRLabel
        Left = 803
        Top = 2
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          1770.503472222222000000
          4.409722222222222000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '99/99/9999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
    end
    object TitleBand: TQRBand
      Left = 29
      Top = 29
      Width = 1209
      Height = 65
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 2
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        143.315972222222200000
        2665.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object FireDeptField: TQRLabel
        Left = 3
        Top = 36
        Width = 407
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          6.614583333333333000
          79.375000000000000000
          897.378472222222200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Fire Department Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object TitleField: TQRLabel
        Left = 3
        Top = 6
        Width = 407
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          61.736111111111110000
          6.614583333333333000
          13.229166666666670000
          897.378472222222200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Training Certification Report'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 29
      Top = 94
      Width = 1209
      Height = 50
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
        110.243055555555600000
        2665.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 2
        Top = 19
        Width = 61
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          4.409722222222222000
          41.892361111111110000
          134.496527777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'ID #'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object LocationLabel: TQRLabel
        Left = 956
        Top = 19
        Width = 250
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          2107.847222222222000000
          41.892361111111110000
          551.215277777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Certification #'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 67
        Top = 19
        Width = 217
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          147.725694444444400000
          41.892361111111110000
          478.454861111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 288
        Top = 19
        Width = 310
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          635.000000000000000000
          41.892361111111110000
          683.506944444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Course Code and Description'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 880
        Top = 2
        Width = 72
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1940.277777777778000000
          4.409722222222222000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date Expires'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel1: TQRLabel
        Left = 604
        Top = 19
        Width = 198
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1331.736111111111000000
          41.892361111111110000
          436.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Comments'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 803
        Top = 2
        Width = 72
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1770.503472222222000000
          4.409722222222222000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date Certified'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 29
      Top = 168
      Width = 1209
      Height = 49
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        108.038194444444400000
        2665.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel4: TQRLabel
        Left = 880
        Top = 13
        Width = 72
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1940.277777777778000000
          28.663194444444440000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '*Expired'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 254
        Top = 28
        Width = 551
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          560.034722222222200000
          61.736111111111110000
          1214.878472222222000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 
          'Note:  This report included all records that have a blank Date C' +
          'ertified entry.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRImage2: TQRImage
        Left = 812
        Top = 1
        Width = 61
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888890000
          1790.347222222222000000
          2.204861111111111000
          134.496527777777800000)
        XLColumn = 0
        Picture.Data = {
          0C544A70656747726170686963FFD8FFE000104A464946000101010060006000
          00FFDB00430006040506050406060506070706080A100A0A09090A140E0F0C10
          17141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D302D
          283025282928FFDB0043010707070A080A130A0A13281A161A28282828282828
          2828282828282828282828282828282828282828282828282828282828282828
          2828282828282828282828FFC00011080024002003012200021101031101FFC4
          001F0000010501010101010100000000000000000102030405060708090A0BFF
          C400B5100002010303020403050504040000017D010203000411051221314106
          13516107227114328191A1082342B1C11552D1F02433627282090A161718191A
          25262728292A3435363738393A434445464748494A535455565758595A636465
          666768696A737475767778797A838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101
          0101010101010000000000000102030405060708090A0BFFC400B51100020102
          0404030407050404000102770001020311040521310612415107617113223281
          08144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A
          35363738393A434445464748494A535455565758595A636465666768696A7374
          75767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
          AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5
          E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9AAADE
          DCC5616B3DCDD4D1C16D0A3492CB2B0448D00C96663C0000249356ABE78FDA7F
          C732F956BE06F0F5F05D4AF896D4FCA970D15BEDC889F8E3783B88041DAB820A
          C9CA6EDAB2A107524A11DD9E5FAFFC5AF116A7F11078EF4A96FA1D174E992DED
          B4C799543DA9DBE6A360100C8429270C412B827CB523EBEF0C6B963E25F0EE9D
          AD694FE6595F42B34792A59723946DA480CA72AC0138208ED5F1CDAD9C36D651
          DAA2030226CDA40F98639C8C77E735D87ECDDE2F5F06F8B6E3C17A99234FD626
          FB4584CCE8AB1CDB48DAD90093204551CFDE55017E726B9E8621549347BD9B64
          92C052A7513BDD6BE4CFAC2BE66FDA17E1368FA6E83E24F1E26A9ADCDADFDA22
          9C2CF708D1297991368F93705556C28DDC0551D057CFDE13F0E596ABA6BDC5CB
          CDBC48530AC00C000F71EF5B43C15A5839DD71FF007DAFFF00134E788845B8B3
          2C2E478AAD18D685ACFCCDED2DDA4D32CDD98B16850924E4925466BA2F801F09
          F47F1EF87EEBC45A9EABAE59EA569AA3470CB613A4654A24522B82C8CC1F7393
          907B0EF5856F12C16F1C2B92B1A045CF5C0181FCABD8BF6343FF0016CB57FF00
          B0CCDFFA220AC7096729347AFC50E50A546127AA4EFF0081F1E5A6A37B6A852D
          AEA7890FCC551CA8CFE1532EBBAA67FE3FEE7FEFEB7F8D14574348F9CA15AA28
          AF79FDE3E5D6752DBFF1FF0075FF007F9BFC6BEB8FD8C0FF00C5AED54F7FED99
          7FF44414514E9A271926F767FFD9}
      end
    end
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 136
    Top = 4
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 169
    Top = 4
  end
  inherited compreport: TQRCompositeReport
    Top = 4
  end
  inherited BasePDFFilter: TQRPDFFilter
    Left = 37
    Top = 4
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 70
    Top = 4
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 103
    Top = 4
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 202
    Top = 4
  end
  inherited QRXMLSSFilter1: TQRXMLSSFilter
    Left = 235
    Top = 4
  end
  inherited QRXMLSFilter1: TQRXMLSFilter
    Left = 268
    Top = 4
  end
end
