---
layout: post
title: Axis Range Padding in Windows Forms Chart control | Syncfusion
description: Learn about Chart axis padding support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Axis Range Padding in Windows Forms Chart

Control padding at the minimum and maximum ends of an axis range to ensure data points are not drawn flush against chart boundaries. Range padding can be disabled or automatically calculated to include an extra interval at both ends.

- [RangePaddingType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_RangePaddingType) — Determines how range padding is applied (see options below)

## Customization

- `None` — No automatic padding; axis range follows data extents directly
- `Calculate` — Adds one interval to the min and max of the axis range so data is inset from the chart edges

{% tabs %}
{% highlight c# %}

// Disable automatic range padding
chart.PrimaryXAxis.RangePaddingType = ChartAxisRangePaddingType.None;

// Enable calculated padding (adds one interval to min and max)
chart.PrimaryXAxis.RangePaddingType = ChartAxisRangePaddingType.Calculate;

{% endhighlight %}
{% highlight vb %}

'Disable automatic range padding
chart.PrimaryXAxis.RangePaddingType = ChartAxisRangePaddingType.None

'Enable calculated padding (adds one interval to min and max)
chart.PrimaryXAxis.RangePaddingType = ChartAxisRangePaddingType.Calculate

{% endhighlight %}
{% endtabs %}

- The following screenshot shows the axis with `RangePaddingType = None`.

![Chart Axes](Chart-Axes_images/Chart-Axes_img46.png)

- The following screenshot shows the axis with `RangePaddingType = Calculate` (interval added to extremes).

![Chart Axes](Chart-Axes_images/Chart-Axes_img47.png)