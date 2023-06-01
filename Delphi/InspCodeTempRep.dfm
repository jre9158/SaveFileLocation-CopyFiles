inherited InspCodeTempRepForm: TInspCodeTempRepForm
  Left = 133
  Top = 81
  Caption = 'InspCodeTempRepForm'
  ClientHeight = 383
  ClientWidth = 1111
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1127
  ExplicitHeight = 422
  PixelsPerInch = 96
  TextHeight = 13
  inherited BaseReport: TQuickRep
    Left = 8
    Top = 42
    Width = 979
    Height = 1267
    Frame.Color = clGray
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Frame.Width = 2
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      63.500000000000000000
      2794.000000000000000000
      63.500000000000000000
      2159.000000000000000000
      63.500000000000000000
      63.500000000000000000
      0.000000000000000000)
    Zoom = 120
    ExplicitLeft = 8
    ExplicitTop = 42
    ExplicitWidth = 979
    ExplicitHeight = 1267
    inherited AlpineBaseFooter: TQRBand
      Left = 29
      Top = 371
      Width = 921
      Height = 30
      Frame.Color = clGray
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Width = 2
      Size.Values = (
        66.040000000000000000
        2030.677083333333000000)
      ExplicitLeft = 29
      ExplicitTop = 371
      ExplicitWidth = 921
      ExplicitHeight = 30
      inherited SysDateField: TQRSysData
        Left = 6
        Top = 5
        Width = 190
        Height = 20
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          10.583333333333330000
          418.041666666666700000)
        FontSize = 10
        ExplicitLeft = 6
        ExplicitTop = 5
        ExplicitWidth = 190
        ExplicitHeight = 20
      end
      inherited SysPageNumber: TQRSysData
        Left = 809
        Top = 5
        Width = 106
        Height = 20
        Size.Values = (
          44.979166666666670000
          1783.291666666667000000
          10.583333333333330000
          232.833333333333300000)
        FontSize = 10
        ExplicitLeft = 809
        ExplicitTop = 5
        ExplicitWidth = 106
        ExplicitHeight = 20
      end
    end
    object AFDCodeTempBand: TQRBand
      Left = 29
      Top = 155
      Width = 921
      Height = 2
      Frame.Color = 15329769
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = AFDCodeTempBandBeforePrint
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        4.409722222222222000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
    end
    object TitleBand1: TQRBand
      Left = 29
      Top = 29
      Width = 921
      Height = 126
      Frame.Color = clGray
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Width = 0
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        277.812500000000000000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object FireDeptName: TQRLabel
        Left = 195
        Top = 7
        Width = 530
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          61.736111111111110000
          429.947916666666700000
          15.434027777777780000
          1168.576388888889000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = 'Sample Fire Department Check'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object InspTypeDescrField: TQRLabel
        Left = 195
        Top = 37
        Width = 530
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          61.736111111111110000
          429.947916666666700000
          81.579861111111110000
          1168.576388888889000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = 'Non-Residential Inspection Form'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel1: TQRLabel
        Left = 2
        Top = 71
        Width = 142
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          4.409722222222222000
          156.545138888888900000
          313.090277777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date of Inspection:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object DateTimeStartField: TQRLabel
        Left = 150
        Top = 71
        Width = 265
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          330.729166666666700000
          156.545138888888900000
          584.288194444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 424
        Top = 71
        Width = 83
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          934.861111111111100000
          156.545138888888900000
          183.003472222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Shift'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 2
        Top = 99
        Width = 142
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          4.409722222222222000
          218.281250000000000000
          313.090277777777800000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Street Address:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object AddressField: TQRLabel
        Left = 150
        Top = 99
        Width = 265
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          330.729166666666700000
          218.281250000000000000
          584.288194444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object SchdShiftNameDescrField: TQRLabel
        Left = 511
        Top = 71
        Width = 312
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1126.684027777778000000
          156.545138888888900000
          687.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 424
        Top = 99
        Width = 83
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          934.861111111111100000
          218.281250000000000000
          183.003472222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Occupant'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object NameField: TQRLabel
        Left = 511
        Top = 99
        Width = 312
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1126.684027777778000000
          218.281250000000000000
          687.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 67
        Width = 824
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          4.409722222222222000
          0.000000000000000000
          147.725694444444400000
          1816.805555555556000000)
        XLColumn = 0
        Brush.Color = clGray
        Pen.Color = clGray
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object LogoImage: TQRImage
        Left = 824
        Top = 3
        Width = 92
        Height = 99
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          218.281250000000000000
          1816.805555555556000000
          6.614583333333333000
          202.847222222222200000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D6167652A090000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC00011080050005003012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28AE5FC69E2F5F0CDA5BDBDA402F35ABF6F2AC6CC1FBEDDD9BD117A934017FC4
          5E2AD1FC2D66B71AADDAC5BCED8A151BA595BD110724D732BAD78E7C45F3E99A
          6DA787AC1BEECFAA665B861EA215385FA31AADA078756C6F9B5AD5EE3FB4FC43
          30FDEDEC83887FD8857A228F6E4D754971EF401CF4BE07D5B503BF52F1EF8819
          FB8B164B45FC028CFEB4CB4F06EA36E827D1FE20EBAE0E706EE44BC8C9CE3F88
          7A8F5AEAD67F7AE03C3DA949A14D3CCD23369375A84F138278B77F3582B8F446
          FBA7D0E0F735954AD0A4E2A6EDCCECBD75FF0021A8B77B74361B59F1D7877E7D
          4B4DB4F10D8AFDE9F4BCC572A3D4C2C70DF4535D2F877C53A3F8A6CDAE34ABB1
          298CED96161B6585BD1D0F20D31EE3DEB95D7FC3A97F7C9AD69371FD97E21847
          EEAF631C4A3FB932F4753EFC8AD447A3515CC7837C5C3C496D716B7900B3D6EC
          18457D679FB8DD9D7D51BA835D3D004573730D9DACD7570E238614692473D154
          0C93F95788F866FE5F12F89B52F16DE83E64C3CAB346FF00961073B547B91C9F
          76AED7E30EA0D69E0396CE36DB26A33C76BEFB49CB7FE3AA47E35C37856410D9
          4B18E30E081ED8C0FE5401DDC771EF5616E3DEB063B8F7A7C97F15B44D2CF2AC
          68A0966638C0A00D4D4B584D334C9EEDC6EF2D7E541D5D8F0AA3DC9207E3593A
          759471685169B78AB28688ACE3B316C97FD49AC6178FAC5EC57732B476701DD6
          D0B0C176FF009E8C3B7FB23F13DB1AD1DC67BD7C5F10E35569C68D27A45DDBF3
          FF00807BB80C0C941D49ADFF0022DE85A84C6CA4B2BA90BDCD8C860773D5C000
          A3FE2A47E39ABEF73EF5CD473795E279B6F4B8B34761EE8C467F223F2A92E758
          B786FEDEC59CFDA270C5140EC06727D3A57D4E06BBAF8685596ED6BEBD7F13C7
          AF4FD9D4943B199E27BF97C39AFE99E2EB207CDB63E45E22FF00CB7B73C953EA
          40E47B8AF69B6B986F2D21BAB771243322C91B8E8CA4641FCABC47C512ACBA72
          C6DCEE7E9EA30735DAFC1FD41AEFC09159C8DBA4D3A792D7DF68395FFC7580FC
          2BACC8E7FE37C8FF006BF0C43FF2CDA4B873F550807FE846B92B1BD4B0209CB6
          E182A3F9D7A07C68B032F872C35151F3D9DD004FA2B8C1FD42D79B58C1E6C218
          F24F5A00D2BBD5EE160790C9E5C6A09213FC6B105D3DEC56C9703E7794F9A339
          E17923F97E74FD6D8DB5947113C4920E3D873FE158D1DE14BA427EEB1241F462
          07F80AE4C4D6714E11DDA67AD80C03AB18D797C2A693F4FE9A476B15EE4E7357
          E1BCE9CD7210DE7BD4D36A7246162883F98E0E1C2EEDBF4F53E9DABE47EA4EA4
          94227D6E2146941CE5B22EEA77E65D5E59E3DCC6155B68950F2EF9C903F1207E
          06A4962934FBED39E47135E959269DD893CE028507D00240FC4F7AADA5C2B6EE
          B3480798A088D739F2C1EBCF763DCD4B217BED4E790676448B083EFF0078FF00
          315EEE16ADEBD3C351F8209DDF776B7DD767CB62F0B2A746588ACAD29BD176EB
          F7D90EBFBE4BFCEDC8D83014F7F522BABF82323FDB3C4F0FFCB3592DE41F560E
          0FFE822B89BE83CA84B0E08E86BD27E0BD818BC397FA930F9EF2E8807D550607
          EA5ABDC3C53B7F11E8E9AFF876FB4B7207DA222AAC7F85BAA9FC0815E0DA2892
          1924B3B9431CF0B98E443D5581C115F46D7997C44F094B1DDB78974B88B3003E
          DB0A0E481FF2D00F61D7F3F5A00F37F1B5BB47158CA07C997527DC818FE46B91
          5908E86BD22EE38BC47A0496D1BAF9F80F1127F887F8F4FC6BCCE58E4B799E29
          5191D0ED6561820FA579F8C83E6523EBF87315154A547ADEFF002D0B71DC95EB
          57A1BDF7AC50D522B1EA2BCE9524CFA6E68B5767471DF6D5DDCB63A01D49EC2B
          ADD3B4B6B4B0459B999B2F29FF0068F27FC3F0ACFF0008785E6263D53514288B
          F341130C127FBE47F21F8FA56F6AFA843690B7CC0102BD3C0E17D8A727BB3E13
          3BC74311554293BC63D7BBFEB6398D68493491D9DB2192799C471A0EACC4E00A
          F79F0E68E9A07876C74B420FD9E20ACC3F89BAB1FC4935C37C3BF094B25DAF89
          75488AB107EC50B8E403FF002D08F71D3F3F4AF4DAEE3C50A64AFB2366EB814F
          A4650CA41E86803C6BC4DA5DB43A9C979A428B4959B3241FF2CDCFAAFF0074FB
          74FA572FA8C561AA10BAA40F6D740604CA304FD7B30AF70D43C356F78C5B0326
          B0AE3C13B8150015F4232286935665465283E68BB33C5E0F082C97073AA5B8B7
          CF0C149623E9D3F5AE9F4BD27C3BA2309D89BBB85E43CD8C29F50BD2BAF93E1E
          C44E7ECC83FDDC8FE5447F0F62073F6643FEF64FF3A88D2845DD23A2AE37115A
          3CB526DA39ABCF134974C62B28DA56FF0064703F1AB9E19D2EDA6D4E3BCD5D45
          DCAAD98E0FF96687D5BFBC7DBA7D6BABB7F04ED0148017D00C0ADDD3FC356F66
          C1B0322B4D0E536E27DF1AB74C8A7D22A855007414B480FFD9}
        Stretch = True
      end
    end
    object SectionTitleBand: TQRChildBand
      Left = 29
      Top = 157
      Width = 921
      Height = 49
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
        108.038194444444400000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = AFDCodeTempBand
      PrintOrder = cboAfterParent
      object QRShape5: TQRShape
        Left = 0
        Top = 0
        Width = 921
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Width = 2
        Size.Values = (
          46.302083333333330000
          0.000000000000000000
          0.000000000000000000
          2030.677083333333000000)
        XLColumn = 0
        Brush.Color = clSilver
        Pen.Color = clSilver
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object SectionTitleField: TQRLabel
        Left = 3
        Top = 1
        Width = 790
        Height = 19
        Frame.Color = clNone
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111110000
          6.614583333333333000
          2.204861111111111000
          1741.840277777778000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Section Title'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 14
        Top = 29
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          29.765625000000000000
          62.838541666666680000
          62.838541666666680000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 56
        Top = 29
        Width = 51
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          122.369791666666700000
          62.838541666666680000
          112.447916666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N of C'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 120
        Top = 29
        Width = 29
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          264.583333333333300000
          62.838541666666680000
          62.838541666666680000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
    end
    object FieldBand: TQRChildBand
      Left = 29
      Top = 206
      Width = 921
      Height = 22
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
        48.506944444444440000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = SectionTitleBand
      PrintOrder = cboAfterParent
      object DescrField: TQRLabel
        Left = 302
        Top = 3
        Width = 608
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          665.868055555555600000
          6.614583333333333000
          1340.555555555556000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Description'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object CodeField: TQRLabel
        Left = 162
        Top = 3
        Width = 135
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          357.187500000000000000
          6.614583333333333000
          297.656250000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Violation'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object CField: TQRLabel
        Left = 20
        Top = 3
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          37.482638888888890000
          44.097222222222220000
          6.614583333333333000
          35.277777777777780000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object NCField: TQRLabel
        Left = 74
        Top = 3
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          37.482638888888890000
          163.159722222222200000
          6.614583333333333000
          35.277777777777780000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 8
      end
      object NAField: TQRLabel
        Left = 126
        Top = 3
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          37.482638888888890000
          277.812500000000000000
          6.614583333333333000
          35.277777777777780000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
    object SummaryBand1: TQRBand
      Left = 29
      Top = 248
      Width = 921
      Height = 62
      Frame.Color = clGray
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
        136.701388888888900000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel10: TQRLabel
        Left = 43
        Top = 39
        Width = 83
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          94.809027777777780000
          85.989583333333330000
          183.003472222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Inspector'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object Inspector1Field: TQRLabel
        Left = 133
        Top = 39
        Width = 360
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          293.246527777777800000
          85.989583333333330000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 118
        Top = 6
        Width = 170
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          259.291666666666700000
          13.229166666666670000
          375.708333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'NOTE:  C = Complies'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 313
        Top = 6
        Width = 239
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          690.562500000000000000
          13.229166666666670000
          526.520833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N of C = Need of Correction'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 580
        Top = 6
        Width = 170
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          13.229166666666670000
          375.708333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N/A = Not Applicable'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 524
        Top = 39
        Width = 82
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1155.347222222222000000
          85.989583333333330000
          180.798611111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object DateTimeStart1Field: TQRLabel
        Left = 613
        Top = 39
        Width = 209
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222220000
          1351.579861111111000000
          85.989583333333330000
          460.815972222222200000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object InspNarrBand: TQRChildBand
      Left = 29
      Top = 310
      Width = 921
      Height = 61
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
        134.496527777777800000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = SummaryBand1
      PrintOrder = cboAfterParent
      object QRLabel22: TQRLabel
        Left = 34
        Top = 6
        Width = 173
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          74.083333333333330000
          13.229166666666670000
          381.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Note / Comments'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object NarrField: TQRLabel
        Left = 78
        Top = 35
        Width = 722
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          171.979166666666700000
          76.729166666666670000
          1592.791666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Note / Comments'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object VioBand: TQRChildBand
      Left = 29
      Top = 228
      Width = 921
      Height = 20
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
        44.097222222222220000
        2030.677083333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = FieldBand
      PrintOrder = cboAfterParent
      object VioField: TQRLabel
        Left = 302
        Top = 2
        Width = 608
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888890000
          665.868055555555600000
          4.409722222222222000
          1340.555555555556000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Description'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
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
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 121
    Top = 7
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 91
    Top = 7
  end
  inherited compreport: TQRCompositeReport
    Left = 31
    Top = 7
  end
  inherited BasePDFFilter: TQRPDFFilter
    Left = 150
    Top = 7
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 61
    Top = 7
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 2
    Top = 7
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 210
    Top = 7
  end
  inherited QRXMLSSFilter1: TQRXMLSSFilter
    Left = 240
    Top = 7
  end
  inherited QRXMLSFilter1: TQRXMLSFilter
    Left = 180
    Top = 7
  end
end
