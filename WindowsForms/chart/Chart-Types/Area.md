---
layout: post
title: Area Chart in Windows Forms Charts control | Syncfusion
description: Area type in Windows Forms displays data as connected line segments with the area between the line and the horizontal axis filled with color.
platform: windowsforms
control: Chart
documentation: ug
---

# Area Chart in Windows Forms Charts
 
## Area chart

[Area Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_Area) renders data points as connected line segments and fills the area between the line and the horizontal axis with a specified color.

The following code example demonstrates how to create an area chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.Area);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 500);
firstServer.Points.Add(30, 380);
firstServer.Points.Add(40, 450);
firstServer.Points.Add(50, 390);

chartControl.Series.Add(firstServer);

{% endhighlight %}
{% highlight vb %}

' Area Series
Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.Area)

firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 500)
firstServer.Points.Add(30, 380)
firstServer.Points.Add(40, 450)
firstServer.Points.Add(50, 390)

chartControl.Series.Add(firstServer)

{% endhighlight %}
{% endtabs %}

![Area Chart in Windows Forms](../Chart-Types_images/windowsforms-area-chart.png)

## Step area chart

[Step Area](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_StepArea) chart is similar to a standard area chart, but instead of connecting data points with straight lines, it uses horizontal and vertical lines to create a step-like pattern between values.

The following code example demonstrates how to create a step area chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StepArea);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 500);
firstServer.Points.Add(30, 380);
firstServer.Points.Add(40, 450);
firstServer.Points.Add(50, 390);

chartControl.Series.Add(firstServer);

{% endhighlight %}
{% highlight vb %}

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StepArea)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 500)
firstServer.Points.Add(30, 380)
firstServer.Points.Add(40, 450)
firstServer.Points.Add(50, 390)

chartControl.Series.Add(firstServer)

{% endhighlight %}
{% endtabs %}

![Step Area Chart in Windows Forms](../Chart-Types_images/windowsforms-step-area-chart.png)