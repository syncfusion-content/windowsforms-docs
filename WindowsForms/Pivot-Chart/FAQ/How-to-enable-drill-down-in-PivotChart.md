---
layout: post
title: How to enable drill down in PivotChart | Windows Forms | Syncfusion
description: How to enable drill down in Syncfusion WinForms Pivot Chart to explore hierarchies by expanding and collapsing levels interactively.
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