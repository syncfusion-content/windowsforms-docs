---
layout: post
title: Chart Axis Padding in Windows Forms Chart control | Syncfusion
description: Learn about Axis Padding support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Axis Padding in Windows Forms Chart

## Point Offset

Leave extra space between the axis and the first plotted point to improve readability and avoid clipped markers at the chart border.

- [PointOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_PointOffset) - Specifies the offset as a fraction of an interval (for example, `0.1` leaves 10% of an interval)

{% tabs %}
{% highlight c# %}

// Set a small offset (10% of an interval)
chart.PrimaryXAxis.PointOffset = 0.1;

// Leave one full interval of padding
chart.PrimaryXAxis.PointOffset = 1;

{% endhighlight %}
{% highlight vb %}

'Set a small offset (10% of an interval)
chart.PrimaryXAxis.PointOffset = 0.1

'Leave one full interval of padding
chart.PrimaryXAxis.PointOffset = 1

{% endhighlight %}
{% endtabs %}

N> Use small values (e.g., `0.05`–`0.2`) for subtle spacing; use integer values (e.g., `1`) to leave whole intervals.

The following screenshot illustrates the chart when `PointOffset` is set to `1` (one interval of padding).

![Chart Axes](Chart-Axes_images/Chart-Axes_img45.png)