---
layout: post
title: Line Chart in Windows Forms Chart | Syncfusion
description: Line types in the Windows Forms Chart display continuous data trends and changes over time, helping users analyze data progression effectively.
platform: windowsforms
control: Chart
documentation: ug
---

# Line Chart in Windows Forms Charts

## Line chart

A line chart connects data points using straight lines to visualize trends and changes over a continuous range.

The following code example demonstrates how to create a line chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.Line);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.Line);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

' Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.Line)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.Line)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Line Chart in Windows Forms](../Chart-Types_images/windowsforms-line-chart.png)

### Disable line cap

The [DisableLineCap](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartLineConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartLineConfigItem_DisableLineCap) property controls whether line caps are disabled when rendering line and spline series. By default, this property is set to `false`, which renders line caps for line segments.

The following code example demonstrates how to disable line caps using the DisableLineCap property.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.LineItem.DisableLineCap = true;
chartControl.Series[0].Style.Border.Width = 20;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.LineItem.DisableLineCap = True
chartControl.Series(0).Style.Border.Width = 20
{% endhighlight %}
{% endtabs %}

![Line Cap in Windows Forms](../Chart-Types_images/windowsforms-line-chart-disable-line-cap.png)

### Disable line region

The [DisableLineRegion](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartLineConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartLineConfigItem_DisableLineRegion) property specifies whether interactive regions are generated for the line segments connecting adjacent data points in line and spline series. The default value is `false`.

N> When set to true, the line segments remain visible, but their chart regions are disabled.

The following code example demonstrates how to disable line segments using the DisableLineRegion property.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.LineItem.DisableLineRegion = true;
InitializeRegionStatusLabel();
chartControl.ChartRegionMouseMove += ChartControl_ChartRegionMouseMove;

private void ChartControl_ChartRegionMouseMove(
  object sender,
  ChartRegionMouseEventArgs e)
    {
        if (e.Region != null && e.Region.SeriesIndex >= 0)
        {
            regionStatusLabel.Text = "Line region detected";
            regionStatusLabel.BackColor = Color.SeaGreen;
        }
        else
        {
            regionStatusLabel.Text = "No line region detected";
            regionStatusLabel.BackColor = Color.IndianRed;
        }
    }

private Label regionStatusLabel;


private void InitializeRegionStatusLabel()
{
    regionStatusLabel = new Label
    {
        AutoSize = true,
        Text = "Move the mouse over the chart line.",
        Font = new Font("Segoe UI", 9F, FontStyle.Regular),
        Location = new Point(5, 1),
        Padding = new Padding(6, 3, 6, 3),
        ForeColor = Color.White,
        BackColor = Color.SteelBlue,
    };

    this.Controls.Add(regionStatusLabel);
    regionStatusLabel.BringToFront();
}
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.LineItem.DisableLineRegion = True
InitializeRegionStatusLabel()

AddHandler chartControl.ChartRegionMouseMove,
    AddressOf ChartControl_ChartRegionMouseMove

Private regionStatusLabel As Label

Private Sub InitializeRegionStatusLabel()

    regionStatusLabel = New Label With {
    .AutoSize = True,
    .Text = "Move the mouse over the chart line.",
    .Font = New Font("Segoe UI", 9.0F, FontStyle.Regular),
    .Location = New Point(5, 1),
    .Padding = New Padding(6, 3, 6, 3),
    .ForeColor = Color.White,
    .BackColor = Color.SteelBlue
}

    Me.Controls.Add(regionStatusLabel)
    regionStatusLabel.BringToFront()

End Sub

Private Sub ChartControl_ChartRegionMouseMove(
ByVal sender As Object,
ByVal e As ChartRegionMouseEventArgs)

    If e.Region IsNot Nothing AndAlso e.Region.SeriesIndex >= 0 Then
        regionStatusLabel.Text = "Line region detected"
        regionStatusLabel.BackColor = Color.SeaGreen
    Else
        regionStatusLabel.Text = "No line region detected"
        regionStatusLabel.BackColor = Color.IndianRed
    End If

    regionStatusLabel.BringToFront()

End Sub
{% endhighlight %}
{% endtabs %}

![Disable Line Region in Windows Forms](../Chart-Types_images/winforms-chart-line-region.gif)

### Error bars

