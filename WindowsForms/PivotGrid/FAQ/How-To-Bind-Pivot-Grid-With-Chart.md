---
layout: post
title: How to Bind Pivot Grid with Chart | PivotGrid | Windows Forms | Syncfusion
description: How to integrate pivot grid and pivot chart
platform: windowsforms
control: Pivot Grid
documentation: ug
---

# How to Bind Pivot Grid with Chart

PivotChartHelper class is used as an interface to bind the pivot grid control and chart control. This helper class is having the method named as [WireGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.PivotGridChartHelper~WireGrid(PivotGridControl,ChartControl).html) which is used to wire the PivotGrid control into base chart. This helper method is generally render the values into the base chart control based on the selected ranges from PivotGrid. 

Please refer the below code sample.

{% tabs %}

{% highlight c# %}

//PivotChartHelper class acts as an interface to bind the datafrom grid to chart.
PivotGridChartHelper helper = new PivotGridChartHelper();
helper.WireGrid(this.pivotGridControl1, this.chartControl1);

{% endhighlight %}

{% highlight vb %}

'PivotChartHelper class acts as an interface to bind the datafrom grid to chart.
Dim helper As New PivotGridChartHelper()
helper.WireGrid(Me.pivotGridControl1, Me.chartControl1)

{% endhighlight %}

{% endtabs %}

![PivotGrid-with-chart_image1.png](How-To-Bind-Pivot-Grid-With-Chart_images/PivotGrid-with-chart_image1.png)

### To enable the context menu

You can enable the context menu to customize the chart series types and styles by using the [ShowContextMenu](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Chart.Windows~Syncfusion.Windows.Forms.Chart.ChartControl~ShowContextMenu.html) property of chart control.

{% tabs %}

{% highlight c# %}

this.chartControl1.ShowContextMenu = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ShowContextMenu = True

{% endhighlight %}

{% endtabs %}

![PivotGrid-with-chart_image2.png](How-To-Bind-Pivot-Grid-With-Chart_images/PivotGrid-with-chart_image2.png)

## To persist the Chart series styles

While the pivotgrid cell selection is changed,by default the chart series are rendered newly. But you can persist the chart series types and styles by invoking the [WireGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.GridHelperClasses.Windows~Syncfusion.GridHelperClasses.PivotGridChartHelper~WireGrid(PivotGridControl,ChartControl,Boolean).html) helper method with 'true' parameter.

{% tabs %}

{% highlight c# %}

//PivotChartHelper class acts as an interface to bind the datafrom grid to chart.
PivotGridChartHelper helper = new PivotGridChartHelper();
helper.WireGrid(this.pivotGridControl1, this.chartControl1, true);

{% endhighlight %}

{% highlight vb %}

'PivotChartHelper class acts as an interface to bind the datafrom grid to chart.
Dim helper As New PivotGridChartHelper()
helper.WireGrid(Me.pivotGridControl1, Me.chartControl1, True)

{% endhighlight %}

{% endtabs %}

For example, changing the first series types into the 'Scatter' and also changing the series color to Red.

![PivotGrid-with-chart_image3.png](How-To-Bind-Pivot-Grid-With-Chart_images/PivotGrid-with-chart_image3.png)

After selecting the new ranges in pivot grid, still chart maintains the chart series type(scatter) and series color(Red) for first series.

![PivotGrid-with-chart_image4.png](How-To-Bind-Pivot-Grid-With-Chart_images/PivotGrid-with-chart_image4.png)

A demo sample is available in the following location.

&lt;Installed Drive&gt;\Users\Public\Documents\Syncfusion\Windows\\&lt;Version Number&gt;\PivotGrid.Windows\Samples\Product Showcase\Pivotal Chart Demo