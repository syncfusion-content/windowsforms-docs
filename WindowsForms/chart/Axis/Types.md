---
layout: post
title: Types of Axis in Windows Forms Chart control | Syncfusion
description: Learn about the different types of chart axis supported in Syncfusion Essential Studio Windows Forms Chart control.
platform: windowsforms
control: Chart
documentation: ug
---

# Types of Axis in Windows Forms Chart

The Windows Forms Chart control supports the following types of chart axis, configurable via the [ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property of [ChartAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html):

* Double
* Category
* DateTime
* Logarithmic
* Custom

## Double Axis

[Double](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartValueType.html) is the default value type for both X and Y axes. It is used to plot standard numerical (floating-point) values on the chart.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Double;
this.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Double;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Double
Me.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Double

{% endhighlight %}
{% endtabs %}

### Interval

The axis interval can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) property. By default, the interval is automatically calculated based on the minimum and maximum values of the provided data.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.DesiredIntervals = 5;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.DesiredIntervals = 5

{% endhighlight %}
{% endtabs %}

### Customizing the Range

The [Range](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Range) property is used to set the minimum, maximum, and interval of the axis range. Set [RangeType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_RangeType) to Set to apply a custom range.

N> If only the minimum or maximum is specified, the other value is calculated automatically.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.RangeType = ChartAxisRangeType.Set;
this.chartControl1.PrimaryYAxis.Range = new MinMaxInfo(0, 500, 50);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.RangeType = ChartAxisRangeType.Set
Me.chartControl1.PrimaryYAxis.Range = New MinMaxInfo(0, 500, 50)

{% endhighlight %}
{% endtabs %}

## Category Axis

The Category axis displays text-based labels instead of numeric values. It is an index-based axis where data points are plotted at equal intervals. To use the category axis, set the [ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property to Category.

N> Category axis is supported only for the X-axis.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Category;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Category

{% endhighlight %}
{% endtabs %}

![Category axis in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img39.png)

### Indexed X Values

By default points in a series are plotted against their x and y values. However in some cases the x values are meaningless, they simply represent categories, and you do not want to plot the points against such x values. Such an x-axis that ignores the x-values and simply uses the positional value of a point in a series is said to be indexed. Enable this using the [Indexed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Indexed) property.

In the figure below, the first chart shows a line chart that is not-indexed while the second chart shows a line chart whose x-axis is indexed. 

![Chart Axes](Chart-Axes_images/Chart-Axes_img1.jpeg)

![Chart Axes](Chart-Axes_images/Chart-Axes_img2.jpeg)   

N> Indexing is supported only on the X-axis.

{% tabs %}
{% highlight c# %}

this.chartControl1.Indexed = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Indexed = True

{% endhighlight %}
{% endtabs %}

### Interval

By default, the category axis labels are displayed with a fixed interval of 1. This can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) property.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.DesiredIntervals = 2;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.DesiredIntervals = 2

{% endhighlight %}
{% endtabs %}

## DateTime Axis

The DateTime axis is used to plot DateTime values along the axis. It is widely used in financial and time-series charts. Set the [ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property to `DateTime` to enable this axis.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime;
this.chartControl1.PrimaryXAxis.DateTimeFormat = "MMM-yy";

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime
Me.chartControl1.PrimaryXAxis.DateTimeFormat = "MMM-yy"

{% endhighlight %}
{% endtabs %}

### Interval

In the DateTime axis, the interval can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) and [IntervalType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_IntervalType) properties. For example, setting DesiredIntervals to 6 and IntervalType to Months will use 6 months as the interval.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime;
this.chartControl1.PrimaryXAxis.IntervalType = ChartDateTimeIntervalType.Months;
this.chartControl1.PrimaryXAxis.DesiredIntervals = 6;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime
Me.chartControl1.PrimaryXAxis.IntervalType = ChartDateTimeIntervalType.Months
Me.chartControl1.PrimaryXAxis.DesiredIntervals = 6

{% endhighlight %}
{% endtabs %}

### Customizing the Range

The [DateTimeRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DateTimeRange) property is used to set the minimum and maximum date-time values for the axis range. Set [RangeType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_RangeType) to `Set` to apply a custom range.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.RangeType = ChartAxisRangeType.Set;
this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime;
this.chartControl1.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(
    new DateTime(2024, 1, 1), new DateTime(2024, 12, 31), 1, ChartDateTimeIntervalType.Months);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.RangeType = ChartAxisRangeType.Set
Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime
Me.chartControl1.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange(
    New DateTime(2024, 1, 1), New DateTime(2024, 12, 31), 1, ChartDateTimeIntervalType.Months)

{% endhighlight %}
{% endtabs %}

## Logarithmic Axis

The Logarithmic axis uses a logarithmic scale and is ideal for visualizing data with large value differences. It can be applied to both X and Y axes. Set the [ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property to Logarithmic to enable this axis.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic

{% endhighlight %}
{% endtabs %}

### Interval

The axis interval can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) property. By default, the interval is calculated based on the minimum and maximum values of the provided data.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic;
this.chartControl1.PrimaryYAxis.DesiredIntervals = 5;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic
Me.chartControl1.PrimaryYAxis.DesiredIntervals = 5

{% endhighlight %}
{% endtabs %}

### Customizing the Range

The range of the logarithmic axis can be customized using the [Range](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Range) property. By default, the range is automatically calculated to align with the provided data.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.RangeType = ChartAxisRangeType.Set;
this.chartControl1.PrimaryYAxis.Range = new MinMaxInfo(100, 100000, 10);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.RangeType = ChartAxisRangeType.Set
Me.chartControl1.PrimaryYAxis.Range = New MinMaxInfo(100, 100000, 10)

{% endhighlight %}
{% endtabs %}

### Customizing the Logarithmic Base

The logarithmic base can be customized using the [LogBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_LogBase) property. The default logarithmic base value is 10.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic;
this.chartControl1.PrimaryYAxis.LogBase = 2;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic
Me.chartControl1.PrimaryYAxis.LogBase = 2

{% endhighlight %}
{% endtabs %}

## Custom Axis

The Custom axis allows you to define fully user-controlled labels on the axis. Instead of relying on the automatically generated labels, you can specify your own label text, position, color, and font using the [Labels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Labels) collection. Set the [TickLabelsDrawingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TickLabelsDrawingMode) to `UserMode` to use only the custom labels, or `BothUserAndAutomaticMode` to display both.

N> The `ValueType` for each custom label entry should be set to `ChartValueType.Custom`.

{% tabs %}
{% highlight c# %}

// Set axis to use user-defined labels
this.chartControl1.PrimaryXAxis.TickLabelsDrawingMode = ChartAxisTickLabelDrawingMode.UserMode;

// Add custom labels with position, color, font, and value
this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel(
    "Q1", Color.DarkBlue, new Font("Arial", 9F, FontStyle.Bold),
    1.0, "", "", ChartValueType.Custom));

this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel(
    "Q2", Color.DarkBlue, new Font("Arial", 9F, FontStyle.Bold),
    2.0, "", "", ChartValueType.Custom));

