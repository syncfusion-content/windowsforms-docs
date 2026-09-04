---
layout: post
title: Stacking Chart in Windows Forms Chart control | Syncfusion
description: Stacked types in the Windows Forms Chart display cumulative values across categories, enabling comparison of individual and total contributions.
platform: windowsforms
control: Chart
documentation: ug
---

# Stacking Chart in Windows Forms Charts

## Stacking column chart

Stacking column chart are similar to regular column charts, except that the Y values are stacked on top of each other in the order of the series. This helps visualize how each part contributes to the whole.

The following code example demonstrates how to create a stacking column chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StackingColumn);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StackingColumn);

secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

// Create chart series and add data points into it.
Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StackingColumn)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StackingColumn)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Stacking Column Chart in Windows Forms](../Chart-Types_images/windowsforms-stacking-column-series-rendering-order.png)

### Series rendering order

The [ZOrder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_ZOrder) property specifies the order in which chart series are rendered. The chart sorts the series based on their `ZOrder` values before rendering.

N> The `ZOrder` property also applies to `Histogram`, `Tornado`, `Box and Whisker`, `Area`, `Polar`, `Radar`, `Bar`, `Column`, `Bubble`, `Candle`, `HiLo`, and `HiLo Open Close` charts.

The following code configures the rendering order of two Gantt series.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ZOrder = 1;
chartControl.Series[1].ZOrder = 0;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ZOrder = 1
chartControl.Series(1).ZOrder = 0
{% endhighlight %}
{% endtabs %}

![Series rendering order in Windows Forms](../Chart-Types_images/windowsforms-stacking-column-chart.png)

## Stacking column 100 chart

A Stacking column 100 chart is similar to a stacking column chart, except that the stacked values in each column always add up to 100%.

The following code example demonstrates how to create a stacking column 100 Chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StackingColumn100);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StackingColumn100);

secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

// Create chart series and add data points into it.
Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StackingColumn100)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StackingColumn100)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Stacking Column 100 Chart in Windows Forms](../Chart-Types_images/windowsforms-stacked-column100-chart.png)

## Stacking bar chart

Stacking bar chart are similar to regular bar chart, but the Y values are stacked on top of each other in the specified series order. This helps visualize the relationship of parts to a whole. 

The following code example demonstrates how to create a stacking bar chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StackingBar);
firstServer.Points.Add(10, 100);
firstServer.Points.Add(20, 300);
firstServer.Points.Add(30, 200);
firstServer.Points.Add(40, 100);
firstServer.Points.Add(50, 200);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StackingBar);

secondServer.Points.Add(10, 100);
secondServer.Points.Add(20, 200);
secondServer.Points.Add(30, 100);
secondServer.Points.Add(40, 300);
secondServer.Points.Add(50, 350);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StackingBar)
firstServer.Points.Add(10, 100)
firstServer.Points.Add(20, 300)
firstServer.Points.Add(30, 200)
firstServer.Points.Add(40, 100)
firstServer.Points.Add(50, 200)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StackingBar)
secondServer.Points.Add(10, 100)
secondServer.Points.Add(20, 200)
secondServer.Points.Add(30, 100)
secondServer.Points.Add(40, 300)
secondServer.Points.Add(50, 350)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Stacking Bar Chart in Windows Forms](../Chart-Types_images/windowsforms-stacking-bar-chart.png)

## Stacking bar100 chart

A stacking bar 100 chart is similar to a stacking bar chart, except that the stacked values in each bar always add up to 100%.

The following code example demonstrates how to create a stacking bar 100 Chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StackingBar100);
firstServer.Points.Add(10, 100);
firstServer.Points.Add(20, 300);
firstServer.Points.Add(30, 200);
firstServer.Points.Add(40, 100);
firstServer.Points.Add(50, 200);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StackingBar100);

