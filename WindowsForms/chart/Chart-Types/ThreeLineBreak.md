---
layout: post
title: Three Line Break Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Three Line Break chart type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Three line break chart in windows forms chart

Three Line Break Chart is a price-based chart that displays a series of rising and falling vertical lines based on price movements while ignoring the passage of time. 

A new line is drawn only when the price exceeds the previous high or low by a specified amount (ReversalAmount), making it useful for identifying trend changes and filtering out minor price fluctuations. 

Bullish and bearish trends can be highlighted using PriceUpColor and PriceDownColor.

The following feature are supported in the Three Line Break chart:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Three Line Break Chart.

{% tabs %}
{% highlight c# %}

double[] points = {   25.250,27.750,29.000,28.275,27.750,27.750,27.275,26.250,25.750,25.250,26.250,25.250,24.500,
                  25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                  27.125,26.250,27.000,27.250,27.500,28.500,29.500,28.875,28.500,29.000,28.500,28.500,29.000,
                  29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                  28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

DateTime dates = new DateTime(2026, 9, 4).AddDays(-points.Length);

ChartSeries series = new ChartSeries("Series");

for (int day = 0; day < points.Length; day++)
{
    series.Points.Add(dates.AddDays(day), points[day]);
}

series.Type = ChartSeriesType.ThreeLineBreak;
series.ReversalAmount = 3.0;

chartControl.PrimaryYAxis.Format = "$ #";
chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(dates, dates.AddDays(60), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";
chartControl.Series.Add(series);

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

Dim dates As DateTime = New DateTime(2026, 9, 4).AddDays(-points.Length)

Dim series As New ChartSeries("Series")

For day As Integer = 0 To points.Length - 1
    series.Points.Add(dates.AddDays(day), points(day))
Next

series.Type = ChartSeriesType.ThreeLineBreak
series.ReversalAmount = 3.0

chartControl.PrimaryYAxis.Format = "$ #"

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange(
dates,
dates.AddDays(60),
10,
ChartDateTimeIntervalType.Days)

chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd"

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Three Line Break Chart in Windows Forms](../Chart-Types_images/windowsforms-three-line-break-chart.png)

## Customization option

The following chart series properties are used as customization options for Three Line Break chart:

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