---
layout: post
title: Financial Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Financial chart and its type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Financial charts in windows forms chart

Financial Chart types are specialized charts designed to represent financial and stock market data that contains multiple values, such as open, high, low, and close prices. They provide a clear visual representation of price movements, trends, and market performance over time, making complex financial data easier to analyze and interpret.

The following features are supported in the Financial charts:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the `Series3D` property.
* **Open-Close-Draw Mode**: The `OpenCloseDrawMode` property will set the chart series in open, close, or both modes. This property is applicable to open-high-low-close charts.

## Candle chart
A Candle Chart displays stock information using the `High`, `Low`, `Open` and `Close` values. The Hi and Lo values are represented by the wick of a candle. The candle represents open and close values.

n>
Chart details for candle chart.
* Number of Y values per point - 4 (High, Low, Open and Close respectively).
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

The following code example demonstrates how to create a Candle Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.Candle);

series.Points.Add(1, 500, 250, 380, 420); // body 40
series.Points.Add(2, 530, 280, 340, 480); // body 140
series.Points.Add(3, 520, 220, 450, 320); // body 130
series.Points.Add(4, 480, 300, 350, 440); // body 90
series.Points.Add(5, 460, 270, 420, 340); // body 80

chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.Candle)

' X, High, Low, Open, Close
series.Points.Add(1, 500, 250, 380, 420) ' Body = 40
series.Points.Add(2, 530, 280, 340, 480) ' Body = 140
series.Points.Add(3, 520, 220, 450, 320) ' Body = 130
series.Points.Add(4, 480, 300, 350, 440) ' Body = 90
series.Points.Add(5, 460, 270, 420, 340) ' Body = 80

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Candle Chart in Windows Forms](../Chart-Types_images/windowsforms-candle-chart.png)

### Customization option

The following chart series properties are used as customization options for Candle chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode)
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

## HiLo chart

HiLo Chart is a financial chart commonly used to display the trading range of a stock or other data over a period. It uses two Y-values `High` and `Low` to represent the maximum and minimum values, making it easy to visualize value ranges and fluctuations.

N>
Chart details for HiLo chart.
* Number of Y values per point - 2.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

The following code example demonstrates how to create a HiLo Chart.

{% tabs %}
{% highlight c# %}

ChartSeries revenue = new ChartSeries("Revenue", ChartSeriesType.HiLo);

revenue.Points.Add(1, 500, 220);
revenue.Points.Add(2, 520, 180);
revenue.Points.Add(3, 480, 210);
revenue.Points.Add(4, 550, 190);
revenue.Points.Add(5, 530, 250);
revenue.Points.Add(6, 570, 280);

ChartSeries profit = new ChartSeries("Profit", ChartSeriesType.HiLo);

profit.Points.Add(1, 460, 320);
profit.Points.Add(2, 580, 380);
profit.Points.Add(3, 620, 400);
profit.Points.Add(4, 650, 420);
profit.Points.Add(5, 610, 390);
profit.Points.Add(6, 700, 450);

chartControl.Series.Add(revenue);
chartControl.Series.Add(profit);

revenue.Style.Border.Width = 3;
profit.Style.Border.Width = 3;

{% endhighlight %}
{% highlight vb %}

Dim revenue As New ChartSeries("Revenue", ChartSeriesType.HiLo)

' X, High, Low
revenue.Points.Add(1, 500, 220)
revenue.Points.Add(2, 520, 180)
revenue.Points.Add(3, 480, 210)
revenue.Points.Add(4, 550, 190)
revenue.Points.Add(5, 530, 250)
revenue.Points.Add(6, 570, 280)

Dim profit As New ChartSeries("Profit", ChartSeriesType.HiLo)

' X, High, Low
profit.Points.Add(1, 460, 320)
profit.Points.Add(2, 580, 380)
profit.Points.Add(3, 620, 400)
profit.Points.Add(4, 650, 420)
profit.Points.Add(5, 610, 390)
profit.Points.Add(6, 700, 450)

chartControl.Series.Add(revenue)
chartControl.Series.Add(profit)

' Increase line thickness
revenue.Style.Border.Width = 3
profit.Style.Border.Width = 3

{% endhighlight %}
{% endtabs %}

![HiLo Chart in WindowsForms](../Chart-Types_images/windowsforms-hilo-chart.png)

### Customization option

The following chart series properties are used as customization options for HiLo chart:

- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawErrorBars](https://help.syncfusion.com/windowsforms/chart/chart-series#drawerrorbars)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ErrorBarsSymbolShape](https://help.syncfusion.com/windowsforms/chart/chart-series#errorbarssymbolshape)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## HiLo open close chart

HiLo Open Close Chart is a financial chart commonly used in stock market analysis. It requires four Y-values for each data point `High`, `Low`, `Open`, and `Close` to represent a stock's price movement during a specific period, providing a clear view of trading activity and market trends.

The following feature are supported in the HiLo open close charts:

* **Open-Close-Draw Mode**: The [DrawMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHiLoOpenCloseConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHiLoOpenCloseConfigItem_DrawMode) property will set the chart series in open, close, or both modes.

N>
Chart details for area chart.
* Number of Y values per point - 4.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.

The following code example demonstrates how to create a Hilo Open Close Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.HiLoOpenClose);

// X, High, Low, Open, Close
series.Points.Add(1, 520, 380, 420, 490);
series.Points.Add(2, 550, 420, 450, 530);
series.Points.Add(3, 530, 350, 500, 400);
series.Points.Add(4, 590, 410, 430, 560);
series.Points.Add(5, 610, 450, 480, 580);

chartControl.Series.Add(series);

series.Style.Border.Width = 3;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.HiLoOpenClose)

' X, High, Low, Open, Close
series.Points.Add(1, 520, 380, 420, 490)
series.Points.Add(2, 550, 420, 450, 530)
series.Points.Add(3, 530, 350, 500, 400)
series.Points.Add(4, 590, 410, 430, 560)
series.Points.Add(5, 610, 450, 480, 580)

chartControl.Series.Add(series)

' Increase line thickness
series.Style.Border.Width = 3

{% endhighlight %}
{% endtabs %}

![HiLo Open Close Chart in Windows Forms](../Chart-Types_images/windowsforms-hilo-open-close-chart.png)

### Customization option

The following chart series properties are used as customization options for HiLo Open Close chart:

- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [OpenCloseDrawMode](https://help.syncfusion.com/windowsforms/chart/chart-series#openclosedrawmode)
- [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)