inherited IncPropUseChartRepForm: TIncPropUseChartRepForm
  Left = 145
  Top = 160
  Width = 1264
  Height = 765
  HorzScrollBar.Range = 1200
  VertScrollBar.Range = 1000
  Caption = 'Incident Count by Month'
  Font.Name = 'Arial'
  OldCreateOrder = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1264
  ExplicitHeight = 765
  PixelsPerInch = 96
  TextHeight = 14
  inherited BaseReport: TQuickRep
    Left = 8
    Top = 65
    Width = 845
    Height = 653
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
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
    Zoom = 80
    ExplicitLeft = 8
    ExplicitTop = 65
    ExplicitWidth = 845
    ExplicitHeight = 653
    inherited AlpineBaseFooter: TQRBand
      Left = 19
      Top = 588
      Width = 807
      Height = 16
      Frame.DrawTop = True
      Size.Values = (
        52.916666666666670000
        2668.984375000000000000)
      ExplicitLeft = 19
      ExplicitTop = 588
      ExplicitWidth = 807
      ExplicitHeight = 16
      inherited SysDateField: TQRSysData
        Left = 4
        Top = 2
        Width = 106
        Height = 13
        Size.Values = (
          42.333333333333330000
          13.229166666666670000
          5.291666666666667000
          351.895833333333300000)
        Font.Height = -12
        FontSize = 9
        ExplicitLeft = 4
        ExplicitTop = 2
        ExplicitWidth = 106
        ExplicitHeight = 13
      end
      inherited SysPageNumber: TQRSysData
        Left = 695
        Top = 2
        Width = 106
        Height = 13
        Size.Values = (
          42.333333333333330000
          2299.229166666667000000
          5.291666666666667000
          351.895833333333300000)
        Font.Height = -12
        FontSize = 9
        ExplicitLeft = 695
        ExplicitTop = 2
        ExplicitWidth = 106
        ExplicitHeight = 13
      end
    end
    object TitleBand: TQRBand
      Left = 19
      Top = 19
      Width = 807
      Height = 38
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
        125.677083333333300000
        2668.984375000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object FireDeptField: TQRLabel
        Left = 2
        Top = 22
        Width = 236
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          71.437500000000000000
          780.520833333333200000)
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
      object QRLabel65: TQRLabel
        Left = 2
        Top = 3
        Width = 236
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          7.937500000000000000
          10.583333333333330000
          780.520833333333200000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Incidents by Property Use'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    end
    object ChildBand1: TQRChildBand
      Left = 19
      Top = 57
      Width = 807
      Height = 531
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
        1756.171875000000000000
        2668.984375000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = TitleBand
      PrintOrder = cboAfterParent
      object PropUseObject: TQRChart
        Left = 2
        Top = 3
        Width = 799
        Height = 525
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1736.328125000000000000
          6.614583333333333000
          9.921875000000000000
          2642.526041666667000000)
        XLColumn = 0
        object N5PropUseChart: TQRDBChart
          Left = -1
          Top = -1
          Width = 1
          Height = 1
          Title.AdjustFrame = False
          Title.Alignment = taLeftJustify
          Title.Font.Color = clBlack
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'TQRDBChart')
          Title.VertMargin = 50
          Title.Visible = False
          BottomAxis.LabelStyle = talText
          Chart3DPercent = 35
          Legend.CustomPosition = True
          Legend.Left = 1070
          Legend.ResizeChart = False
          Legend.Title.Text.Strings = (
            'Situation Found')
          Legend.Top = 87
          View3D = False
          View3DOptions.Elevation = 315
          View3DOptions.FontZoom = 80
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          PrintMargins = (
            15
            20
            15
            20)
          ColorPaletteIndex = 13
          object N5PropUseTable: TPieSeries
            Marks.Arrow.Color = -1
            Marks.Arrow.EndStyle = esFlat
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Color = -1
            Marks.Callout.Arrow.EndStyle = esFlat
            Marks.Callout.Arrow.Visible = True
            Marks.Callout.ArrowHeadSize = 7
            Marks.Callout.Distance = 20
            Marks.Callout.Length = 80
            Marks.BevelWidth = 1
            Marks.Emboss.Color = 8618883
            Marks.Font.Height = -12
            Marks.Margins.Left = 10
            Marks.Margins.Top = 10
            Marks.Margins.Right = 25
            Marks.Margins.Bottom = 10
            Marks.Shadow.Color = 8553090
            Marks.TextAlign = taLeftJustify
            Marks.Transparent = True
            Marks.Visible = True
            Title = 'Property Use'
            XValues.Order = loAscending
            YValues.Name = 'Pie'
            YValues.Order = loDescending
            Circled = True
            Shadow.Color = 4013373
            Shadow.HorizSize = 1
            Shadow.SmoothBlur = -4
            Shadow.VertSize = 1
            Frame.InnerBrush.BackColor = clRed
            Frame.InnerBrush.Gradient.EndColor = clGray
            Frame.InnerBrush.Gradient.MidColor = clWhite
            Frame.InnerBrush.Gradient.StartColor = 4210752
            Frame.InnerBrush.Gradient.Visible = True
            Frame.MiddleBrush.BackColor = clYellow
            Frame.MiddleBrush.Gradient.EndColor = 8553090
            Frame.MiddleBrush.Gradient.MidColor = clWhite
            Frame.MiddleBrush.Gradient.StartColor = clGray
            Frame.MiddleBrush.Gradient.Visible = True
            Frame.OuterBrush.BackColor = clGreen
            Frame.OuterBrush.Gradient.EndColor = 4210752
            Frame.OuterBrush.Gradient.MidColor = clWhite
            Frame.OuterBrush.Gradient.StartColor = clSilver
            Frame.OuterBrush.Gradient.Visible = True
            Frame.Visible = False
            Frame.Width = 0
            OtherSlice.Legend.HorizMargin = 6
            OtherSlice.Legend.TextStyle = ltsPlain
            OtherSlice.Legend.VertSpacing = 10
            OtherSlice.Legend.Visible = False
            OtherSlice.Value = 25.000000000000000000
            PieMarks.VertCenter = True
            RotationAngle = 310
            Data = {
              040200000000000000000079400646656D616C65000000000000F03F044D616C
              65}
          end
        end
      end
    end
  end
  inherited QRRTFFilter1: TQRRTFFilter
    Left = 80
    Top = 6
  end
  inherited QRExcelFilter1: TQRExcelFilter
    Left = 116
    Top = 6
  end
  inherited compreport: TQRCompositeReport
    PrinterSettings.Orientation = poLandscape
    Left = 8
    Top = 6
  end
  inherited BasePDFFilter: TQRPDFFilter
    Left = 44
    Top = 6
  end
  inherited QRHTMLFilter1: TQRHTMLFilter
    Left = 188
    Top = 6
  end
  inherited QRTextFilter1: TQRTextFilter
    Left = 260
    Top = 6
  end
  inherited QRCSVFilter1: TQRCSVFilter
    Left = 296
    Top = 6
  end
  inherited QRXMLSSFilter1: TQRXMLSSFilter
    Left = 224
    Top = 6
  end
  inherited QRXMLSFilter1: TQRXMLSFilter
    Left = 152
    Top = 6
  end
end
