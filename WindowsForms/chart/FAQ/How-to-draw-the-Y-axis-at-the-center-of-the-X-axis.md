---
layout: post
title: How-to-draw-the-Y-axis-at-the-center-of-the-X-axis | Windows Forms | Syncfusion
description: how to draw the y-axis at the center of the x-axis
platform: windowsforms
control: chart
documentation: ug
---

# How to draw the Y-axis at the center of the X-axis

The y-axis can be drawn at any custom position using the ChartAxisLocationType class. This can be achieved by setting the value of the LocationType property of the PrimaryYAxis to Set.

{% tabs %}

{% highlight c# %}

// Drawing Y-axis at the center of the X-axis.

this.chartControl1.PrimaryYAxis.LocationType = ChartAxisLocationType.Set;

this.chartControl1.PrimaryYAxis.Location = new PointF(300, 352);

{% endhighlight %}

{% highlight vb %}

// Drawing Y-axis at the center of the X-axis.

Me.chartControl1.PrimaryYAxis.LocationType=ChartAxisLocationType.Set

Me.chartControl1.PrimaryYAxis.Location = New PointF(300, 352)

{% endhighlight %}

{% endtabs %}	