this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel(
    "Q3", Color.DarkBlue, new Font("Arial", 9F, FontStyle.Bold),
    3.0, "", "", ChartValueType.Custom));

this.chartControl1.PrimaryXAxis.Labels.Add(new ChartAxisLabel(
    "Q4", Color.DarkBlue, new Font("Arial", 9F, FontStyle.Bold),
    4.0, "", "", ChartValueType.Custom));

{% endhighlight %}

{% highlight vb %}

' Set axis to use user-defined labels
Me.chartControl1.PrimaryXAxis.TickLabelsDrawingMode = ChartAxisTickLabelDrawingMode.UserMode

' Add custom labels with position, color, font, and value
Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel(
    "Q1", Color.DarkBlue, New Font("Arial", 9F, FontStyle.Bold),
    1.0, "", "", ChartValueType.Custom))

Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel(
    "Q2", Color.DarkBlue, New Font("Arial", 9F, FontStyle.Bold),
    2.0, "", "", ChartValueType.Custom))

Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel(
    "Q3", Color.DarkBlue, New Font("Arial", 9F, FontStyle.Bold),
    3.0, "", "", ChartValueType.Custom))

Me.chartControl1.PrimaryXAxis.Labels.Add(New ChartAxisLabel(
    "Q4", Color.DarkBlue, New Font("Arial", 9F, FontStyle.Bold),
    4.0, "", "", ChartValueType.Custom))

{% endhighlight %}
{% endtabs %}

## Axis Positioning

### Inverted Axis

The Inverted axis plots data in the opposite direction — from top to bottom for the Y-axis and from right to left for the X-axis. To enable this, set the [Inversed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Inversed) property to `true`.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.Inversed = true;
this.chartControl1.PrimaryYAxis.Inversed = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.Inversed = True
Me.chartControl1.PrimaryYAxis.Inversed = True

{% endhighlight %}
{% endtabs %}

![Inverted axis in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img4.jpeg)

### Opposed Axis

By default, the X-axis is rendered at the bottom and the Y-axis is rendered on the left. Setting the [OpposedPosition](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_OpposedPosition) property to `true` moves the axis to the opposite side — the X-axis appears at the top and the Y-axis appears on the right.

{% tabs %}
{% highlight c# %}

// Renders the X-axis at the top instead of the default bottom position
this.chartControl1.PrimaryXAxis.OpposedPosition = true;

// Renders the Y-axis on the right instead of the default left position
this.chartControl1.PrimaryYAxis.OpposedPosition = true;

{% endhighlight %}

{% highlight vb %}

' Renders the X-axis at the top instead of the default bottom position
Me.chartControl1.PrimaryXAxis.OpposedPosition = True

' Renders the Y-axis on the right instead of the default left position
Me.chartControl1.PrimaryYAxis.OpposedPosition = True

{% endhighlight %}
{% endtabs %}

![Opposed axis in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img5.jpeg)

N> The [OpposedPosition](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_OpposedPosition) and [Inversed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Inversed) properties can be combined to implement right-to-left chart layouts.
