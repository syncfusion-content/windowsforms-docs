---
layout: post
title: Renko Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Renko chart type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Renko chart in windows forms chart

Renko Chart is a price-based chart that uses fixed-size bricks to represent price movements. A new brick is drawn only when the price moves by a specified amount (ReversalAmount), helping filter out minor market fluctuations and highlight the overall trend. Bullish and bearish trends can be distinguished using PriceUpColor and PriceDownColor.

Renko charts are commonly used to identify trend direction, support levels, and resistance levels.

The following feature are supported in the Renko charts:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the `[Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Renko Chart.

{% tabs %}
{% highlight c# %}

double[] points = {   25.250,27.750,29.000,28.275,27.750,27.750,27.275,26.250,25.750,25.250,26.250,25.250,24.500,
                            25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                            27.125,26.250,27.000,27.250,27.500,28.500,29.500,28.875,28.500,29.000,28.500,28.500,29.000,
                            29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                            28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

DateTime date = new DateTime(2004, 1, 1);

ChartSeries series = new ChartSeries("Series");

for (int day = 0; day < points.Length; day++)
{
    series.Points.Add(date.AddDays(day), points[day]);
}

series.Type = ChartSeriesType.Renko;
series.ReversalAmount = 1;
chartControl.Series.Add(series);

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(date, date.AddDays(60), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryYAxis.Format = "$ #";

{% endhighlight %}
{% highlight vb %}

Dim points() As Double = {
    25.25, 27.75, 29.0, 28.275, 27.75, 27.75, 27.275, 26.25, 25.75, 25.25,
    26.25, 25.25, 24.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
    26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
    27.5, 28.5, 29.5, 28.875, 28.5, 29.0, 28.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
}

Dim date As New DateTime(2004, 1, 1)

Dim series As New ChartSeries("Series")

For day As Integer = 0 To points.Length - 1
    series.Points.Add(date.AddDays(day), points(day))
Next

series.Type = ChartSeriesType.Renko
series.ReversalAmount = 1

chartControl.Series.Add(series)

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd"

chartControl.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange( _
    date, _
    date.AddDays(60), _
    10, _
    ChartDateTimeIntervalType.Days)

chartControl.PrimaryYAxis.Format = "$ #"

{% endhighlight %}
{% endtabs %}

![Renko Chart in Windows Forms](../Chart-Types_images/windowsforms-renko-chart.png)

## Customization option

The following chart series properties are used as customization options for Renko chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [ColorsMode](https://help.syncfusion.com/windowsforms/chart/chart-series#colorsmode)
- [DarkLightPower](https://help.syncfusion.com/windowsforms/chart/chart-series#darklightpower)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [PriceDownColor](https://help.syncfusion.com/windowsforms/chart/chart-series#pricedowncolor)
- [PriceUpColor](https://help.syncfusion.com/windowsforms/chart/chart-series#priceupcolor)
- [ReversalAmount](https://help.syncfusion.com/windowsforms/chart/chart-series#reversalamount)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)