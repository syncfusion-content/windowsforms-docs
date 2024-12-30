---
layout: post
title: How to enable drill down in PivotChart | Windows Forms | Syncfusion®
description: This section how to enable drill-down in a WinForms PivotChart by setting up a data hierarchy. Use chart events to handle clicks and update the displayed data.
platform: windowsforms
control: PivotChart
documentation: ug
---

# How to enable drill down in PivotChart

The PivotChart has in-built support to drill up and down the PivotSeries population. This behavior can be achieved by enabling the AllowDrillDown property.

{% highlight C# %}



this.pivotChart1.AllowDrillDown = true;

{% endhighlight %}

{% highlight vbnet %}



Me.pivotChart1.AllowDrillDown = True

{% endhighlight %}

Sample: <InstalledLocation> Syncfusion\EssentialStudio\<InstalledVersion>\Windows\PivotChart.Windows\Samples\PivotChart Layout\DrillDown Demo\CS