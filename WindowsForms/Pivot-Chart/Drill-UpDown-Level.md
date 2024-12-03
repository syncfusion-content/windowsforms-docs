---
layout: post
title: Drill Operations in Windows Forms Pivot Chart | Syncfusion
description: Learn about Drill Operations support in Syncfusion Windows Forms Pivot Chart control and more details.
platform: windowsforms
control: PivotChart
documentation: ug
---

# Drill Operations in Windows Forms Pivot Chart

Pivot charts with expanders efficiently navigate hierarchical data through drill-down and drill-up capabilities, allowing for detailed exploration or aggregated overviews. Users can transition from broad summaries, such as annual sales, to detailed trends like quarterly, monthly, or daily data, revealing valuable insights. The drill-up function helps users return to higher summary levels for comprehensive context.

This feature is activated via the `AllowDrillDown` property in the pivot chart control. By toggling this property, developers enable intuitive navigation across PivotSeries, facilitating smooth transitions between data levels. It ensures flexible data analysis, providing access to both necessary details and summaries.

{% highlight c# %}

this.pivotChart1.AllowDrillDown = true;

{% endhighlight %}

{% highlight vbnet %}

Me.pivotChart1.AllowDrillDown = True

{% endhighlight %}

![Windows forms pivotchart displays up and down level in chart](Drill-UpDown-Level_images/Drill-UpDown-Level_img1.png)
