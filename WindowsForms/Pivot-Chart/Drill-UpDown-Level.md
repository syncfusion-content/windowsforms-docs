---
layout: post
title: Drill Operations in Windows Forms Pivot Chart | Syncfusion®
description: Learn about Drill Operations support in Syncfusion® Windows Forms Pivot Chart control and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Drill Operations in Windows Forms Pivot Chart

Through expanders, you can drill down to the next level of hierarchy and drill up to the previous level. The pivot chart has built-in support to drill up and down the PivotSeries population. This behavior can be achieved by enabling the `AllowDrillDown` property.

{% highlight c# %}

this.pivotChart1.AllowDrillDown = true;

{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.AllowDrillDown = True

{% endhighlight %}

![Windows forms pivotchart displays up and down level in chart](Drill-UpDown-Level_images/Drill-UpDown-Level_img1.png)
