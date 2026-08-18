---
layout: post
title: Column Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the column chart and its type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Pie Charts in Windows Forms Chart

## Pie Chart

A Pie Chart is used to display how different categories contribute to a whole. Each category is shown as a slice of a circle, and the size of each slice is proportional to its value. Pie charts are useful for comparing percentages or proportions of categories within a dataset. 

The X-values represent categories, while the Y-values determine the size of the slices. A Pie Chart can display only one data series at a time.

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

## Doughnut Chart

A Doughnut Chart is a variation of a Pie Chart that displays data as slices in a ring-shaped circle with a hollow center. It is used to show the proportion or percentage contribution of categories to the whole dataset.

### DoughnutCoefficient

The DoughnutCoefficient property is used to render a Pie Chart as a Doughnut Chart. It specifies the size of the hollow center as a fraction of the chart's radius. By default, the value is 0.0, which renders the chart as a full Pie Chart. Valid values range from 0.0 to 0.9.

### HeightCoefficient

When the chart is displayed in 3D mode, the HeightCoefficient property controls the relative height of the Doughnut Chart. For this property to take effect, HeightByAreaDepth must be set to false. Valid values range from 0.1f to 0.5f, and the default value is 0.2f.

{% tabs %}
{% highlight c# %}


{% endhighlight %}
{% highlight vb %}

{% endhighlight %}
{% endtabs %}

## Customization option

The following chart series properties are used as customization options for all pie chart types.

[AngleOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#angleoffset), [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow), [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DoughnutCoefficient](https://help.syncfusion.com/windowsforms/chart/chart-series#doughnutcoefficient), [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth), [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders), [ExplodedAll](https://help.syncfusion.com/windowsforms/chart/chart-series#explodedall), [ExplodedIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#explodedindex), [ExplosionOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#explosionoffset), [FillMode](https://help.syncfusion.com/windowsforms/chart/chart-series#fillmode), [Gradient](https://help.syncfusion.com/windowsforms/chart/chart-series#gradient), [HeightByAreaDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#heightbyareadepth), [HeightCoefficient](https://help.syncfusion.com/windowsforms/chart/chart-series#heightcoefficient), [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior), [InSideRadius](https://help.syncfusion.com/windowsforms/chart/chart-series#insideradius), [OptimizePiePointPositions](https://help.syncfusion.com/windowsforms/chart/chart-series#optimizepiepointpositions), [PieType](https://help.syncfusion.com/windowsforms/chart/chart-series#pietype), [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior), [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset), [ShowTicks](https://help.syncfusion.com/windowsforms/chart/chart-series#showticks), [VisibleAllPies](https://help.syncfusion.com/windowsforms/chart/chart-series#visibleallpies), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem), [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels), [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible), [ShowDataBindLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#showdatabindlabels).