---
layout: post
title: Line Chart in Windows Forms Chart control | Syncfusion
description: Learn about line chart support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Line Charts in Windows Forms Chart

## Line Chart
Line Charts join points on a plot using straight lines showing trends in data at equal intervals. The following code shows how to define line chart in chartcontrol.

{% tabs %}

{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.Line);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.Line);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl1.Series.Add(firstServer);
chartControl1.Series.Add(secondServer);

{% endhighlight %}

{% highlight vb %}

// Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.Line)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.Line)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl1.Series.Add(firstServer)
chartControl1.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Line Charts in WindowsForms](../Chart-Types_images/windowsforms-line-chart.png)

## Rotated Spline Chart
A Rotated Spline Chart is similar to an ordinary Spline Chart. The only difference is that, it would be rotated. It plots one or several series of data, and joins each series by smooth, rotated spline curves instead of straight lines. The following code shows how to define rotated spline line chart in chartcontrol.

{% tabs %}

{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.RotatedSpline);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.RotatedSpline);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl1.Series.Add(firstServer);
chartControl1.Series.Add(secondServer);

{% endhighlight %}

{% highlight vb %}

// Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.RotatedSpline)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.RotatedSpline)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl1.Series.Add(firstServer)
chartControl1.Series.Add(secondServer)


{% endhighlight %}
{% endtabs %}

![Line Charts in WindowsForms](../Chart-Types_images/windowsforms-rotated-spline-chart.png)

## Spline Line Chart
Spline Chart is similar to a Line Chart except that it connects the different data points using splines instead of straight lines. The following code shows how to define spline chart in chartcontrol.

{% tabs %}

{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.Spline);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.Spline);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl1.Series.Add(firstServer);
chartControl1.Series.Add(secondServer);

{% endhighlight %}

{% highlight vb %}

// Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.Spline)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.Spline)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl1.Series.Add(firstServer)
chartControl1.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Spline Charts in WindowsForms](../Chart-Types_images/windowsforms-spline-area-chart.png)

## Step Line Chart
Step Line Charts use horizontal and vertical lines to connect data points resulting in a step like progression. The following code shows how to define step chart in chartcontrol.

{% tabs %}

{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StepLine);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StepLine);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

firstServer.Style.Border.Width = 3;
secondServer.Style.Border.Width = 3;
chartControl1.Series.Add(firstServer);
chartControl1.Series.Add(secondServer);

{% endhighlight %}

{% highlight vb %}

// Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StepLine)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StepLine)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

firstServer.Style.Border.Width = 3;
secondServer.Style.Border.Width = 3;
chartControl1.Series.Add(firstServer)
chartControl1.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Line Charts in WindowsForms](../Chart-Types_images/windowsforms-step-line-chart.png)