The [Enabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartErrorBarsConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartErrorBarsConfigItem_Enabled) property controls whether error bars are displayed to indicate the uncertainty range of each data point. The default value is `false`.

N>
- The second Y-value, `Series.Points[i].YValues[1]`, specifies the error range. For example, a value of `5` indicates an error range of `-5` to `+5` from the primary Y-value.
- The [Enabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartErrorBarsConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartErrorBarsConfigItem_Enabled) property also applies to `Column` charts.
- N> [DrawErrorBars](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_DrawErrorBars) property is deprecated. Use the [Enabled](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartErrorBarsConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartErrorBarsConfigItem_Enabled) property instead.

The following code displays error bars for the line series.

{% tabs %}
{% highlight c# %}
ChartSeries series = new ChartSeries(
    "Sales",
    ChartSeriesType.Line);

// The second Y-value indicates the error range.
series.Points.Add(1, new double[] { 20, 5 });
series.Points.Add(2, new double[] { 70, 6 });
series.Points.Add(3, new double[] { 10, 3 });
series.Points.Add(4, new double[] { 40, 6 });

series.Text = series.Name;

// Displays error bars in the Line series.
series.ConfigItems.ErrorBars.Enabled = true;

// Adds the series to the chart.
chartControl.Series.Add(series);
{% endhighlight %}
{% highlight vb %}
' Creates a Line series.
Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Line)

' The second Y-value indicates the error range.
series.Points.Add(1, New Double() {20, 5})
series.Points.Add(2, New Double() {70, 6})
series.Points.Add(3, New Double() {10, 3})
series.Points.Add(4, New Double() {40, 6})

series.Text = series.Name

' Displays error bars in the Line series.
series.ConfigItems.ErrorBars.Enabled = True

' Adds the series to the chart.
chartControl.Series.Add(series)
{% endhighlight %}
{% endtabs %}

![Error Bars in Windows Forms](../Chart-Types_images/windowsforms-error-bars.png)

### Error bar orientation

The [Orientation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartErrorBarsConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartErrorBarsConfigItem_Orientation) property specifies whether error bars are displayed horizontally or vertically. By default, error bars are displayed using the [Vertical](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartOrientation.html#Syncfusion_Windows_Forms_Chart_ChartOrientation_Vertical) orientation.

This property supports the following values:

- [Horizontal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartOrientation.html#Syncfusion_Windows_Forms_Chart_ChartOrientation_Horizontal): Displays the error range along the X-axis.
- [Vertical](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartOrientation.html#Syncfusion_Windows_Forms_Chart_ChartOrientation_Vertical): Displays the error range along the Y-axis.

N> Use error values within the corresponding axis range to prevent clipping.

The following code displays horizontal error bars.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
"Sales",
ChartSeriesType.Line);

// YValues[0] specifies the data value.
// YValues[1] specifies the horizontal error range.
series.Points.Add(1, new double[] { 20, 0.3 });
series.Points.Add(2, new double[] { 70, 0.4 });
series.Points.Add(3, new double[] { 10, 0.2 });
series.Points.Add(4, new double[] { 40, 0.3 });

series.Text = series.Name;

// Enables horizontal error bars.
series.ConfigItems.ErrorBars.Enabled = true;
series.ConfigItems.ErrorBars.Orientation =
    ChartOrientation.Horizontal;
chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Sales",
    ChartSeriesType.Line)

' YValues(0) specifies the data value.
' YValues(1) specifies the error range.
series.Points.Add(1, New Double() {20, 0.3})
series.Points.Add(2, New Double() {70, 0.4})
series.Points.Add(3, New Double() {10, 0.2})
series.Points.Add(4, New Double() {40, 0.3})

' Enables horizontal error bars.
series.ConfigItems.ErrorBars.Enabled = True
series.ConfigItems.ErrorBars.Orientation =
    ChartOrientation.Horizontal

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Error Bars Orientation in Windows Forms](../Chart-Types_images/windowforms-error-bars-orientation.png)

### Hit test radius

The [HitTestRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_HitTestRadius) property specifies the radius around a data point that is considered part of the point during hit testing. Increasing the value makes the data point easier to detect during mouse interactions.

N> The `HitTestRadius` property also applies to `Area`, `HiLo Open Close`, `HiLo`, `Radar`, `Scatter`, `Spline Area`, `Step Area`, `Step Line` charts.

The following code sets the hit-test radius and displays a message when the user clicks within the specified radius of a line chart data point.

{% tabs %}
{% highlight c# %}
// Sets the hit-test radius for the first Line series.
chartControl.Series[0].Style.HitTestRadius = 20f;

// Displays visible symbols at the data points.
firstServer.Style.Symbol.Shape = ChartSymbolShape.Circle;
firstServer.Style.Symbol.Size = new Size(8, 8);
firstServer.Style.Symbol.Color = Color.Black;

// Subscribes to the chart-region click event.
chartControl.ChartRegionClick += chartControl_ChartRegionClick;

private void chartControl_ChartRegionClick(
    object sender,
    ChartRegionMouseEventArgs e)
{
    if (e.Region != null && e.Region.IsChartPoint)
    {
        MessageBox.Show("Point is hit.");
    }
}

{% endhighlight %}
{% highlight vb %}

' Sets the hit-test radius for the first Line series.
chartControl.Series(0).Style.HitTestRadius = 20.0F

' Displays visible symbols at the data points.
firstServer.Style.Symbol.Shape = ChartSymbolShape.Circle
firstServer.Style.Symbol.Size = New Size(8, 8)
firstServer.Style.Symbol.Color = Color.Black

' Subscribes to the chart-region click event.
AddHandler chartControl.ChartRegionClick,
    AddressOf chartControl_ChartRegionClick

Private Sub chartControl_ChartRegionClick(
    sender As Object,
    e As ChartRegionMouseEventArgs)

    If e.Region IsNot Nothing AndAlso e.Region.IsChartPoint Then
        MessageBox.Show("Point is hit.")
    End If
End Sub
{% endhighlight %}
{% endtabs %}

![Hit Test Radius in Windows Forms](../Chart-Types_images/windowsforms-line-hit-test-radius.png)

## Rotated spline chart

The rotated spline chart is similar to an ordinary spline chart. The only difference is that, it would be rotated. It plots one or several series of data, and joins each series by smooth, rotated spline curves instead of straight lines.

The following code example demonstrates how to create a rotated spline line chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.RotatedSpline);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.RotatedSpline);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

' Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.RotatedSpline)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.RotatedSpline)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Rotated Chart in Windows Forms](../Chart-Types_images/windowsforms-rotated-spline-chart.png)

## Step line chart

A step line chart use horizontal and vertical lines to connect data points resulting in a step like progression.

The following code example demonstrates how to create a step line chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.StepLine);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.StepLine);
secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

firstServer.Style.Border.Width = 3;
secondServer.Style.Border.Width = 3;
chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

' Create chart series and add data points into it.

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.StepLine)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.StepLine)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

firstServer.Style.Border.Width = 3
secondServer.Style.Border.Width = 3
chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Step Line Chart in Windows Forms](../Chart-Types_images/windowsforms-step-line-chart.png)

### Inverted

The [Inverted](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStepConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartStepConfigItem_Inverted) property specifies whether the step line is rendered in an inverted direction in a step chart, with `false` used as the default value.

N> The `Inverted` property also applies to `Step Area` charts.

The following code enables inverted step-line rendering.

{% tabs %}
{% highlight c# %}
ChartSeries series = new ChartSeries(
"Server 1",
ChartSeriesType.StepLine);

series.Points.Add(10, 300);
series.Points.Add(20, 600);
series.Points.Add(30, 400);
series.Points.Add(40, 300);
series.Points.Add(50, 400);

chartControl.Series.Add(series);
chartControl.Series[0].ConfigItems.StepItem.Inverted =
    true;
{% endhighlight %}
{% highlight vb %}
Dim series As New ChartSeries(
    "Server 1",
    ChartSeriesType.StepLine)

series.Points.Add(10, 300)
series.Points.Add(20, 600)
series.Points.Add(30, 400)
series.Points.Add(40, 300)
series.Points.Add(50, 400)

chartControl.Series.Add(series)

chartControl.Series(0).ConfigItems.StepItem.Inverted = True
{% endhighlight %}
{% endtabs %}

![Step Line Inverted in Windows Forms](../Chart-Types_images/windowsforms-step-line-inverted.png)

## See also
- [How to display errorbars in WinForms Chart](https://support.syncfusion.com/kb/article/1185/how-to-display-errorbars-in-winforms-chart)