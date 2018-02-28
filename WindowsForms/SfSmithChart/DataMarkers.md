---
layout: post
title: Data Markers
description: This section describes about data markers.
platform: windowsforms
control: SfSmithChart
documentation: ug
---
# Data markers

Data markers are used to provide information about data point to users. You can add shapes and labels to adorn each data point.

## Marker shapes

Shapes can be added to the series to indicate each data point, and it can be enabled by using the [MarkerVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerVisible) property of series. The [MarkerType](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerType) property provides different shapes such as rectangle, circle, diamond, etc. to indicate the data points.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries(); 

series.MarkerVisible = true;

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()

series.MarkerVisible = True

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/DefaultMarker.png](DataMarkers_images/DataMarkers_img1.PNG)


## Marker customization

Markers can be customized by using the [MarkerBackColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerBackColor), [MarkerBorderColor](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerBorderColor), [MarkerHeight](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerHeight), [MarkerWidth](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerWidth), [MarkerVisible](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerVisible) and [MarkerType](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerType) properties as shown in the following code snippet.

{% tabs %}

{% highlight c# %}

LineSeries series = new LineSeries(); 
series.MarkerVisible = true;
series.MarkerType = MarkerType.Rectangle;
series.MarkerHeight = 8;
series.MarkerWidth = 8;
series.MarkerBorderColor = Color.Black;
sfSmithChart1.Series.Add(series);

{% endhighlight %}

{% highlight vb.net %}

Dim series As New LineSeries()
series.MarkerVisible = True
series.MarkerType = MarkerType.Rectangle
series.MarkerHeight = 8
series.MarkerWidth = 8
series.MarkerBorderColor = Color.Black
sfSmithChart1.Series.Add(series)

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/MarkerCustomize.png](DataMarkers_images/DataMarkers_img2.PNG)

## Marker image

Images can also be used as data markers to various shapes. This can be done by setting the [MarkerType](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerType) property to Image and providing the image source for [MarkerImage](http://172.16.0.145:8124/Syncfusion.SfSmithChart.WinForms/api/Syncfusion.WinForms.SmithChart.ChartSeries.html#Syncfusion_WinForms_SmithChart_ChartSeries_MarkerImage) property. Add the required image in the Resources folder of your sample, and refer that image to the MarkerImage property.


{% tabs %}

{% highlight c# %}

series.MarkerType = MarkerType.Image;

series.MarkerWidth = 20;

series.MarkerHeight = 20;

series.MarkerImage = Properties.Resources.Marker;

{% endhighlight %}

{% highlight vb.net %}

series.MarkerType = MarkerType.Image

series.MarkerWidth = 20

series.MarkerHeight = 20

series.MarkerImage = My.Resources.Marker

{% endhighlight %}

{% endtabs %}

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/MarkerImage.png](DataMarkers_images/DataMarkers_img3.PNG)


## Data labels 

Data labels provide additional information about the data point. By default, the data labels are displayed at the top of the data point, and it will be automatically aligned smartly if it collides with the other label.

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/Datalabel.png](DataMarkers_images/DataMarkers_img4.PNG)


Connector line will be generated automatically if the data label collides with any other label. The following screenshot displays the smart alignment of data labels.

![C:/Users/yogapriya.shanmugam/AppData/Local/Microsoft/Windows/INetCacheContent.Word/DataLabel1.png](DataMarkers_images/DataMarkers_img5.PNG)
