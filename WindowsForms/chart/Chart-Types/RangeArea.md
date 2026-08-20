---
layout: post
title: Range Area Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the range area chart in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Range Area in Windows Forms Chart

A Range Area Chart is similar to an Area Chart, but it requires two Y-values for each X-value: a start (lower bound) and an end (upper bound). The chart fills the area between these two values, making it easy to visualize the range of data for each point.

It is commonly used to display value variations, such as the daily minimum and maximum temperature range.

You can also customize the following feature for range area charts:

* **Chart Custom Points**: Chart custom points are used to set custom points in a series using the [ChartCustomPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCustomPoint.html) class.

N>
Chart Details for range area chart.
* Number of Y values per point - 2.
* Maximum Number of Series - Unlimited.
* Minimum Number of Series - 1.

The following code example demonstrates how to create a Range Area Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Profit Range", ChartSeriesType.RangeArea);

series.Points.Add(1, 18, 50);
series.Points.Add(2, 20, 49);
series.Points.Add(3, 18, 52);
series.Points.Add(4, 20, 50);
series.Points.Add(5, 18.5, 53);
series.Points.Add(6, 21, 51);
series.Points.Add(7, 17.7, 54);
series.Points.Add(8, 19, 52);

chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Profit Range", ChartSeriesType.RangeArea)

series.Points.Add(1, 18, 50)
series.Points.Add(2, 20, 49)
series.Points.Add(3, 18, 52)
series.Points.Add(4, 20, 50)
series.Points.Add(5, 18.5, 53)
series.Points.Add(6, 21, 51)
series.Points.Add(7, 17.7, 54)
series.Points.Add(8, 19, 52)

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Range Area Chart in WindowsForms](../Chart-Types_images/windowsforms-range-area-chart.png)

## Customization Option
The following chart series properties are used as customization options for range area type.

[Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow) ,[DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth), [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior), [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex), [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem), [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate), [SeriesToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#seriestooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels), [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries), [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible).