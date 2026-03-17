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

## Axis types

### Double Axis

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

#### Interval

The axis interval can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) property. By default, the interval is automatically calculated based on the minimum and maximum values of the provided data.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.DesiredIntervals = 5;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.DesiredIntervals = 5

{% endhighlight %}
{% endtabs %}

#### Customizing the Range

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

### Category Axis

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

#### Indexed X Values

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

#### Interval

By default, the category axis labels are displayed with a fixed interval of 1. This can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) property.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.DesiredIntervals = 2;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.DesiredIntervals = 2

{% endhighlight %}
{% endtabs %}

### DateTime Axis

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

#### Interval

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

#### Customizing the Range

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

### Logarithmic Axis

The Logarithmic axis uses a logarithmic scale and is ideal for visualizing data with large value differences. It can be applied to both X and Y axes. Set the [ValueType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ValueType) property to Logarithmic to enable this axis.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.ValueType = ChartValueType.Logarithmic

{% endhighlight %}
{% endtabs %}

#### Interval

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

#### Customizing the Range

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

#### Customizing the Logarithmic Base

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

### Custom Axis

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

#### Inverted Axis

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

#### Opposed Axis

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

## Multiple Axes

When plotting multiple series on a single chart, each series may need its own X or Y axis. You can add additional axes to the chart by instantiating a [ChartAxis](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html) and adding it to the **Axes** collection. Then, assign the newly created axis as the X or Y axis of a specific series.

### Adding a Secondary X-Axis

The following code shows how to add a secondary X-axis and assign it to a series.

