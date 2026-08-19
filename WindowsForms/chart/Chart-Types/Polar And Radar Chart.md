---
layout: post
title: Polar And Radar Charts in Windows Forms Chart control | Syncfusion
description: Learn here all about the polar And radar chart in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Polar And Radar Charts in Windows Forms Chart

Polar and Radar charts are used to display values and angles in a graphical format, making it easy to compare data across multiple categories.

You can also customize the following features for Polar and Radar charts:

* **Draw Type**: The rendering style of the chart can be customized using the `RadarItem` property of `ConfigItems`.

* **Radar Axis Style**: The appearance of the radar axis can be customized using the [RadarStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#radarstyle) property in Rader chart.

* **Inversed Polar and Radar Charts**: Polar and Radar charts can be rendered in the clockwise direction using the [Inversed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Inversed) property in [ChartAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html).

* **Line Style Customization**: The solid circular lines of Polar and Radar charts can be customized using the pen properties of the primary X and Y axes.

## Polar Chart
Polar Chart displays data using values and angles in a circular coordinate system. The X-values determine the angles of the data points, while the Y-values determine their distance from the center of the chart. It is useful for visually comparing several quantitative or qualitative aspects of a situation and for comparing multiple data sets using the same axes.

{% tabs %}
{% highlight c# %}


{% endhighlight %}
{% highlight vb %}

{% endhighlight %}
{% endtabs %}

## Customization Options

The following chart series properties are used as customization options for both **Polar** and **Radar** chart types.

[Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth), [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders), [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex), [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images), [LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle), [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor), [RadarType](https://help.syncfusion.com/windowsforms/chart/chart-series#radartype), [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate), [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode), [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior), [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem), [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels), [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible).

N>

* The [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha) and [RadarStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#radarstyle) properties are supported only in the `Radar Chart` as a customization option.
