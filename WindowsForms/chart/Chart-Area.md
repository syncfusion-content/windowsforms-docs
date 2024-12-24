---
layout: post
title: Chart Area in Windows Forms Chart control | Syncfusion®
description: Learn about Chart Area support in Syncfusion® Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Area in Windows Forms Chart

Essential® Chart comes with chart divide area support, wherein a single [ChartArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html) can be divided into equal squares to display more than one chart **(pie, funnel or pyramid)**. To enable this [ChartArea.DivideArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_DivideArea) property should be set to true.

By enabling this property, the following are possible.

* Retrieving the bounds of each sections of pie, funnel or pyramid charts.
* It is possible to show series name as title for individual section of a pie, funnel and pyramid chart types.
* Draw pie series with the same radius.

[GetSeriesBounds()](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_GetSeriesBounds_Syncfusion_Windows_Forms_Chart_ChartSeries_) method can be used to get the bounds of the DividedArea when [ChartArea.DivideArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_DivideArea) is set to true. 

{% tabs %}

{% highlight c# %}

this.chartControl1.ChartArea.GetSeriesBounds(series);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ChartArea.GetSeriesBounds(series)

{% endhighlight %}
{% endtabs %}

[ShowSeriesTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPieConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPieConfigItem_ShowSeriesTitle) property is used to display the series name as title for each section of the pie, funnel, pyramid charts in the divided area. 

{% tabs %}
{% highlight c# %}

ChartSeries.ConfigItems.PieItem.ShowSeriesTitle = true;
ChartSeries.ConfigItems.FunnelItem.ShowSeriesTitle = true;
ChartSeries.ConfigItems.PyramidItem.ShowSeriesTitle = true;

{% endhighlight %}

{% highlight vb %}

ChartSeries.ConfigItems.PieItem.ShowSeriesTitle = True
ChartSeries.ConfigItems.FunnelItem.ShowSeriesTitle = True
ChartSeries.ConfigItems.PyramidItem.ShowSeriesTitle = True

{% endhighlight %}
{% endtabs %}

A sample which demonstrates the divide area support in chart which is available in the following sample installation location.

**Location**

&lt;sample installed location&gt;\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\Chart Appearance\Chart Divide Area

{% seealso %}

[PieWithSameRadius](/windowsforms/chart/chart-series#piewithsameradius)

{% endseealso %}
