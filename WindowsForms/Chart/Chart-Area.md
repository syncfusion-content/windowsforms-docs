---
layout: post
title: Chart-Area
description: chart area
platform: WindowsForms
control: Chart
documentation: ug
---

# Chart Area

EssentialChart comes with chart divide area support, wherein a single ChartArea can be divided into equal squares to display more than one chart (pie, funnel or pyramid). To enable this ChartArea.DivideArea property should be set to true.

By enabling this property, the following are possible.

* Retrieving the bounds of each sections of pie, funnel or pyramid charts.
* It is possible to show series name as title for individual section of a pie, funnel and pyramid chart types.
* Draw pie series with the same radius.

GetSeriesBounds() method can be used to get the bounds of the DividedArea when ChartArea.DivideArea is set to true. 

{% highlight c# %}

this.chartControl1.ChartArea.GetSeriesBounds(series);

{% endhighlight %}

{% highlight vbnet %}

Me.chartControl1.ChartArea.GetSeriesBounds(series)

{% endhighlight %}

ShowSeriesTitle property is used to display the series name as title for each section of the pie, funnel, pyramid charts in the divided area. 

{% highlight c# %}

ChartSeries.ConfigItems.PieItem.ShowSeriesTitle = true;
ChartSeries.ConfigItems.FunnelItem.ShowSeriesTitle = true;
ChartSeries.ConfigItems.PyramidItem.ShowSeriesTitle = true;

{% endhighlight %}

{% highlight vbnet %}

ChartSeries.ConfigItems.PieItem.ShowSeriesTitle = True
ChartSeries.ConfigItems.FunnelItem.ShowSeriesTitle = True
ChartSeries.ConfigItems.PyramidItem.ShowSeriesTitle = True

{% endhighlight %}
A sample which demonstrates the chartdividearea support is available in the following sample installation location.

&lt;sample installed location&gt;\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0\Chart Appearance\Chart Divide Area

### See Also

PieWithSameRadius