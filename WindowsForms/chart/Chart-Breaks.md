---
layout: post
title: Chart Breaks in Windows Forms Chart control | Syncfusion
description: Chart breaks in the Windows Forms Chart remove unused axis ranges and customize break-line appearance for clearer data visualization.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Breaks in Windows Forms Chart

Chart breaks remove an unused or less significant range from an axis. This helps users compare values when the data contains a large gap or when a continuous range includes intervals with no data.

The `MakeBreaks` property enables axis breaks, the `BreakRanges` property configures automatic or manual break ranges, and the `BreakInfo` property customizes the appearance of break lines.

## Enable chart breaks

The [MakeBreaks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_MakeBreaks) property controls whether breaks are displayed on the axis.

The following code example enables breaks on the primary Y-axis and calculates the break range automatically.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
    "Sales",
    ChartSeriesType.Column);

series.Points.Add(1, 20);
series.Points.Add(2, 25);
series.Points.Add(3, 30);
series.Points.Add(4, 250);
series.Points.Add(5, 270);

chartControl.Series.Add(series);

chartControl.PrimaryYAxis.MakeBreaks = true;
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Column)

series.Points.Add(1, 20)
series.Points.Add(2, 25)
series.Points.Add(3, 30)
series.Points.Add(4, 250)
series.Points.Add(5, 270)

chartControl.Series.Add(series)

chartControl.PrimaryYAxis.MakeBreaks = True
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto

{% endhighlight %}
{% endtabs %}

![Chart breaks in Windows Forms Chart](../Chart-Axes_Images/chart-breaks.png)

## Break mode

