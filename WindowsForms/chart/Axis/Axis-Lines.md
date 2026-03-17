---
layout: post
title: Chart Axis Lines in Windows Forms Chart control | Syncfusion
description: Learn about Axis Lines support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Axis Lines in Windows Forms Chart

## Axis Line Type

The axis line can be customized using the `LineType` property of the axis. The `LineType` property supports the following customization options: `ForeColor`, `DashStyle`, `Width`, and `BackColor`.

### ForeColor

The foreground color of the axis line can be set using the `ForeColor` property.

{% tabs %}

{% highlight c# %}

chart.PrimaryXAxis.LineType.ForeColor = Color.Blue;

{% endhighlight %}

{% highlight vb %}

chart.PrimaryXAxis.LineType.ForeColor = Color.Blue

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img48.png)

### Width

The thickness of the axis line can be set using the `Width` property.

{% tabs %}

{% highlight c# %}

chart.PrimaryXAxis.LineType.Width = 3;

{% endhighlight %}

{% highlight vb %}

chart.PrimaryXAxis.LineType.Width = 3

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img49.jpeg)

### DashStyle

The dash style of the axis line can be set using the `DashStyle` property. The following six styles are supported:

* Solid
* Dash
* Dot
* DashDot
* DashDotDot
* Custom

{% tabs %}

{% highlight c# %}

chart.PrimaryXAxis.LineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot;

{% endhighlight %}

{% highlight vb %}

chart.PrimaryXAxis.LineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img50.jpeg)

### BackColor

When the `HatchFill` or `LinearGradient` pen type is used, an additional background color is required for the axis line. Both `ForeColor` and `BackColor` can be used together for these pen types.

{% tabs %}

{% highlight c# %}

chart.PrimaryXAxis.LineType.BackColor = Color.Green;
chart.PrimaryXAxis.LineType.ForeColor = Color.Red;
chart.PrimaryXAxis.LineType.PenType = System.Drawing.Drawing2D.PenType.LinearGradient;

{% endhighlight %}

{% highlight vb %}

chart.PrimaryXAxis.LineType.BackColor = Color.Green
chart.PrimaryXAxis.LineType.ForeColor = Color.Red
chart.PrimaryXAxis.LineType.PenType = System.Drawing.Drawing2D.PenType.LinearGradient

{% endhighlight %}
{% endtabs %}

![Chart Axes](Chart-Axes_images/Chart-Axes_img54.jpeg)