{% tabs %}
{% highlight c# %}

// Create a new instance of the chart axis
private ChartAxis secXAxis = new ChartAxis();

// Add the secondary axis to the chart axes collection
this.chartControl1.Axes.Add(this.secXAxis);

// Assign this axis to a specific series
this.chartControl1.Series[1].XAxis = this.secXAxis;

{% endhighlight %}

{% highlight vb %}

' Create a new instance of the chart axis
Private secXAxis As ChartAxis = New ChartAxis()

' Add the secondary axis to the chart axes collection
Me.chartControl1.Axes.Add(Me.secXAxis)

' Assign this axis to a specific series
Me.chartControl1.Series(1).XAxis = Me.secXAxis

{% endhighlight %}
{% endtabs %}

![Multiple X-axis in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img6.jpeg)

### Adding a Secondary Y-Axis

For a secondary Y-axis, set the [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html) to `Vertical` before adding it to the collection.

{% tabs %}
{% highlight c# %}

// Create a new instance of the chart axis
private ChartAxis secYAxis = new ChartAxis();

// Set orientation to Vertical for a Y-axis
secYAxis.Orientation = ChartOrientation.Vertical;

// Add the secondary axis to the chart axes collection
this.chartControl1.Axes.Add(this.secYAxis);

// Assign this axis to a specific series
this.chartControl1.Series[1].YAxis = this.secYAxis;

{% endhighlight %}

{% highlight vb %}

' Create a new instance of the chart axis
Private secYAxis As ChartAxis = New ChartAxis()

' Set orientation to Vertical for a Y-axis
Me.secYAxis.Orientation = ChartOrientation.Vertical

' Add the secondary axis to the chart axes collection
Me.chartControl1.Axes.Add(Me.secYAxis)

' Assign this axis to a specific series
Me.chartControl1.Series(1).YAxis = Me.secYAxis

{% endhighlight %}
{% endtabs %}

![Multiple Y-axis in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img6_1.jpg)

### Opposed Position

By default, the additional axis is rendered right next to the corresponding primary axis. To render it on the opposite side, set the [OpposedPosition](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_OpposedPosition) property to `true`.

{% tabs %}
{% highlight c# %}

secYAxis.OpposedPosition = true;

{% endhighlight %}

{% highlight vb %}

secYAxis.OpposedPosition = True

{% endhighlight %}
{% endtabs %}

![Opposed position in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img7.jpeg)

### Stacked or Side-by-Side Position

By default, secondary axes are rendered stacked (parallel) to the primary axis, controlled by the [XAxesLayoutMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_XAxesLayoutMode) and [YAxesLayoutMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_YAxesLayoutMode) properties, which are set to `Stacking` by default.

To render the secondary axis side-by-side with the primary axis, set these properties to `SideBySide`.

{% tabs %}
{% highlight c# %}

this.chartControl1.ChartArea.XAxesLayoutMode = ChartAxesLayoutMode.SideBySide;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ChartArea.XAxesLayoutMode = ChartAxesLayoutMode.SideBySide

{% endhighlight %}
{% endtabs %}

![Side-by-side axes in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img8.jpeg)

### ChartAxesLayouts

You can combine stacking and side-by-side layouts when using multiple axes. This allows you to position axes independently  for example, placing two Y-axes on the same side and a third on the opposite side  using [ChartAxisLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisLayout.html).

{% tabs %}
{% highlight c# %}

// Create chart axes
ChartAxis axis = this.chartControl1.PrimaryYAxis;
ChartAxis axis0 = new ChartAxis(ChartOrientation.Vertical);
ChartAxis axis1 = new ChartAxis(ChartOrientation.Vertical);

// Add axes to the chart
chartControl1.Axes.Add(axis0);
chartControl1.Axes.Add(axis1);

// Create a layout and add all Y-axes to it (including primary)
ChartAxisLayout layout1 = new ChartAxisLayout();
layout1.Axes.Add(axis);
layout1.Axes.Add(axis0);
layout1.Axes.Add(axis1);

// Add the layout to ChartArea
chartControl1.ChartArea.YLayouts.Add(layout1);

{% endhighlight %}

{% highlight vb %}

' Create chart axes
Dim axis As ChartAxis = Me.chartControl1.PrimaryYAxis
Dim axis0 As New ChartAxis(ChartOrientation.Vertical)
Dim axis1 As New ChartAxis(ChartOrientation.Vertical)

' Add axes to the chart
chartControl1.Axes.Add(axis0)
chartControl1.Axes.Add(axis1)

' Create a layout and add all Y-axes to it (including primary)
Dim layout1 As New ChartAxisLayout()
layout1.Axes.Add(axis)
layout1.Axes.Add(axis0)
layout1.Axes.Add(axis1)

' Add the layout to ChartArea
chartControl1.ChartArea.YLayouts.Add(layout1)

{% endhighlight %}
{% endtabs %}

![ChartAxesLayouts in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img9.jpeg)

N> All axes with the same orientation must be added to [ChartAxisLayout](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisLayout.html) (including the PrimaryAxis) as illustrated in the above code snippet.
 
## Axis Range and Intervals

### Automatic range calculation

By default the axis range and intervals are calculated by the chart's built-in "nice range" engine. It computes human-friendly minimum, maximum and interval values from your data (for example, converting a raw range like 1.2–3.7 into 0–5 with 0.5 intervals). This behavior is controlled by the [ChartAxis.RangeType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_RangeType) property which is set to `Auto` by default.

### Specifying custom ranges

To set a fixed range, set `RangeType` to `Set` and use the `Range` (for double) or `DateTimeRange` (for DateTime) properties.

<table>
<tr>
<th>
ChartAxis Property</th><th>
Applies to RangeType</th><th>
Applies to ValueType</th><th>
Description</th></tr>
<tr>
<td>

{{'[Range](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Range)'| markdownify }}
</td><td>
Set</td><td>
Double</td><td>
Specifies the minimum, maximum and interval for the axis. Use this if the data points are of double type.</td></tr>
<tr>
<td>
{{'[DateTimeRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DateTimeRange)'| markdownify }}
</td><td>
Set</td><td>
DateTime</td><td>
Specifies the start and end dates and interval time for the axis. Use this if the data points are of datetime type.</td></tr>
</table>

{% tabs %}
{% highlight c# %}
// Double axis: set min, max and interval
this.chartControl1.PrimaryYAxis.RangeType = ChartAxisRangeType.Set;
this.chartControl1.PrimaryYAxis.Range = new MinMaxInfo(0, 500, 50);

// DateTime axis: set start, end and interval
this.chartControl1.PrimaryXAxis.RangeType = ChartAxisRangeType.Set;
this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime;
this.chartControl1.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(
    new DateTime(2024, 1, 1), new DateTime(2024, 12, 31), 1, ChartDateTimeIntervalType.Months);
{% endhighlight %}

{% highlight vb %}
' Double axis: set min, max and interval
Me.chartControl1.PrimaryYAxis.RangeType = ChartAxisRangeType.Set
Me.chartControl1.PrimaryYAxis.Range = New MinMaxInfo(0, 500, 50)

' DateTime axis: set start, end and interval
Me.chartControl1.PrimaryXAxis.RangeType = ChartAxisRangeType.Set
Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime
Me.chartControl1.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange(
    New DateTime(2024, 1, 1), New DateTime(2024, 12, 31), 1, ChartDateTimeIntervalType.Months)
{% endhighlight %}
{% endtabs %}

### Changing intervals

Use `DesiredIntervals` to request a preferred number of intervals for the automatic engine. For DateTime axes, use `IntervalType` to specify Years/Months/Days etc.

<table>
<tr>
<th>
ChartAxis Property</th><th>
Applies to RangeType</th><th>
Applies to ValueType</th><th>
Description</th></tr>
<tr>
<td>

{{'[DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals)'| markdownify }}
</td><td>
Auto</td><td>
Double, DateTime</td><td>
A request for the nice-range calculation engine to come up with a nice range with so many intervals. The engine will only use this setting as a guidance. Default value is 6.</td></tr>
<tr>
<td>
{{'[IntervalType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_IntervalType)'| markdownify }}
</td><td>
Auto</td><td>
DateTime</td><td>
Specifies whether the interval that gets calculated should be in Years, Months, Weeks, Days, Hours, Minutes, Seconds or Milliseconds. This setting is used only if the ValueType of the axis is set to DateTime. Default value is Auto.</td></tr>
</table>

{% tabs %}
{% highlight c# %}
this.chartControl1.PrimaryXAxis.DesiredIntervals = 6;
this.chartControl1.PrimaryXAxis.IntervalType = ChartDateTimeIntervalType.Months; // DateTime axis only
{% endhighlight %}

{% highlight vb %}
Me.chartControl1.PrimaryXAxis.DesiredIntervals = 6
Me.chartControl1.PrimaryXAxis.IntervalType = ChartDateTimeIntervalType.Months ' DateTime axis only
{% endhighlight %}
{% endtabs %}

### Changing origin and padding

- `PreferZero` (Auto range): prefers zero as a boundary when reasonable.
- `ForceZero`: forces one boundary to be zero.
- `CustomOrigin`, `Origin`, `OriginDate`: set a custom origin when `CustomOrigin` is enabled.
- `RangePaddingType`: control padding before/after data points.

<table>
<tr>
<th>
ChartAxis Property</th><th>
Applies to RangeType</th><th>
Applies to ValueType</th><th>
Description</th></tr>
<tr>
<td>

{{'[PreferZero](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_PreferZero)'| markdownify }}
</td><td>
Auto</td><td>
Double</td><td>
Indicates whether one boundary of the calculated range should be tweaked to zero. Such tweaking will happen only if zero is within a reasonable distance from the calculated boundary. To ensure that one boundary is always zero, use the ForceZero setting instead. Default value is true.</td></tr>
<tr>
<td>
{{'[ForceZero](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ForceZero)'| markdownify }}
</td><td>
Auto</td><td>
Double</td><td>
Indicates whether one boundary of the calculated range should always be tweaked to zero. Default value is true.</td></tr>
<tr>
<td>
{{'[CustomOrigin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_CustomOrigin)'| markdownify }}
</td><td>
Auto and Set</td><td>
Double, DateTime</td><td>
Lets you use the properties Origin and OriginDate below. Default value is false.</td></tr>
<tr>
<td>
{{'[Origin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Origin)'| markdownify }}
</td><td>
Auto and Set</td><td>
Double</td><td>
Lets you specify a custom origin (double value) for the axis. Use this property when the data points are of double type. The interval and range will then be calculated automatically. Remember to set CustomOrigin to true. Default value is 0.0.</td></tr>
<tr>
<td>
{{'[OriginDate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_OriginDate)'| markdownify }}
</td><td>
Auto and Set</td><td>
DateTime</td><td>
Lets you specify a custom origin (double value) for the axis. Use this property when the data points are of double type. The interval and range will then be calculated automatically. Remember to set CustomOrigin to true. Default value is DateTime.MinValue.</td></tr>
<tr>
<td>
{{'[Offset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Offset)'| markdownify }}
</td><td>
Auto and Set</td><td>
Double and DateTime</td><td>
Specifies the offset that should be applied to the automatically calculated start of the range.</td></tr>
<tr>
<td>
{{'[DateTimeOffset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DateTimeOffset)'| markdownify }}
</td><td>
Auto</td><td>
DateTime</td><td>
Specifies the offset that should be applied to the automatically calculated start of the range.</td></tr>
<tr>
<td>
{{'[Offset](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Offset)'| markdownify }}
</td><td>
Set</td><td>
DateTime</td><td>
Use this instead of Offset if you want to specify the OffsetType (see below).</td></tr>
<tr>
<td>
{{'[DateTimeInterval.OffsetType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartDateTimeInterval.html#Syncfusion_Windows_Forms_Chart_ChartDateTimeInterval_OffsetType)'| markdownify }}
</td><td>
Set</td><td>
DateTime</td><td>
Specifies the type of offset specified above. Could be Auto, Years, Months, Weeks, Days, Hours, Minutes, Seconds or Milliseconds.</td></tr>
<tr>
<td>
{{'[RangePaddingType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_RangePaddingType)'| markdownify }}
</td><td>
Auto</td><td>
Double and DateTime</td><td>
Specifies if there should be any padding applied between the points and the axes, before and after the datapoints.</td></tr>
</table>

{% tabs %}
{% highlight c# %}
this.chartControl1.PrimaryYAxis.PreferZero = true;
this.chartControl1.PrimaryYAxis.ForceZero = false;
this.chartControl1.PrimaryYAxis.CustomOrigin = true;
this.chartControl1.PrimaryYAxis.Origin = 10;
this.chartControl1.PrimaryYAxis.RangePaddingType = ChartRangePaddingType.Round;
{% endhighlight %}

{% highlight vb %}
Me.chartControl1.PrimaryYAxis.PreferZero = True
Me.chartControl1.PrimaryYAxis.ForceZero = False
Me.chartControl1.PrimaryYAxis.CustomOrigin = True
Me.chartControl1.PrimaryYAxis.Origin = 10
Me.chartControl1.PrimaryYAxis.RangePaddingType = ChartRangePaddingType.Round
{% endhighlight %}
{% endtabs %}

N> These settings let you fine-tune how the axis range and intervals are calculated and displayed.

## Axis Dimensions

The axis starting point, length, and the full bounding rectangle (axis line and its labels) can be customized using the following properties.

| ChartAxis Property | Description |
|---|---|
| [Location](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Location) | Specifies the starting location of the axis. `LocationType` must be set to `Set` to use this property. |
| [LocationType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_LocationType) | `Set`  uses the `Location` property; `Auto` (default)  calculated automatically to avoid label overlap; `AntiLabelCut`  positions axis to prevent labels from being clipped. |
| [AutoSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_AutoSize) | Specifies whether the axis length is calculated automatically or set via the `Size` property. |
| [Size](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Size) | Specifies the length of the axis. `AutoSize` must be `false`. Changing the size expands or shrinks the rendered intervals. |
| [Rect](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Rect) | Specifies the rectangle that encompasses the axis and its labels, giving full control over position and size. |

### Custom axis location

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryYAxis.LocationType = Syncfusion.Windows.Forms.Chart.ChartAxisLocationType.Set;
this.chartControl1.PrimaryYAxis.Location = new PointF(15, 200);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryYAxis.LocationType = Syncfusion.Windows.Forms.Chart.ChartAxisLocationType.Set
Me.chartControl1.PrimaryYAxis.Location = New PointF(15, 200)

{% endhighlight %}
{% endtabs %}

![Custom axis location in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img11.jpeg)

### Custom axis size

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.AutoSize = false;
this.chartControl1.PrimaryXAxis.Size = new Size(50, 20);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.AutoSize = False
Me.chartControl1.PrimaryXAxis.Size = New Size(50, 20)

{% endhighlight %}
{% endtabs %}

![Custom axis size in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img12.jpeg)

![Custom axis size in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img13.jpeg)

## Axis Crossing Support

The WinForms Chart control allows the X and Y axes to intersect at a desired point. The intersection point is determined by the value specified in the [Crossing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Crossing) property for each axis. This is useful when charting data that contains a large mix of negative and positive values and you want to reposition the default axis location.

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>

{{'[Crossing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Crossing)'| markdownify }}
</td><td>
Specifies the point of intersect for X and Y axis based on the given data point value.   </td><td>
Server side </td><td>
Double</td><td>
NA </td></tr>
</table>

Set the `Crossing` value on `PrimaryXAxis` to the Y-axis value where the X-axis should cross, and vice versa.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.Crossing = 150;
this.chartControl1.PrimaryYAxis.Crossing = 6;
this.chartControl1.Series3D = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.Crossing = 150
Me.chartControl1.PrimaryYAxis.Crossing = 6
Me.chartControl1.Series3D = True

{% endhighlight %}
{% endtabs %}

![Axis crossing support in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img36.png)

## Exclude Invisible Series Range

By default, hidden (invisible) series still influence the auto-calculated axis range. To exclude hidden series from the range calculation, set the [ExcludeInvisibleSeriesRange](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html) property to `true` on the corresponding axis.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.ExcludeInvisibleSeriesRange = true;
this.chartControl1.PrimaryYAxis.ExcludeInvisibleSeriesRange = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.ExcludeInvisibleSeriesRange = True
Me.chartControl1.PrimaryYAxis.ExcludeInvisibleSeriesRange = True

{% endhighlight %}
{% endtabs %}

When a series is hidden and `ExcludeInvisibleSeriesRange` is `true`, the axis range is recalculated using only the visible series, resulting in a tighter, more meaningful scale.

![Exclude invisible series range in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img41.png)
