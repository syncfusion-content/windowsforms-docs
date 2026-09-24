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

[Stacked Column Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StackingColumn) represents data values in a stacked format, where the columns are stacked on top of each other to indicate the cumulative value of the data points.

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

' Create chart series and add data points into it.
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

![Stacking Column Chart in Windows Forms](../Chart-Types_images/windowsforms-stacking-column-chart.png)

## Stacking column 100 chart

[StackedColumn100 Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StackingColumn100) is a type of stacked chart used to display the proportion of different categories within a single column. The columns are stacked on top of each other, and the cumulative proportion of each column always comes adds up to 100%

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

' Create chart series and add data points into it.
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

[Stacking Bar Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StackingBar) displays multiple data series as horizontally stacked segments within each bar. This helps visualize the contribution of each series to the total value. When only one series is displayed, the chart resembles a standard Bar Chart.

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

## Stacking bar 100 chart

[StackingBar100 Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StackingBar100) is a type of stacked chart used to display the proportion of different categories within a single bar. The bars are stacked horizontally, and the cumulative proportion of each stacked element always adds up to 100%.

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

[Stacked Area Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StackingArea) enables users to visually represent data points stacked on top of each other, where the total height indicates the cumulative value of the data points.

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

## Stacking area 100 chart

[Stacked Area Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StackingArea100) enables users to visually represent data points vertically, one above the other, where the cumulative proportion at each point always adds up to 100%. 

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