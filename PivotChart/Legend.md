---
layout: post
title: Legend | WindowsForms | Syncfusion
description: legend
platform: WindowsForms
control: PivotChart
documentation: ug
---

# Legend

PivotChart, by default, displays a Legend with information on each series that has been plotted on the chart. Legend is a color code that helps differentiate between chart items. Legend also has labels beside each color to indicate that it applies to information from Series 1, Series 2, and so on. Legend is made visible in PivotChart by using the property ShowLegend.

{% highlight c# %}


this.pivotChart1.ShowLegend = true; 

{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.ShowLegend = True 

{% endhighlight %}


The Legends have integral floating support and can be placed anywhere in the chart area as per your requirements.

{% highlight c# %}


this.pivotChart1.LegendPosition = Syncfusion.Windows.Forms.Chart.ChartDock.Floating;

{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.LegendPosition = Syncfusion.Windows.Forms.Chart.ChartDock.Floating

{% endhighlight %}

The Legend alignment can be marked within the ChartArea by using the LegendAlignment enumeration.

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
Specifies the position relative to the chart where to render the legend.* Top-above the chart* Left-left of the chart* Right-right of the chart* Bottom-below the chart<br>Floating-is not docked to any specific location(default setting)</td></tr>
<tr>
<td>
LegendAlignment</td><td>
When docked to a side, this property specifies how the legend should be aligned with respect to the chart boundaries.</td></tr>
</table>