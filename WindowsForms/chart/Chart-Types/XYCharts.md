---
layout: post
title: XY Charts in Windows Forms Chart control | Syncfusion
description: Learn here all about the XY Charts and its type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# XY Charts (Bubble and Scatter) in Windows Forms Chart

XY Charts are used to visualize the relationship between two variables by plotting data points on X and Y axes. They help identify trends, patterns, and correlations. Bubble Charts extend Scatter Charts by using bubble size to represent an additional data value.

## Scatter Chart

A Scatter Chart (XY Chart) displays the relationship between two numerical variables by plotting data points on X and Y axes. The points are not connected by lines. It is useful for identifying patterns, trends, and correlations between variables.

It commonly used for scientific and statistical data analysis.

Chart Details
* Number of Y values per point - 1.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.
* Scatter series can be added to the chart using the following code.

{% tabs %}
{% highlight c# %}


{% endhighlight %}
{% highlight vb %}

{% endhighlight %}
{% endtabs %}

##

A Bubble Chart is an extension of a Scatter Chart that displays three variables. The X and Y coordinates determine the position of each data point, while the size of the bubble represents a third value. 

It is commonly used to compare and analyze relationships among multiple data sets, such as market trends and product comparisons. The bubble can be displayed as a circle, square, or image.

N>
Chart Details
* Number of Y values per point - 2 (optional second value defines the size of the shape).
Number of Series - One or More.
Cannot be combined with - Pie, Bar, Polar, Radar, Stacked Bar.
Bubble series can be added to the chart using the following code.

{% tabs %}
{% highlight c# %}


{% endhighlight %}
{% highlight vb %}

{% endhighlight %}
{% endtabs %}

## Customization Option

The following chart series properties are used as customization options for both **Scatter** and **Bubble** chart types.

[DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem), [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels), [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible).

## Scatter Chart Specific Customization Properties

The following properties are supported only in the **Scatter Chart** as customization options.

[LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle), [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor), [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha), [ScatterConnectType](https://help.syncfusion.com/windowsforms/chart/chart-series#scatterconnecttype), [ScatterSplineTension](https://help.syncfusion.com/windowsforms/chart/chart-series#scattersplinetension), [ToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#tooltip), [ToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#tooltipformat).

## Bubble Chart Specific Customization Properties

The following properties are supported only in the **Bubble Chart** as customization options.

[Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [BubbleType](https://help.syncfusion.com/windowsforms/chart/chart-series#bubbletype), [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow), [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders), [EnablePhongStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#enablephongstyle), [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior), [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex), [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images), [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries).


