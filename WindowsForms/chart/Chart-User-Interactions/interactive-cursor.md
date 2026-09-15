---
layout: post
title: Cursor in Windows Forms Chart control | Syncfusion®
description: Cursor in the Windows Forms Chart provides interactive guide lines for visualizing and inspecting data point values.
platform: windowsforms
control: Chart
documentation: ug
---

# Interactive cursor in Windows Forms Chart

The [ChartInteractiveCursor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) displays movable horizontal and vertical cursor lines in the chart area. It allows users to drag the cursor and dock it to a data point to identify its X and Y values.

An interactive cursor tracks the data points of a specified series and must be added to the [ChartArea.InteractiveCursors](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_InteractiveCursors) collection.

## Add an interactive cursor

The [ChartInteractiveCursor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) class provides the following constructors:

- [ChartInteractiveCursor(ChartSeries)](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor__ctor_Syncfusion_Windows_Forms_Chart_ChartSeries_): Creates an interactive cursor for the specified series.
- [ChartInteractiveCursor(ChartSeries, Color)](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor__ctor_Syncfusion_Windows_Forms_Chart_ChartSeries_System_Drawing_Color_): Creates an interactive cursor for the specified series and applies the specified color.

The following code creates and adds an interactive cursor to the chart area.

{% tabs %}
{% highlight c# %}

ChartInteractiveCursor interactiveCursor =
    new ChartInteractiveCursor(
        chartControl.Series[0],
        Color.Blue);

chartControl.ChartArea.InteractiveCursors.Add(interactiveCursor);

{% endhighlight %}
{% highlight vb %}

Dim interactiveCursor As New ChartInteractiveCursor(
    chartControl.Series(0),
    Color.Blue)

chartControl.ChartArea.InteractiveCursors.Add(interactiveCursor)

{% endhighlight %}
{% endtabs %}

![Interactive Cursor in Windows Forms Chart](../Chart-User-Interactions_Images/Interactive-cursor.png)

## Cursor orientation

The [CursorOrientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_CursorOrientation) property specifies which cursor lines are displayed. It is default value is [Both](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.InteractiveCursorOrientation.html#Syncfusion_Windows_Forms_Chart_InteractiveCursorOrientation_Both).

The [InteractiveCursorOrientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.InteractiveCursorOrientation.html) enumeration supports the following values:

- [Both](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.InteractiveCursorOrientation.html#Syncfusion_Windows_Forms_Chart_InteractiveCursorOrientation_Both): Displays both horizontal and vertical cursor lines.
- [Horizontal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.InteractiveCursorOrientation.html#Syncfusion_Windows_Forms_Chart_InteractiveCursorOrientation_Horizontal): Displays only the horizontal cursor line.
- [Vertical](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.InteractiveCursorOrientation.html#Syncfusion_Windows_Forms_Chart_InteractiveCursorOrientation_Vertical): Displays only the vertical cursor line.

The following code displays both cursor lines.

{% tabs %}
{% highlight c# %}

interactiveCursor.CursorOrientation =
    InteractiveCursorOrientation.Horizontal;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.CursorOrientation =
    InteractiveCursorOrientation.Horizontal

{% endhighlight %}
{% endtabs %}

![Interactive Cursor Orientation in Windows Forms Chart](../Chart-User-Interactions_Images/interactive-cursor-orientation.png)

## Cursor color

The [Color](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) property specifies a common color for the cursor lines.

The [HorizontalCursorColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_HorizontalCursorColor) and [VerticalCursorColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html#Syncfusion_Windows_Forms_Chart_ChartInteractiveCursor_VerticalCursorColor) properties can be used to apply different colors to the individual cursor lines.

The following code applies different colors to the horizontal and vertical cursor lines.

{% tabs %}
{% highlight c# %}

interactiveCursor.HorizontalCursorColor = Color.DarkViolet;
interactiveCursor.VerticalCursorColor = Color.Blue;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.HorizontalCursorColor = Color.DodgerBlue
interactiveCursor.VerticalCursorColor = Color.Blue

{% endhighlight %}
{% endtabs %}

![Interactive Cursor Axis Color in Windows Forms Chart](../Chart-User-Interactions_Images/interactive-cursor-axiscolor.png)

## Move cursor within the chart area

The [MoveToChartArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) property specifies whether the cursor can move within the chart area.

The following code allows the interactive cursor to move within the chart area.

{% tabs %}
{% highlight c# %}

interactiveCursor.MoveToChartArea = true;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.MoveToChartArea = True

{% endhighlight %}
{% endtabs %}

## Snap cursor to data points

The [SnapToPoints](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) property specifies whether the cursor moves to the closest series data point after the mouse is released.

The following code enables snapping to the closest data point.

{% tabs %}
{% highlight c# %}

interactiveCursor.SnapToPoints = false;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.SnapToPoints = False

{% endhighlight %}
{% endtabs %}

## Cursor intervals

The `XInterval` and `YInterval` properties specify the movement intervals of the interactive cursor.

- `XInterval`: Specifies the movement interval along the X-axis.
- `YInterval`: Specifies the movement interval along the Y-axis.

The following code configures the cursor movement intervals.

{% tabs %}
{% highlight c# %}

interactiveCursor.XInterval = 1;
interactiveCursor.YInterval = 10;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.XInterval = 1
interactiveCursor.YInterval = 10

{% endhighlight %}
{% endtabs %}

## Display point symbol

The [ShowPointSymbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) property specifies whether a symbol is displayed at the data point tracked by the cursor.

The following code displays the point symbol.

{% tabs %}
{% highlight c# %}

interactiveCursor.ShowPointSymbol = true;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.ShowPointSymbol = True

{% endhighlight %}
{% endtabs %}

## Cursor position and location

The following properties provide information about the cursor position:

- `XPosition`: Gets or sets the horizontal position of the cursor.
- `YPosition`: Gets or sets the vertical position of the cursor.
- `LineLocation`: Gets or sets the cursor-line location.
- `Location`: Gets the current location of the interactive cursor.

The following code sets the horizontal and vertical cursor positions.

{% tabs %}
{% highlight c# %}

interactiveCursor.XPosition = 200;
interactiveCursor.YPosition = 150;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.XPosition = 200
interactiveCursor.YPosition = 150

{% endhighlight %}
{% endtabs %}

## Tracked series and point

The following read-only properties provide information about the data tracked by the cursor:

- `Series`: Gets the series associated with the interactive cursor.
- `Point`: Gets the data point currently tracked by the cursor.

## Move cursor programmatically

The `HorizontalMove` method moves the vertical cursor line along the X-axis.

- `HorizontalMove(true)`: Moves the cursor to the next data point on the right.
- `HorizontalMove(false)`: Moves the cursor to the next data point on the left.

The `VerticalMove` method moves the horizontal cursor line along the Y-axis.

- `VerticalMove(true)`: Moves the cursor to the next data point above.
- `VerticalMove(false)`: Moves the cursor to the next data point below.

The following code moves the cursor to the next data points along both axes.

{% tabs %}
{% highlight c# %}

interactiveCursor.HorizontalMove(true);
interactiveCursor.VerticalMove(true);

{% endhighlight %}
{% highlight vb %}

interactiveCursor.HorizontalMove(True)
interactiveCursor.VerticalMove(True)

{% endhighlight %}
{% endtabs %}

The cursor can also be moved to the closest data point for a specified axis value.

{% tabs %}
{% highlight c# %}

int xPointIndex =
    interactiveCursor.HorizontalMove(3.0);

int yPointIndex =
    interactiveCursor.VerticalMove(40.0);

{% endhighlight %}
{% highlight vb %}

Dim xPointIndex As Integer =
    interactiveCursor.HorizontalMove(3.0)

Dim yPointIndex As Integer =
    interactiveCursor.VerticalMove(40.0)

{% endhighlight %}
{% endtabs %}

These methods return the index of the closest data point or `-1` when no nearby data point is found.

## Find the closest data point

The `GetClosestXPoint` and `GetClosestYPoint` methods return the index of the data point closest to a specified axis value without requiring directional movement.

- `GetClosestXPoint`: Finds the data point closest to the specified X value.
- `GetClosestYPoint`: Finds the data point closest to the specified Y value.

{% tabs %}
{% highlight c# %}

int xPointIndex =
    interactiveCursor.GetClosestXPoint(3.0);

int yPointIndex =
    interactiveCursor.GetClosestYPoint(40.0);

{% endhighlight %}
{% highlight vb %}

Dim xPointIndex As Integer =
    interactiveCursor.GetClosestXPoint(3.0)

Dim yPointIndex As Integer =
    interactiveCursor.GetClosestYPoint(40.0)

{% endhighlight %}
{% endtabs %}

These methods return `-1` when no nearby data point is found.

## Check a location near the cursor

The `IsXLocation` and `IsYLocation` methods determine whether a specified screen point is near the current cursor position.

- `IsXLocation`: Returns `true` when the X-coordinate is within three pixels of the cursor.
- `IsYLocation`: Returns `true` when the Y-coordinate is within three pixels of the cursor.

{% tabs %}
{% highlight c# %}

Point mousePoint =
    chartControl.PointToClient(Cursor.Position);

bool nearVerticalCursor =
    interactiveCursor.IsXLocation(mousePoint);

bool nearHorizontalCursor =
    interactiveCursor.IsYLocation(mousePoint);

{% endhighlight %}
{% highlight vb %}

Dim mousePoint As Point =
    chartControl.PointToClient(Cursor.Position)

Dim nearVerticalCursor As Boolean =
    interactiveCursor.IsXLocation(mousePoint)

Dim nearHorizontalCursor As Boolean =
    interactiveCursor.IsYLocation(mousePoint)

{% endhighlight %}
{% endtabs %}

## Redraw cursor lines

The [LineRedraw](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartInteractiveCursor.html) property specifies whether the cursor lines must be redrawn when the cursor location changes.

{% tabs %}
{% highlight c# %}

interactiveCursor.LineRedraw = true;

{% endhighlight %}
{% highlight vb %}

interactiveCursor.LineRedraw = True

{% endhighlight %}
{% endtabs %}

## Detect cursor changes

The `Changed` event occurs when an interactive cursor property changes.

{% tabs %}
{% highlight c# %}

interactiveCursor.Changed +=
    InteractiveCursor_Changed;

private void InteractiveCursor_Changed(
    object sender,
    EventArgs e)
{
    ChartInteractiveCursor cursor =
        (ChartInteractiveCursor)sender;

    ChartPoint currentPoint = cursor.Point;
}

{% endhighlight %}
{% highlight vb %}

AddHandler interactiveCursor.Changed,
    AddressOf InteractiveCursor_Changed

Private Sub InteractiveCursor_Changed(
    ByVal sender As Object,
    ByVal e As EventArgs)

    Dim cursor As ChartInteractiveCursor =
        DirectCast(sender, ChartInteractiveCursor)

    Dim currentPoint As ChartPoint =
        cursor.Point

End Sub

{% endhighlight %}
{% endtabs %}

## Manage interactive cursors

The `ChartArea.Cursors` property provides access to the `ChartAreaCursorCollection`. This collection can be used to add, access, insert, or remove interactive cursors.

The following code adds, retrieves, and removes an interactive cursor.

{% tabs %}
{% highlight c# %}

chartControl.ChartArea.Cursors.Add(interactiveCursor);

ChartInteractiveCursor firstCursor =
    chartControl.ChartArea.Cursors[0];

chartControl.ChartArea.Cursors.Remove(
    interactiveCursor);

{% endhighlight %}
{% highlight vb %}

chartControl.ChartArea.Cursors.Add(interactiveCursor)

Dim firstCursor As ChartInteractiveCursor =
    chartControl.ChartArea.Cursors(0)

chartControl.ChartArea.Cursors.Remove(
    interactiveCursor)

{% endhighlight %}
{% endtabs %}

## Complete example

The following code creates a Line series and configures an interactive cursor to track its data points.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
    "Sales",
    ChartSeriesType.Line);

series.Points.Add(1, 20);
series.Points.Add(2, 45);
series.Points.Add(3, 30);
series.Points.Add(4, 70);
series.Points.Add(5, 50);

chartControl.Series.Add(series);

ChartInteractiveCursor interactiveCursor =
    new ChartInteractiveCursor(series);

interactiveCursor.CursorOrientation =
    InteractiveCursorOrientation.Both;

interactiveCursor.HorizontalCursorColor =
    Color.DodgerBlue;

interactiveCursor.VerticalCursorColor =
    Color.Crimson;

interactiveCursor.MoveToChartArea = true;
interactiveCursor.SnapToPoints = true;
interactiveCursor.ShowPointSymbol = true;
interactiveCursor.XInterval = 1;
interactiveCursor.YInterval = 10;

chartControl.ChartArea.Cursors.Add(
    interactiveCursor);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Line)

series.Points.Add(1, 20)
series.Points.Add(2, 45)
series.Points.Add(3, 30)
series.Points.Add(4, 70)
series.Points.Add(5, 50)

chartControl.Series.Add(series)

Dim interactiveCursor As New ChartInteractiveCursor(
    series)

interactiveCursor.CursorOrientation =
    InteractiveCursorOrientation.Both

interactiveCursor.HorizontalCursorColor =
    Color.DodgerBlue

interactiveCursor.VerticalCursorColor =
    Color.Crimson

interactiveCursor.MoveToChartArea = True
interactiveCursor.SnapToPoints = True
interactiveCursor.ShowPointSymbol = True
interactiveCursor.XInterval = 1
interactiveCursor.YInterval = 10

chartControl.ChartArea.Cursors.Add(
    interactiveCursor)

{% endhighlight %}
{% endtabs %}

## See also

- [How to implement interactive cursor in WinForms Chart?](https://support.syncfusion.com/kb/article/1053/how-to-implement-interactive-cursor-in-winforms-chart)
- [How to display the X and Y values while doing MouseMove on the chart?](https://support.syncfusion.com/kb/article/1077/how-to-display-the-x-and-y-values-while-doing-mousemove-on-the-chart)
- [How to trigger the ChartRegionEvents in the WinForms Chart?](https://support.syncfusion.com/kb/article/1194/how-to-trigger-the-chartregionevents-in-the-winforms-chart)
- [How to display WinForms Chart tooltips?](https://support.syncfusion.com/kb/article/1178/how-to-display-winforms-chart-tooltips)
- [How to add and customize symbols in WinForms Chart?](https://support.syncfusion.com/kb/article/1123/how-to-add-and-customize-symbols-in-winforms-chart)
- [How to set custom points in WinForms Chart?](https://support.syncfusion.com/kb/article/1186/how-to-set-custom-points-in-winforms-chart)