---
layout: post
title: How-to-display-the-Chart-Area-alone | Windows Forms | Syncfusion®
description: how to display the chart area alone
platform: windowsforms
control: chart
documentation: ug
---

# How to display the Chart Area alone

This can be achieved by setting the Legend.Visible property of ChartControl to False, ElementsSpacing property of ChartControl to Zero_,_ and__Text property of ChartControl to an Empty String.

{% tabs %}

{% highlight c# %}

this.chartControl1.Text = "";

this.chartControl1.Legend.Visible = false;

this.chartControl1.ElementsSpacing = 0;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Text = ""

Me.chartControl1.Legend.Visible = False

Me.chartControl1.ElementsSpacing = 0

{% endhighlight %}

{% endtabs %}	