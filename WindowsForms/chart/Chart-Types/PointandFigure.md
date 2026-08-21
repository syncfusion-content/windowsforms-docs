---
layout: post
title: Point and Figure Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Point and Figure chart type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Point and figure in windows forms chart

A Point and Figure Chart tracks price movements while ignoring time. It uses X’s for upward trends and O’s for downward trends to identify support, resistance, and price patterns.

Use the [PriceUpColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceUpColor) property for X’s and the [PriceDownColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceDownColor) property for O’s. The default [ReversalAmount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_ReversalAmount) is 1, and the chart requires high and low Y-values for each period.

The following feature are supported in the Point and Figure chart:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 2.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Point and Figure Chart.

{% tabs %}
{% highlight c# %}

double[] points = {
    35.25, 37.75, 39.0, 38.275, 37.75, 37.75, 37.275, 36.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 35.625, 35.5, 36.625, 36.275, 36.25, 36.875, 37.25,
    36.875, 36.5, 37.125, 36.275, 35.875, 36.625, 27.125, 26.25, 27.0, 27.25,
    37.5, 38.5, 39.5, 38.875, 38.5, 39.0, 38.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
};

double[] pointsOne = {
    25.0, 27.5, 28.75, 28.025, 27.5, 27.5, 27.025, 26.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
    26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
    27.5, 38.5, 39.5, 38.875, 38.5, 39.0, 28.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
};

DateTime current = new DateTime(2026, 1, 1);
int numpointsOne = points.Length;

ChartSeries series = new ChartSeries("Series 1");

for (int j = 0; j < numpointsOne; j++)
{
    series.Points.Add(current.AddDays(j), new double[] { points[j], pointsOne[j] });
}

series.Type = ChartSeriesType.PointAndFigure;
series.Text = series.Name;
series.ReversalAmount = 0.0;

chartControl.Series.Add(series);

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.RangeType = ChartAxisRangeType.Set;

chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(
    current,
    current.AddDays(30),
    10,
    ChartDateTimeIntervalType.Days);

chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";

{% endhighlight %}
{% highlight vb %}

Dim points() As Double = {
    35.25, 37.75, 39.0, 38.275, 37.75, 37.75, 37.275, 36.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 35.625, 35.5, 36.625, 36.275, 36.25, 36.875, 37.25,
    36.875, 36.5, 37.125, 36.275, 35.875, 36.625, 27.125, 26.25, 27.0, 27.25,
    37.5, 38.5, 39.5, 38.875, 38.5, 39.0, 38.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
}

Dim pointsOne() As Double = {
    25.0, 27.5, 28.75, 28.025, 27.5, 27.5, 27.025, 26.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
    26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
    27.5, 38.5, 39.5, 38.875, 38.5, 39.0, 28.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
}

Dim current As New DateTime(2026, 1, 1)
Dim numpointsOne As Integer = points.Length

Dim series As New ChartSeries("Series 1")

For j As Integer = 0 To numpointsOne - 1
    series.Points.Add(current.AddDays(j), New Double() {points(j), pointsOne(j)})
Next

series.Type = ChartSeriesType.PointAndFigure
series.Text = series.Name
series.ReversalAmount = 0.0

chartControl.Series.Add(series)

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.RangeType = ChartAxisRangeType.Set

chartControl.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange(
    current,
    current.AddDays(30),
    10,
    ChartDateTimeIntervalType.Days)

chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd"

{% endhighlight %}
{% endtabs %}

![Point And Figure Chart in Windows Forms](../Chart-Types_images/windowsforms-point-and-figure-chart.png)

## Customization option

The following chart series properties are used as customization options for Point and Figure chart:

- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [HeightBox](https://help.syncfusion.com/windowsforms/chart/chart-series#heightbox)
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