secondServer.Points.Add(10, 100);
secondServer.Points.Add(20, 200);
secondServer.Points.Add(30, 100);
secondServer.Points.Add(40, 300);
secondServer.Points.Add(50, 350);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StackingBar100)
firstServer.Points.Add(10, 100)
firstServer.Points.Add(20, 300)
firstServer.Points.Add(30, 200)
firstServer.Points.Add(40, 100)
firstServer.Points.Add(50, 200)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StackingBar100)
secondServer.Points.Add(10, 100)
secondServer.Points.Add(20, 200)
secondServer.Points.Add(30, 100)
secondServer.Points.Add(40, 300)
secondServer.Points.Add(50, 350)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Stacked Bar100 Chart in Windows Forms](../Chart-Types_images/windowsforms-stacked-bar-100-chart.png)

## Stacking area chart

A stacking area chart is similar to a standard area chart, but the areas of each series are stacked on top of one another in a specified order.

The following code example demonstrates how to create a stacking area chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StackingArea);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 500);
firstServer.Points.Add(30, 380);
firstServer.Points.Add(40, 450);
firstServer.Points.Add(50, 390);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StackingArea);

secondServer.Points.Add(10, 550);
secondServer.Points.Add(20, 300);
secondServer.Points.Add(30, 600);
secondServer.Points.Add(40, 500);
secondServer.Points.Add(50, 750);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StackingArea)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 500)
firstServer.Points.Add(30, 380)
firstServer.Points.Add(40, 450)
firstServer.Points.Add(50, 390)

chartControl.Series.Add(firstServer)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StackingArea)
secondServer.Points.Add(10, 550)
secondServer.Points.Add(20, 300)
secondServer.Points.Add(30, 600)
secondServer.Points.Add(40, 500)
secondServer.Points.Add(50, 750)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Stacking Area Chart in Windows Forms](../Chart-Types_images/windowsforms-stacking-area-chart.png)

## Stacking area100 chart

Stacking area 100 chart displays multiple data series as stacked areas, ensuring the cumulative proportion of each element always totals 100%. 

The following code example demonstrates how to create a stacking area 100 Chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StackingArea100);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 500);
firstServer.Points.Add(30, 380);
firstServer.Points.Add(40, 450);
firstServer.Points.Add(50, 390);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StackingArea100);

secondServer.Points.Add(10, 550);
secondServer.Points.Add(20, 300);
secondServer.Points.Add(30, 600);
secondServer.Points.Add(40, 500);
secondServer.Points.Add(50, 750);
ChartSeries thirdServer = new ChartSeries("Server 3", ChartSeriesType.StackingArea100);

thirdServer.Points.Add(10, 400);
thirdServer.Points.Add(20, 600);
thirdServer.Points.Add(30, 480);
thirdServer.Points.Add(40, 550);
thirdServer.Points.Add(50, 490);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);
chartControl.Series.Add(thirdServer);

{% endhighlight %}
{% highlight vb %}

' Server 1
Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StackingArea100)

firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 500)
firstServer.Points.Add(30, 380)
firstServer.Points.Add(40, 450)
firstServer.Points.Add(50, 390)

' Server 2
Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StackingArea100)

secondServer.Points.Add(10, 550)
secondServer.Points.Add(20, 300)
secondServer.Points.Add(30, 600)
secondServer.Points.Add(40, 500)
secondServer.Points.Add(50, 750)

' Server 3
Dim thirdServer As New ChartSeries("Server 3", ChartSeriesType.StackingArea100)

thirdServer.Points.Add(10, 400)
thirdServer.Points.Add(20, 600)
thirdServer.Points.Add(30, 480)
thirdServer.Points.Add(40, 550)
thirdServer.Points.Add(50, 490)

' Add Series
chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)
chartControl.Series.Add(thirdServer)

{% endhighlight %}
{% endtabs %}

![Stacking Area100 Chart in Windows Forms](../Chart-Types_images/windowsforms-stackedarea100-chart.png)