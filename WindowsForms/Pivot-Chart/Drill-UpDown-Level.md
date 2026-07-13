---
layout: post
title: Drill Operations in Windows Forms Pivot Chart | Syncfusion
description: Learn about Drill Operations support in Syncfusion® Windows Forms Pivot Chart control and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Drill Operations in Windows Forms Pivot Chart

Through expanders, you can drill down to the next level of the hierarchy and drill up to the previous level. The pivot chart has built-in support to drill up and down the PivotSeries population. This behavior can be achieved by enabling the [AllowDrillDown](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.PivotChart.PivotChart.html#Syncfusion_Windows_Forms_PivotChart_PivotChart_AllowDrillDown) property.

{% tabs %}

{% highlight c# %}

this.pivotChart1.AllowDrillDown = true;

{% endhighlight %}

{% highlight vb %}

Me.pivotChart1.AllowDrillDown = True

{% endhighlight %}

{% endtabs %}

![WinForms PivotChart with drill up and down levels](Drill-UpDown-Level_images/Drill-UpDown-Level_img1.png)
