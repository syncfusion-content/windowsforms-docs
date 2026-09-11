---
layout: post
title: Range Chart in Windows Forms Charts | Syncfusion®
description: Range types in the Windows Forms Chart display minimum and maximum values across data points, enabling visualization of value ranges and variations.
platform: windowsforms
control: SfChart
documentation: ug
---

# Range Chart in Windows Forms Charts

## HiLo chart

A hilo chart is a financial chart commonly used to display the trading range of a stock or other data over a period. It uses two Y-values `High` and `Low` to represent the maximum and minimum values, making it easy to visualize value ranges and fluctuations.

The following code example demonstrates how to create a hilo Chart.

{% tabs %}
{% highlight c# %}

ChartSeries revenue = new ChartSeries("Revenue", ChartSeriesType.HiLo);

revenue.Points.Add(1, 500, 220);
revenue.Points.Add(2, 520, 180);
revenue.Points.Add(3, 480, 210);
revenue.Points.Add(4, 550, 190);
revenue.Points.Add(5, 530, 250);
revenue.Points.Add(6, 570, 280);

ChartSeries profit = new ChartSeries("Profit", ChartSeriesType.HiLo);

profit.Points.Add(1, 460, 320);
profit.Points.Add(2, 580, 380);
profit.Points.Add(3, 620, 400);
profit.Points.Add(4, 650, 420);
profit.Points.Add(5, 610, 390);
profit.Points.Add(6, 700, 450);

chartControl.Series.Add(revenue);
chartControl.Series.Add(profit);

revenue.Style.Border.Width = 3;
profit.Style.Border.Width = 3;

{% endhighlight %}
{% highlight vb %}

Dim revenue As New ChartSeries("Revenue", ChartSeriesType.HiLo)

' X, High, Low
revenue.Points.Add(1, 500, 220)
revenue.Points.Add(2, 520, 180)
revenue.Points.Add(3, 480, 210)
revenue.Points.Add(4, 550, 190)
revenue.Points.Add(5, 530, 250)
revenue.Points.Add(6, 570, 280)

Dim profit As New ChartSeries("Profit", ChartSeriesType.HiLo)

' X, High, Low
profit.Points.Add(1, 460, 320)
profit.Points.Add(2, 580, 380)
profit.Points.Add(3, 620, 400)
profit.Points.Add(4, 650, 420)
profit.Points.Add(5, 610, 390)
profit.Points.Add(6, 700, 450)

chartControl.Series.Add(revenue)
chartControl.Series.Add(profit)

' Increase line thickness
revenue.Style.Border.Width = 3
profit.Style.Border.Width = 3

{% endhighlight %}
{% endtabs %}

![HiLo Chart in WindowsForms](../Chart-Types_images/windowsforms-hilo-chart.png)

## Range column chart

The range column chart is similar to the column chart, except that each column is rendered over a range. Therefore, the user must specify the starting and ending Y-axis values for each data point.

The following code example demonstrates how to create a range column Chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.ColumnRange);
firstServer.Points.Add(10, 300, 0);
firstServer.Points.Add(20, 600, 0);
firstServer.Points.Add(30, 400, 0);
firstServer.Points.Add(40, 300, 0);
firstServer.Points.Add(50, 400, 0);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.ColumnRange);

secondServer.Points.Add(10, 300, 0);
secondServer.Points.Add(20, 500, 0);
secondServer.Points.Add(30, 200, 0);
secondServer.Points.Add(40, 700, 0);
secondServer.Points.Add(50, 750, 0);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

// Create chart series and add data points into it.
Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.ColumnRange)
firstServer.Points.Add(10, 300, 0)
firstServer.Points.Add(20, 600, 0)
firstServer.Points.Add(30, 400, 0)
firstServer.Points.Add(40, 300, 0)
firstServer.Points.Add(50, 400, 0)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.ColumnRange)

secondServer.Points.Add(10, 300, 0)
secondServer.Points.Add(20, 500, 0)
secondServer.Points.Add(30, 200, 0)
secondServer.Points.Add(40, 700, 0)
secondServer.Points.Add(50, 750, 0)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Range Column Chart in Windows Forms](../Chart-Types_images/windowsforms-column-range-chart.png)

## Range area

A range area chart is similar to an area chart, but it requires two Y-values for each X-value: a start (lower bound) and an end (upper bound). The chart fills the area between these two values, making it easy to visualize the range of data for each point.

You can also customize the following feature for range area charts:

* **Chart Custom Points**: Chart custom points are used to set custom points in a series using the [ChartCustomPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCustomPoint.html) class.

The following code example demonstrates how to create a range area Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Profit Range", ChartSeriesType.RangeArea);

series.Points.Add(1, 18, 50);
series.Points.Add(2, 20, 49);
series.Points.Add(3, 18, 52);
series.Points.Add(4, 20, 50);
series.Points.Add(5, 18.5, 53);
series.Points.Add(6, 21, 51);
series.Points.Add(7, 17.7, 54);
series.Points.Add(8, 19, 52);

chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

' Range Area Series
Dim series As New ChartSeries("Profit Range", ChartSeriesType.RangeArea)

series.Points.Add(1, 18, 50)
series.Points.Add(2, 20, 49)
series.Points.Add(3, 18, 52)
series.Points.Add(4, 20, 50)
series.Points.Add(5, 18.5, 53)
series.Points.Add(6, 21, 51)
series.Points.Add(7, 17.7, 54)
series.Points.Add(8, 19, 52)

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Range Area Chart in Windows Forms](../Chart-Types_images/windowsforms-range-area-chart.png)

### Swap high low point

The [SwapHighLowPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRangeAreaConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartRangeAreaConfigItem_SwapHighLowPoint) property controls whether the High and Low values are automatically swapped in a range area chart when the Low value is greater than the High value.

The following code enables automatic swapping of High and Low values.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.RangeAreaItem.SwapHighLowPoint =
    true;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.RangeAreaItem.SwapHighLowPoint =
    True
{% endhighlight %}
{% endtabs %}