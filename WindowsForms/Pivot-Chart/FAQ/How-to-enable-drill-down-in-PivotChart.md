---
layout: post
title: How to enable drill down in Windows Forms Pivot Chart | Syncfusion®
description: Learn how to enable drill down functionality in the Windows Forms Pivot Chart using the AllowDrillDown property for interactive data exploration.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to enable drill down in Windows Forms Pivot Chart

The WinForms Pivot Chart has built-in support to drill up and down the PivotSeries population. This behavior can be achieved by enabling the [AllowDrillDown](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_AllowDrillDown) property.

{% tabs %}

{% highlight c# %}

this.pivotChart1.AllowDrillDown = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotChart1.AllowDrillDown = True

{% endhighlight %}

{% endtabs %}

Sample: &lt;InstalledLocation&gt;\Syncfusion\EssentialStudio\&lt;InstalledVersion&gt;\Windows\PivotChart.Windows\Samples\PivotChart Layout\DrillDown Demo\CS