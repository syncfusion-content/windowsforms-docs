---
layout: post
title: How to position a floating legend in Windows Forms Chart | Syncfusion®
description: Learn how to specify the position of a floating legend in a Windows Forms Chart and place the legend at a custom location.
platform: windowsforms
control: chart
documentation: ug
---

# How to position a floating legend in Windows Forms Chart

When the LegendPosition property of the ChartControl is set to ChartDock.Floating, the position of the legend defaults to the top-right corner of the ChartArea. Once this is done, you can specify the coordinates via the Legend.Location property of the ChartLegend.

{% tabs %}

{% highlight c# %}

this.chartControl1.LegendPosition = ChartDock.Floating;

this.chartControl1.Legend.Location = new Point(20,20);

{% endhighlight %}

{% highlight vb %}

Me.ChartControl1.LegendPosition = ChartDock.Floating

Me.ChartControl1.Legend.Location = New Point(20,20)

{% endhighlight %}

{% endtabs %}

{% seealso %}

[Chart Legend](/windowsforms/chart/chart-legend-and-legend-items#chartlegend)

{% endseealso %}