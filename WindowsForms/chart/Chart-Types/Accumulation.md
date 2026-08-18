---
layout: post
title: Accumulation Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the accumulation chart and its type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Accumulation Charts in Windows Forms Chart

Accumulation Charts display data as parts of a whole, where each segment represents a percentage of the total value. These charts typically use a single data series and do not require axes. Essential® Chart provides two types of Accumulation Charts.

## Funnel Chart

A Funnel Chart is a single-series chart that represents data as portions of 100% and does not use axes. It is commonly used to visualize stages in a process, such as a sales pipeline, and can be displayed in 2D or 3D mode.

N>
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Any other chart types.

{% tabs %}
{% highlight c# %}


{% endhighlight %}
{% highlight vb %}

{% endhighlight %}
{% endtabs %}

## Pyramid Chart
A Pyramid Chart is a single-series chart that represents data as portions of 100% and does not use axes. It is similar to a Funnel Chart and is often used to display hierarchical or geographical data. Pyramid charts can be displayed in 2D or 3D mode.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Any other chart types.

{% tabs %}
{% highlight c# %}


{% endhighlight %}
{% highlight vb %}

{% endhighlight %}
{% endtabs %}

## Customization Options

The following chart series properties are used as customization options for accumulation chart types.

[Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth), [FigureBase](https://help.syncfusion.com/windowsforms/chart/chart-series#figurebase), [GapRatio](https://help.syncfusion.com/windowsforms/chart/chart-series#gapratio), [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior), [LabelPlacement](https://help.syncfusion.com/windowsforms/chart/chart-series#labelplacement), [LabelStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#labelstyle), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem), [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels), [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible), [ShowDataBindLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#showdatabindlabels).

N>

* The [PyramidMode](https://help.syncfusion.com/windowsforms/chart/chart-series#pyramidmode) property is supported only in the `Pyramid Chart` as a customization option.

* The [FunnelMode](https://help.syncfusion.com/windowsforms/chart/chart-series#funnelmode) property is supported only in the `Funnel Chart` as a customization option.