---
layout: post
title: Kagi Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Kagi chart type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Kagi chart in windows forms chart

Kagi Chart is a financial chart that tracks price movements using a series of connected vertical lines. The direction, thickness, and color of the lines change based on price trends and reversals, helping traders easily identify bullish and bearish market patterns.

The following feature are supported in the Kagi chart:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the `Series3D` property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Kagi Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.Kagi);

series.Points.Add(1, 25);
series.Points.Add(2, 28);
series.Points.Add(3, 26);
series.Points.Add(4, 30);
series.Points.Add(5, 42); 
series.Points.Add(6, 35);
series.Points.Add(7, 29);
series.Points.Add(8, 36);
series.Points.Add(9, 27);
series.Points.Add(10, 31);

series.Style.Border.Width = 3;
chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.Kagi)

series.Points.Add(1, 25)
series.Points.Add(2, 28)
series.Points.Add(3, 26)
series.Points.Add(4, 30)
series.Points.Add(5, 42) 
series.Points.Add(6, 35)
series.Points.Add(7, 29)
series.Points.Add(8, 36)
series.Points.Add(9, 27)
series.Points.Add(10, 31)

' Increase line thickness
series.Style.Border.Width = 3

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![kagi Chart in Windows Forms](../Chart-Types_images/windowsforms-kagi-chart.png)

## Customization option

The following chart series properties are used as customization options for Kagi chart:

- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [PriceDownColor](https://help.syncfusion.com/windowsforms/chart/chart-series#pricedowncolor)
- [PriceUpColor](https://help.syncfusion.com/windowsforms/chart/chart-series#priceupcolor)
- [ReversalAmount](https://help.syncfusion.com/windowsforms/chart/chart-series#reversalamount)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)
