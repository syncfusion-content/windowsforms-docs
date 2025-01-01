---
layout: post
title: Legend in Windows Forms Pivot Chart control | Syncfusion
description: Learn about Legend support in Syncfusion® Windows Forms Pivot Chart control, its elements and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Legend in Windows Forms Pivot Chart

By default, the pivot chart displays a legend with information on each series that has been plotted on the chart. The legend is a color code that helps to differentiate between chart items, and it has labels beside each color to indicate that it applies to information from series 1, series 2, and so on. The legend is made visible in the pivot chart by using the `ShowLegend` property.

{% highlight c# %}


this.pivotChart1.ShowLegend = true; 

{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.ShowLegend = True 

{% endhighlight %}


The legends having integral floating support can be placed anywhere in the chart area.

{% highlight c# %}


this.pivotChart1.LegendPosition = Syncfusion.Windows.Forms.Chart.ChartDock.Floating;

{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.LegendPosition = Syncfusion.Windows.Forms.Chart.ChartDock.Floating

{% endhighlight %}

The legend alignment can be marked within the chart area by using the LegendAlignment enumeration.

{% highlight c# %}

this.pivotChart1.LegendAlignment = Syncfusion.Windows.Forms.Chart.ChartAlignment.Center;


{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.LegendAlignment = Syncfusion.Windows.Forms.Chart.ChartAlignment.Center

{% endhighlight %}

The legend positioning can be affected in the following ways.



<table>
<tr>
<th>
Chart Legend Properties</th><th>
Description</th></tr>
<tr>
<td>
Position</td><td>
Specifies the position relative to chart where to render the legend.
* Top-above the chart
* Left-left of the chart
* Right-right of the chart
* Bottom-below the chart
<br>Floating: Legend is not docked to any specific location(default setting).</td></tr>
<tr>
<td>
LegendAlignment</td><td>
Specifies how the legend should be aligned with respect to the chart boundaries When it is docked to a side.</td></tr>
</table>
