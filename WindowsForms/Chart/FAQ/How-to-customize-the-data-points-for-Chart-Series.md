---
layout: post
title: How-to-customize-the-data-points-for-Chart-Series | Windows Forms | Syncfusion
description: how to customize the data points for chart series
platform: windowsforms
control: chart
documentation: ug
---

# How to customize the data points for Chart Series

You can customize the data points by exposing the IChartSeriesIndexedModel interface to the series. The default Series store is an implementation of the IChartSeriesModel. By implementing this interface, we can set it as the underlying data.

Using the SeriesModelImpl property, you can set an instance of the IChartSeriesModel, underlying the series. Use this property to replace the instance with our own implementation.



 {% highlight c# %}



// Customize data points using IChartSeriesModel interface.

series1.SeriesModelImpl = new NonIndexedModel(new double[] { 2, 5, 3, 4, 6 }, new double[] { 10, 33, 20, 43, 12 });

{% endhighlight %}

{% highlight vbnet %}



' Customize data points using IChartSeriesModel interface.

series1.SeriesModelImpl = New NonIndexedModel(New Double() {2, 5, 3, 4, 6}, New Double() {10, 33,20, 43, 12})


{% endhighlight %}
