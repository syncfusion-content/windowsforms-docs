---
layout: post
title: Bubble and Scatter in Windows Forms Chart control | Syncfusion
description: Learn here all about the Bubble and Scatter in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Bubble and scatter chart in windows forms chart

Bubble and Scatter(also know as XY Charts) Charts are used to visualize the relationship between two variables by plotting data points on X and Y axes. They help identify trends, patterns, and correlations. Bubble Charts extend Scatter Charts by using bubble size to represent an additional data value.

You can also customize the following features for XY bubble and scatter chart:

* **Chart 3-D Mode**: A pie or doughnut chart can be rendered in 3-D mode by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

## Scatter chart

A Scatter chart (XY Chart) displays the relationship between two numerical variables by plotting data points on X and Y axes. The points are not connected by lines. 

It is useful for identifying patterns, trends, and correlations between variables. It commonly used for scientific and statistical data analysis.

Chart Details
* Number of Y values per point - 1.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

The following code example demonstrates how to create a Scatter Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Technology AAA", ChartSeriesType.Scatter);
series.Text = series.Name;

series.Points.Add(10, 36, 3);
series.Points.Add(30, 49, 4);
series.Points.Add(50, 38, 3);
series.Points.Add(70, 44, 3);
series.Points.Add(90, 35, 4);

chartControl.Series.Add(series);

ChartSeries ChartSeries = new ChartSeries("Technology BBB", ChartSeriesType.Scatter);
ChartSeries.Text = ChartSeries.Name;

ChartSeries.Points.Add(10, 18, 4);
ChartSeries.Points.Add(30, 29, 3);
ChartSeries.Points.Add(50, 18, 2);
ChartSeries.Points.Add(70, 24, 4);
ChartSeries.Points.Add(90, 15, 4);

chartControl.Series.Add(ChartSeries);

{% endhighlight %}
{% highlight vb %}

' Technology AAA Series
Dim series As New ChartSeries("Technology AAA", ChartSeriesType.Scatter)

series.Text = series.Name

series.Points.Add(10, 36, 3)
series.Points.Add(30, 49, 4)
series.Points.Add(50, 38, 3)
series.Points.Add(70, 44, 3)
series.Points.Add(90, 35, 4)

chartControl.Series.Add(series)

' Technology BBB Series
Dim chartSeries As New ChartSeries("Technology BBB", ChartSeriesType.Scatter)

chartSeries.Text = chartSeries.Name

chartSeries.Points.Add(10, 18, 4)
chartSeries.Points.Add(30, 29, 3)
chartSeries.Points.Add(50, 18, 2)
chartSeries.Points.Add(70, 24, 4)
chartSeries.Points.Add(90, 15, 4)

chartControl.Series.Add(chartSeries)

{% endhighlight %}
{% endtabs %}

![Scatter Chart in Windows Forms](../Chart-Types_images/windowsforms-scatter-chart.png)

### Customization option

The following chart series properties are used as customization options for Scatter chart:

- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle)
- [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [ScatterConnectType](https://help.syncfusion.com/windowsforms/chart/chart-series#scatterconnecttype)
- [ScatterSplineTension](https://help.syncfusion.com/windowsforms/chart/chart-series#scattersplinetension)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [ToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#tooltip)
- [ToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#tooltipformat)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## Bubble chart

A Bubble chart is an extension of a Scatter chart that displays three variables. The X and Y coordinates determine the position of each data point, while the size of the bubble represents a third value. 

It is commonly used to compare and analyze relationships among multiple data sets, such as market trends and product comparisons. The bubble can be displayed as a circle, square, or image using [BubbleType](https://help.syncfusion.com/windowsforms/chart/chart-series#bubbletype) Property.

N>
Chart Details
* Number of Y values per point - 2 (optional second value defines the size of the shape).
Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.
* Bubble series can be added to the chart using the following code.

The following code example demonstrates how to create a Bubble Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Technology AAA", ChartSeriesType.Bubble);
series.Text = series.Name;

series.Points.Add(10, 36, 3);
series.Points.Add(30, 49, 4);
series.Points.Add(50, 38, 3);
series.Points.Add(70, 44, 3);
series.Points.Add(90, 35, 4);

chartControl.Series.Add(series);

ChartSeries ChartSeries = new ChartSeries("Technology BBB", ChartSeriesType.Bubble);
ChartSeries.Text = ChartSeries.Name;

ChartSeries.Points.Add(10, 18, 4);
ChartSeries.Points.Add(30, 29, 3);
ChartSeries.Points.Add(50, 18, 2);
ChartSeries.Points.Add(70, 24, 4);
ChartSeries.Points.Add(90, 15, 4);

chartControl.Series.Add(ChartSeries);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Technology AAA", ChartSeriesType.Bubble)
series.Text = series.Name

series.Points.Add(10, 36, 3)
series.Points.Add(30, 49, 4)
series.Points.Add(50, 38, 3)
series.Points.Add(70, 44, 3)
series.Points.Add(90, 35, 4)

chartControl.Series.Add(series)

Dim series2 As New ChartSeries("Technology BBB", ChartSeriesType.Bubble)
series2.Text = series2.Name

series2.Points.Add(10, 18, 4)
series2.Points.Add(30, 29, 3)
series2.Points.Add(50, 18, 2)
series2.Points.Add(70, 24, 4)
series2.Points.Add(90, 15, 4)

chartControl.Series.Add(series2)

{% endhighlight %}
{% endtabs %}

![Bubble Chart in Windows Forms](../Chart-Types_images/windowsforms-bubble-chart.png)

## Minbounds and maxbounds

The size of the bubbles depends on MinBounds and MaxBounds of the bubbleItem in series. By default, the minBounds is (20, 20) and MaxBounds is (50, 50), so the width and height of the bubbles lie between 20 and 50.

You can change the minBounds and maxBounds using the `minBounds` and `maxBounds` properties in series options.

{% tabs %}
{% highlight c# %}

series.ConfigItems.BubbleItem.MinBounds = new RectangleF(0, 0, 10, 10);
series.ConfigItems.BubbleItem.MaxBounds = new RectangleF(0, 0, 25, 25);

{% endhighlight %}
{% highlight vb %}

series.ConfigItems.BubbleItem.MinBounds = New RectangleF(0, 0, 10, 10)
series.ConfigItems.BubbleItem.MaxBounds = New RectangleF(0, 0, 25, 25)

{% endhighlight %}
{% endtabs %}

![Bubble Chart in Windows Forms](../Chart-Types_images/windowsforms-chart-minbounds-and-maxbounds.png)

### Customization option

The following chart series properties are used as customization options for Bubble chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [BubbleType](https://help.syncfusion.com/windowsforms/chart/chart-series#bubbletype)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [EnablePhongStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#enablephongstyle)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)