The [BreaksMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisRange.html#Syncfusion_Windows_Forms_Chart_ChartAxisRange_BreaksMode) property specifies how break ranges are determined.

The supported `ChartBreaksMode` values are:

- [Auto](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreaksMode.html#Syncfusion_Windows_Forms_Chart_ChartBreaksMode_Auto): Calculates break ranges automatically from the series data.
- [Manual](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreaksMode.html#Syncfusion_Windows_Forms_Chart_ChartBreaksMode_Manual): Uses the ranges added manually to `BreakRanges`.
- [None](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreaksMode.html#Syncfusion_Windows_Forms_Chart_ChartBreaksMode_None): Does not calculate or apply break ranges.

The following code example enables automatic break calculation.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.MakeBreaks = true;
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.MakeBreaks = True
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto

{% endhighlight %}
{% endtabs %}

N> Set `MakeBreaks` to `true` before configuring the break mode.

## Automatic chart breaks

The `Auto` break mode calculates axis breaks based on gaps in the series values. The [BreakAmount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisRange.html#Syncfusion_Windows_Forms_Chart_ChartAxisRange_BreakAmount) property specifies the minimum ratio of empty axis space required to create a break. The supported range is from `0.0` to `1.0`.

For example, a value of `0.25` allows a break when more than one-quarter of the chart space is empty.

The following code example configures automatic breaks with a break amount of `0.25`.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.MakeBreaks = true;
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto;

chartControl.PrimaryYAxis.BreakRanges.BreakAmount =
    0.25;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.MakeBreaks = True
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto

chartControl.PrimaryYAxis.BreakRanges.BreakAmount =
    0.25

{% endhighlight %}
{% endtabs %}

N> A smaller `BreakAmount` value allows breaks for smaller empty ranges, while a larger value requires a larger empty range.

## Manual chart breaks

The `Manual` break mode allows a specific range to be removed from the axis. Use the `Union` method of `BreakRanges` to add a manual break range.

The following code example removes the Y-axis range from `50` to `200`.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.MakeBreaks = true;
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Manual;

chartControl.PrimaryYAxis.BreakRanges.Union(
    new DoubleRange(50, 200));

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.MakeBreaks = True
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Manual

chartControl.PrimaryYAxis.BreakRanges.Union(
    New DoubleRange(50, 200))

{% endhighlight %}
{% endtabs %}

## DateTime axis breaks

A manual break can be applied to a `DateTime` axis by converting the start and end dates to OLE Automation values using `ToOADate`.

The following code example removes a weekend range from the primary X-axis.

{% tabs %}
{% highlight c# %}

DateTime startDate =
    new DateTime(2026, 9, 21);

DateTime breakStart =
    new DateTime(2026, 9, 26);

DateTime breakEnd =
    new DateTime(2026, 9, 28);

chartControl.PrimaryXAxis.ValueType =
    ChartValueType.DateTime;

chartControl.PrimaryXAxis.RangeType =
    ChartAxisRangeType.Set;

chartControl.PrimaryXAxis.Range =
    new MinMaxInfo(
        startDate.ToOADate(),
        startDate.AddDays(10).ToOADate(),
        1);

chartControl.PrimaryXAxis.MakeBreaks = true;
chartControl.PrimaryXAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Manual;

chartControl.PrimaryXAxis.BreakRanges.Union(
    new DoubleRange(
        breakStart.ToOADate(),
        breakEnd.ToOADate()));

chartControl.PrimaryXAxis.DateTimeFormat =
    "MMM dd";

{% endhighlight %}
{% highlight vb %}

Dim startDate As New DateTime(
    2026, 9, 21)

Dim breakStart As New DateTime(
    2026, 9, 26)

Dim breakEnd As New DateTime(
    2026, 9, 28)

chartControl.PrimaryXAxis.ValueType =
    ChartValueType.DateTime

chartControl.PrimaryXAxis.RangeType =
    ChartAxisRangeType.Set

chartControl.PrimaryXAxis.Range =
    New MinMaxInfo(
        startDate.ToOADate(),
        startDate.AddDays(10).ToOADate(),
        1)

chartControl.PrimaryXAxis.MakeBreaks = True
chartControl.PrimaryXAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Manual

chartControl.PrimaryXAxis.BreakRanges.Union(
    New DoubleRange(
        breakStart.ToOADate(),
        breakEnd.ToOADate()))

chartControl.PrimaryXAxis.DateTimeFormat =
    "MMM dd"

{% endhighlight %}
{% endtabs %}

N> Use axis breaks to remove a known interval from the displayed axis. If the requirement is only to display existing points at equal intervals, consider using indexed mode instead.

## Break-line appearance

The [BreakInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_BreakInfo) property provides a [ChartAxisBreakInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html) instance that customizes the appearance of axis break lines.

The following properties are available:

- [LineType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html#Syncfusion_Windows_Forms_Chart_ChartAxisBreakInfo_LineType): Specifies the break-line type.
- [LineColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html#Syncfusion_Windows_Forms_Chart_ChartAxisBreakInfo_LineColor): Specifies the break-line color.
- [LineWidth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html#Syncfusion_Windows_Forms_Chart_ChartAxisBreakInfo_LineWidth): Specifies the break-line width.
- [LineStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html#Syncfusion_Windows_Forms_Chart_ChartAxisBreakInfo_LineStyle): Specifies the dash style of the break line.
- [LineSpacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html#Syncfusion_Windows_Forms_Chart_ChartAxisBreakInfo_LineSpacing): Specifies the spacing between the break lines.
- [SpacingColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html#Syncfusion_Windows_Forms_Chart_ChartAxisBreakInfo_SpacingColor): Specifies the color of the space between break lines.

The following code example customizes the break-line appearance.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakInfo.LineType =
    ChartBreakLineType.Wave;

chartControl.PrimaryYAxis.BreakInfo.LineColor =
    Color.DarkBlue;

chartControl.PrimaryYAxis.BreakInfo.LineWidth =
    2f;

chartControl.PrimaryYAxis.BreakInfo.LineStyle =
    DashStyle.Solid;

chartControl.PrimaryYAxis.BreakInfo.LineSpacing =
    12;

chartControl.PrimaryYAxis.BreakInfo.SpacingColor =
    Color.LightBlue;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakInfo.LineType =
    ChartBreakLineType.Wave

chartControl.PrimaryYAxis.BreakInfo.LineColor =
    Color.DarkBlue

chartControl.PrimaryYAxis.BreakInfo.LineWidth =
    2.0F

chartControl.PrimaryYAxis.BreakInfo.LineStyle =
    DashStyle.Solid

chartControl.PrimaryYAxis.BreakInfo.LineSpacing =
    12

chartControl.PrimaryYAxis.BreakInfo.SpacingColor =
    Color.LightBlue

{% endhighlight %}
{% endtabs %}

## Break-line type

The `LineType` property supports the following `ChartBreakLineType` values:

- [Straight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreakLineType.html#Syncfusion_Windows_Forms_Chart_ChartBreakLineType_Straight): Displays straight break lines.
- [Wave](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreakLineType.html#Syncfusion_Windows_Forms_Chart_ChartBreakLineType_Wave): Displays wave-shaped break lines.
- [Randomize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreakLineType.html#Syncfusion_Windows_Forms_Chart_ChartBreakLineType_Randomize): Displays randomized break lines.

The following code example displays straight break lines.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakInfo.LineType =
    ChartBreakLineType.Straight;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakInfo.LineType =
    ChartBreakLineType.Straight

{% endhighlight %}
{% endtabs %}

## Break-line color

The `LineColor` property specifies the color of the axis break lines.

The following code example applies a dark-blue color to the break lines.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakInfo.LineColor =
    Color.DarkBlue;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakInfo.LineColor =
    Color.DarkBlue

{% endhighlight %}
{% endtabs %}

## Break-line width

The `LineWidth` property specifies the width of the axis break lines.

The following code example sets the break-line width to `2`.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakInfo.LineWidth =
    2f;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakInfo.LineWidth =
    2.0F

{% endhighlight %}
{% endtabs %}

## Break-line style

The `LineStyle` property specifies the `DashStyle` used to render the axis break lines.

The following code example displays dashed break lines.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakInfo.LineStyle =
    DashStyle.Dash;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakInfo.LineStyle =
    DashStyle.Dash

{% endhighlight %}
{% endtabs %}

## Break-line spacing

The `LineSpacing` property specifies the spacing between the break lines. The `SpacingColor` property specifies the color displayed within that space.

The following code example customizes the break-line spacing and its color.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakInfo.LineSpacing =
    12;

chartControl.PrimaryYAxis.BreakInfo.SpacingColor =
    Color.LightBlue;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakInfo.LineSpacing =
    12

chartControl.PrimaryYAxis.BreakInfo.SpacingColor =
    Color.LightBlue

{% endhighlight %}
{% endtabs %}

## Access calculated breaks

The [Breaks](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_Breaks) property returns the break ranges calculated or applied to the axis. This property is get-only.

The following code example accesses the calculated axis breaks.

{% tabs %}
{% highlight c# %}

MinMaxInfo[] breaks =
    chartControl.PrimaryYAxis.Breaks;

if (breaks.Length > 0)
{
    MinMaxInfo firstBreak = breaks[0];
}

{% endhighlight %}
{% highlight vb %}

Dim breaks() As MinMaxInfo =
    chartControl.PrimaryYAxis.Breaks

If breaks.Length > 0 Then
    Dim firstBreak As MinMaxInfo =
        breaks(0)
End If

{% endhighlight %}
{% endtabs %}

## Clear chart breaks

The `Clear` method removes the ranges stored in `BreakRanges`. Set `MakeBreaks` to `false` when breaks should no longer be displayed.

The following code example clears and disables the axis breaks.

{% tabs %}
{% highlight c# %}

chartControl.PrimaryYAxis.BreakRanges.Clear();
chartControl.PrimaryYAxis.MakeBreaks = false;

{% endhighlight %}
{% highlight vb %}

chartControl.PrimaryYAxis.BreakRanges.Clear()
chartControl.PrimaryYAxis.MakeBreaks = False

{% endhighlight %}
{% endtabs %}

## Check break-range visibility

The `IsVisible` method determines whether a specified axis value is visible after applying the configured break ranges.

The following code example checks whether the value `100` is visible.

{% tabs %}
{% highlight c# %}

bool isVisible =
    chartControl.PrimaryYAxis.BreakRanges.IsVisible(100);

{% endhighlight %}
{% highlight vb %}

Dim isVisible As Boolean =
    chartControl.PrimaryYAxis.BreakRanges.IsVisible(100)

{% endhighlight %}
{% endtabs %}

## Complete example

The following code example creates a column chart with an automatic Y-axis break and customizes the break-line appearance.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
    "Sales",
    ChartSeriesType.Column);

series.Points.Add(1, 20);
series.Points.Add(2, 25);
series.Points.Add(3, 30);
series.Points.Add(4, 250);
series.Points.Add(5, 270);

chartControl.Series.Add(series);

chartControl.PrimaryXAxis.Title = "Month";
chartControl.PrimaryYAxis.Title = "Sales";
chartControl.Text = "Monthly Sales";

chartControl.PrimaryYAxis.MakeBreaks = true;
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto;

chartControl.PrimaryYAxis.BreakRanges.BreakAmount =
    0.25;

chartControl.PrimaryYAxis.BreakInfo.LineType =
    ChartBreakLineType.Wave;

chartControl.PrimaryYAxis.BreakInfo.LineColor =
    Color.DarkBlue;

chartControl.PrimaryYAxis.BreakInfo.LineWidth =
    2f;

chartControl.PrimaryYAxis.BreakInfo.LineStyle =
    DashStyle.Solid;

chartControl.PrimaryYAxis.BreakInfo.LineSpacing =
    12;

chartControl.PrimaryYAxis.BreakInfo.SpacingColor =
    Color.LightBlue;

chartControl.ShowLegend = false;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Column)

series.Points.Add(1, 20)
series.Points.Add(2, 25)
series.Points.Add(3, 30)
series.Points.Add(4, 250)
series.Points.Add(5, 270)

chartControl.Series.Add(series)

chartControl.PrimaryXAxis.Title = "Month"
chartControl.PrimaryYAxis.Title = "Sales"
chartControl.Text = "Monthly Sales"

chartControl.PrimaryYAxis.MakeBreaks = True
chartControl.PrimaryYAxis.BreakRanges.BreaksMode =
    ChartBreaksMode.Auto

chartControl.PrimaryYAxis.BreakRanges.BreakAmount =
    0.25

chartControl.PrimaryYAxis.BreakInfo.LineType =
    ChartBreakLineType.Wave

chartControl.PrimaryYAxis.BreakInfo.LineColor =
    Color.DarkBlue

chartControl.PrimaryYAxis.BreakInfo.LineWidth =
    2.0F

chartControl.PrimaryYAxis.BreakInfo.LineStyle =
    DashStyle.Solid

chartControl.PrimaryYAxis.BreakInfo.LineSpacing =
    12

chartControl.PrimaryYAxis.BreakInfo.SpacingColor =
    Color.LightBlue

chartControl.ShowLegend = False

{% endhighlight %}
{% endtabs %}

## See also

- [Chart breaks in Windows Forms Chart](https://help.syncfusion.com/windowsforms/chart/chart-axes#chart-breaks)
- [ChartAxis API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html)
- [ChartAxisRange API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisRange.html)
- [ChartAxisBreakInfo API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxisBreakInfo.html)
- [ChartBreaksMode API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreaksMode.html)
- [ChartBreakLineType API reference](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartBreakLineType.html)
- [Syncfusion.Windows.Forms.Chart namespace](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.html)
