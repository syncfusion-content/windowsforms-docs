---
layout: post
title: Axis types in Windows Forms Chart control | Syncfusion
description: Learn here all about axis types and its features in Syncfusion® Windows Forms Chart control.
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

[Double](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartValueType.html) is the default value type for both X and Y axes. It is used to plot numerical values to the chart.

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

In the DateTime axis, the interval can be customized using the [DesiredIntervals](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DesiredIntervals) and [DateTimeInterval](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_IntervalType) properties. For example, setting DesiredIntervals to 6 and IntervalType to Months will use 6 months as the interval.

{% tabs %}
{% highlight c# %}

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime;
this.chartControl1.PrimaryXAxis.DateTimeInterval = ChartDateTimeIntervalType.Months;
this.chartControl1.PrimaryXAxis.DesiredIntervals = 6;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime
Me.chartControl1.PrimaryXAxis.DateTimeInterval = ChartDateTimeIntervalType.Months
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

The Inverted axis plots data in the opposite direction, from top to bottom for the Y-axis and from right to left for the X-axis. To enable this, set the [Inversed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Inversed) property to `true`.

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

secXAxis.OpposedPosition = true;

{% endhighlight %}

{% highlight vb %}

secXAxis.OpposedPosition = True

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

## Changing origin and padding

Use the following properties to customize how the axis origin is calculated and displayed:

- **PreferZero** - Attempts to align one boundary of the calculated range to zero when possible.
- **ForceZero** - Forces the axis range to always include zero, overriding automatic calculations.
- **CustomOrigin** - Enables custom origin logic using the Origin or OriginDate property.
- **Origin** - Sets the numeric value where the axis should begin or intersect the perpendicular axis.
- **OriginDate** - Sets the DateTime origin for axes based on DateTime values.
- **Offset** - Applies a numeric offset to shift the axis start from its automatically calculated position.
- **DateTimeOffset** - Applies a DateTime offset to adjust the starting point of a DateTime axis.
- **OffsetDate** - Allows specifying a DateTime offset using an interval unit such as days, months, or years.
- **DateTimeIntervalOffsetType** - Defines the interval unit for OffsetDate (Days, Months, Weeks, Hours, etc.).
- **RangePaddingType** - Determines how padding is applied between the data points and the axis boundary.

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

- **Location** - Sets the starting point of the axis within the chart area.
- **LocationType** - Determines how the axis location is interpreted:
    - **Set** – Uses the value specified in Location.
    - **Auto** – Automatically positions the axis to avoid label overlap (default).
    - **AntiLabelCut** – Positions the axis to prevent labels from being clipped at the edges.
- **AutoSize** - Specifies whether the axis length is calculated automatically.
- **Size** - Defines the length of the axis. When set, AutoSize must be disabled.
- **Rect** - Defines the rectangle that encloses the axis and its labels, allowing full control over axis size and position.

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

For example, when hidden the any of the series and set the ExcludeInvisibleSeriesRange as true for corresponding axis, then the axis range will not include the hidden series while calculation ranges for that axis.

The following screenshot illustrates a chart whose x-axis and y-axis range exclude the invisible series by setting ExcludeInvisibleSeriesRange as true for corresponding axis.

![Exclude invisible series range in Windows Forms Chart](Chart-Axes_images/Chart-Axes_img41.png)