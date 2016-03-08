---
layout: post
title: Chart-Types | Windows Forms | Syncfusion
description: chart types
platform: windowsforms
control: PivotChart
documentation: ug
---

# Chart Types

PivotChart is rendered through different chart types based on the requirement. You can easily switch between different chart types dynamically. Fields bound to the chart is automatically transformed into target chart types.

### Supported chart types are,

* Line
* Spline
* Column
* Area
* Spline Area
* Stacking Area
* Stacking Column
* Stacking Area 100
* Stacking Column 100
* Step Line
* Step Area

The PivotChart types are altered by using the ChartTypes enumeration.


{% highlight c# %}

//Changes the Pivot Chart types.
this.pivotChart1.ChartTypes = Syncfusion.Windows.Forms.PivotChart.PivotChartTypes.Line;

{% endhighlight %}

{% highlight vbnet %}

' Changes the Pivot Chart types.

Me.pivotChart1.ChartTypes = Syncfusion.Windows.Forms.PivotChart.PivotChartTypes.Line

{% endhighlight %}

## Line Chart

The Line Chart joins the data points on a plot by using straight lines that show trends in data at equal intervals.

![](Chart-Types_images/Chart-Types_img1.png)


## Spline Chart

The Spline Chart is similar to line chart except that it connects different data points by using curved lines instead of straight lines.



![](Chart-Types_images/Chart-Types_img2.png)



## Step Line Chart

Step Line Chart uses horizontal and vertical lines to connect the data points resulting in a step like progression.


![](Chart-Types_images/Chart-Types_img3.png)



## Step Area Chart

Step AreaChart is similar to the regular area chart except for a straight line tracing the shortest path between data points. The values are connected by continuous vertical and horizontal lines forming a step like progression.

![](Chart-Types_images/Chart-Types_img4.png)



## Spline Area Chart

Spline AreaChart is similar to Area Chart with the difference of the connected data points of a series. It connects each series of points by a smooth spline curve.



![](Chart-Types_images/Chart-Types_img5.png)



## Stacking Column Chart

Stacking ColumnChart is similar to column charts except for the Y-values. These Y-values stack on top of each other in a specified series order. This helps visualize the relationship of parts to the whole chart.








![](Chart-Types_images/Chart-Types_img6.png)



## Stacking Area100 Chart

Stacking AreaChart is similar to regular area chart except for the Y-values. These Y-values stack on top of each other in the specified series order. This helps visualize the relationship of parts to the whole data. The top range is calculated on the basis of 100.


![](Chart-Types_images/Chart-Types_img7.png)



## Stacking Area Chart

Stacking AreaChart is similar to regular area chart except for the Y-values. These Y-values stack on top of each other in the specified series order. This helps visualize the relationship of parts to the whole data.


![](Chart-Types_images/Chart-Types_img8.png)