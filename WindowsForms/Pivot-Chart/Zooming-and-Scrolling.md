---
layout: post
title: Zooming and Scrolling in WinForms Pivot Chart | Syncfusion
description: Learn about Zooming and Scrolling support in Syncfusion® Windows Forms Pivot Chart control and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Zooming and Scrolling in Windows Forms Pivot Chart

You can zoom and scroll the pivot chart. Zooming can be enabled for a single axis or both axes.

## Zooming

Zooming can be enabled in the x-axis and y-axis by setting the [EnableXZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_EnableXZooming) and [EnableYZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_EnableYZooming) properties to `true`.

{% tabs %}

{% highlight c# %}

//Enable the X axis zooming
this.pivotChart1.EnableXZooming = true;
//Enable the Y axis zooming
this.pivotChart1.EnableYZooming = true;

{% endhighlight %}

{% highlight vb %}

'Enable the X axis zooming
Me.pivotChart1.EnableXZooming = True
'Enable the Y axis zooming
Me.pivotChart1.EnableYZooming = True

{% endhighlight %}

{% endtabs %}

## Scrolling

Scrolling can be enabled by setting the [EnableScrolling](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_EnableScrolling) property to `true`.

{% tabs %}

{% highlight c# %}

//Enable the scrolling
this.pivotChart1.EnableScrolling = true;

{% endhighlight %}

{% highlight vb %}

'Enable the scrolling
Me.pivotChart1.EnableScrolling = True

{% endhighlight %}

{% endtabs %}

Sample: &lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\&lt;InstalledVersion&gt;\Windows\PivotChart.Windows\Samples\Zooming and Scrolling\Zooming and Scrolling\CS
