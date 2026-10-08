---
layout: post
title: Area in Windows Forms Chart | Syncfusion®
description: Area in the Windows Forms Chart defines the plotting region and supports customization of axes, series, and visual elements.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Area in Windows Forms Chart

The [ChartArea](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html) represents the plotting region in which the chart axes, series, and other elements are rendered. This section explains the configurable properties, read-only information, and area-related methods of `ChartArea`.

## Location and Size

Use `Location` and `Size` to specify the position and dimensions of the chart area. Use `MinSize` to define its minimum size.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.Location = new Point(20, 20);
this.chartControl1.ChartArea.Size = new Size(500, 300);
this.chartControl1.ChartArea.MinSize = new SizeF(300, 200);
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.Location = New Point(20, 20)
Me.chartControl1.ChartArea.Size = New Size(500, 300)
Me.chartControl1.ChartArea.MinSize = New SizeF(300, 200)
{% endhighlight %}
{% endtabs %}

The following get-only properties provide calculated information about the chart-area position and size:

* `Left` and `Top` return the coordinates of the upper-left edge.
* `Right` and `Bottom` return the coordinates of the lower-right edge.
* `Center` returns the center point.

The `Width` and `Height` properties can also be used to set the individual dimensions of the chart area.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.Width = 500;
this.chartControl1.ChartArea.Height = 300;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.Width = 500
Me.chartControl1.ChartArea.Height = 300
{% endhighlight %}
{% endtabs %}

## Chart Area Margins

Use `ChartAreaMargins` to specify margins for the complete chart area. Use `ChartPlotAreaMargins` to specify plot-area margins without including the axis-label dimensions. Both properties support negative values.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.ChartAreaMargins =
    new ChartMargins(10, 10, 10, 10);
this.chartControl1.ChartArea.ChartPlotAreaMargins =
    new ChartMargins(5, 5, 5, 5);
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.ChartAreaMargins =
    New ChartMargins(10, 10, 10, 10)
Me.chartControl1.ChartArea.ChartPlotAreaMargins =
    New ChartMargins(5, 5, 5, 5)
{% endhighlight %}
{% endtabs %}

## Bounds and Client Area

Use `BoundsByAxes` to specify whether axis-label dimensions are considered when calculating the rendering bounds. Use `ClientRectangle` to specify the rectangle occupied by the chart area in client coordinates.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.BoundsByAxes = true;
this.chartControl1.ChartArea.ClientRectangle =
    new Rectangle(20, 20, 500, 300);
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.BoundsByAxes = True
Me.chartControl1.ChartArea.ClientRectangle =
    New Rectangle(20, 20, 500, 300)
{% endhighlight %}
{% endtabs %}

`RenderGlobalBounds` is a get-only property that returns the rectangle used to render the chart area in global coordinates.

## Axis Spacing and Layout

Use `AxisSpacing` to specify the spacing between multiple axes rendered on the same side. Use `YAxesLayoutMode` to specify how multiple Y-axes are arranged.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.AxisSpacing = new SizeF(10, 10);
this.chartControl1.ChartArea.YAxesLayoutMode =
    ChartAxesLayoutMode.Stacking;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.AxisSpacing = New SizeF(10, 10)
Me.chartControl1.ChartArea.YAxesLayoutMode =
    ChartAxesLayoutMode.Stacking
{% endhighlight %}
{% endtabs %}

The following get-only properties provide axis information:

* `Axes` returns the collection of axes associated with the chart area. Additional axes can be added or removed, but the primary axes cannot be removed.
* `PrimaryXAxis` returns the primary horizontal axis.
* `PrimaryYAxis` returns the primary vertical axis.
* `AxesInfoBar` returns information about the axes bar representation.
* `XLayouts` and `YLayouts` return the X- and Y-axis layout definitions.

> **Note:** `XLayouts` and `YLayouts` are internal infrastructure properties that are hidden from the designer and IntelliSense. They should not normally be modified directly.

## Chart Area Tooltip

Use `ChartAreaToolTip` to display tooltip text for the chart area.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.ChartAreaToolTip = "Chart plotting area";
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.ChartAreaToolTip = "Chart plotting area"
{% endhighlight %}
{% endtabs %}

## Cursor State

Use `CursorLocation` to specify the cursor location in the chart area. Use `CursorReDraw` to specify whether the cursor must be redrawn.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.CursorLocation = new Point(100, 100);
this.chartControl1.ChartArea.CursorReDraw = true;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.CursorLocation = New Point(100, 100)
Me.chartControl1.ChartArea.CursorReDraw = True
{% endhighlight %}
{% endtabs %}

## Indexed Data and Empty-Point Gaps

Use `IsIndexed` to specify whether the chart area contains indexed data. Set `IsAllowGap` to `true` to display gaps for empty points in indexed data.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.IsIndexed = true;
this.chartControl1.ChartArea.IsAllowGap = true;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.IsIndexed = True
Me.chartControl1.ChartArea.IsAllowGap = True
{% endhighlight %}
{% endtabs %}

## Full-Stack Maximum

Use `FullStackMax` to specify the maximum value used by full-stacking chart types.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.FullStackMax = 100;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.FullStackMax = 100
{% endhighlight %}
{% endtabs %}

## Partial Axis Labels

Use `HidePartialLabels` to hide axis labels that are partially visible in the chart area.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.HidePartialLabels = true;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.HidePartialLabels = True
{% endhighlight %}
{% endtabs %}

## Multiple Pie Series

Use `MultiplePies` to render multiple Pie series in the same chart area.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.MultiplePies = true;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.MultiplePies = True
{% endhighlight %}
{% endtabs %}

## Rendering State

Use `NeedRedraw` to indicate that the chart-area representation must be redrawn. Use `ReDrawAxes` to render axis labels whenever the chart is updated. Use `UpdateClientBounds` to control whether the client bounds are updated.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.NeedRedraw = true;
this.chartControl1.ChartArea.ReDrawAxes = true;
this.chartControl1.ChartArea.UpdateClientBounds = true;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.NeedRedraw = True
Me.chartControl1.ChartArea.ReDrawAxes = True
Me.chartControl1.ChartArea.UpdateClientBounds = True
{% endhighlight %}
{% endtabs %}

### Text Rendering Quality

Use `TextRenderingHint` to specify the text-rendering quality. Its default value is `AntiAlias`.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.TextRenderingHint =
    TextRenderingHint.AntiAlias;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.TextRenderingHint =
    TextRenderingHint.AntiAlias
{% endhighlight %}
{% endtabs %}

### Legacy Appearance

Use `LegacyAppearance` to specify whether the chart area uses the legacy appearance.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.LegacyAppearance = true;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.LegacyAppearance = True
{% endhighlight %}
{% endtabs %}

## Axis Requirements

Use `RequireAxes` to specify whether axes are required for the chart types rendered in the chart area. Use `RequireInvertedAxes` to specify whether inverted axes are required.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.RequireAxes = true;
this.chartControl1.ChartArea.RequireInvertedAxes = false;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.RequireAxes = True
Me.chartControl1.ChartArea.RequireInvertedAxes = False
{% endhighlight %}
{% endtabs %}

## Read-Only Chart Area Information

The following get-only properties expose chart-area information and do not require assignment examples:

* `Chart` returns the chart that owns the chart area.
* `ChartRegions` returns the rendered chart regions.
* `CustomPoints` returns the collection of custom points rendered in the chart area.
* `SeriesParameters` returns the parameters used while rendering chart series.

## Obsolete Properties

`AxesSideBySide` is obsolete. Use `XAxesLayoutMode` and `YAxesLayoutMode` to arrange multiple axes.

{% tabs %}
{% highlight c# %}
this.chartControl1.ChartArea.XAxesLayoutMode =
    ChartAxesLayoutMode.Stacking;
this.chartControl1.ChartArea.YAxesLayoutMode =
    ChartAxesLayoutMode.Stacking;
{% endhighlight %}
{% highlight vb %}
Me.chartControl1.ChartArea.XAxesLayoutMode =
    ChartAxesLayoutMode.Stacking
Me.chartControl1.ChartArea.YAxesLayoutMode =
    ChartAxesLayoutMode.Stacking
{% endhighlight %}
{% endtabs %}

N> `RotateCenter` is also obsolete but is excluded because it applies to 3D rendering.

## Chart Area Methods

The following methods are directly useful for working with chart-area axes, regions, bounds, and cursor symbols. Drawing, measuring, disposal, internal appearance, zoom calculation, and 3D transformation methods are not covered here.

### Get the Rectangle Between Two Axes

Use `GetAxesRect` to retrieve the rectangle that encompasses two specified axes.

{% tabs %}
{% highlight c# %}
RectangleF axesRectangle = ChartArea.GetAxesRect(
    this.chartControl1.PrimaryXAxis,
    this.chartControl1.PrimaryYAxis);
{% endhighlight %}
{% highlight vb %}
Dim axesRectangle As RectangleF = ChartArea.GetAxesRect(
    Me.chartControl1.PrimaryXAxis,
    Me.chartControl1.PrimaryYAxis)
{% endhighlight %}
{% endtabs %}

### Get a Chart Region

Use `GetChartRegion` to retrieve a rendered chart region by its index.

{% tabs %}
{% highlight c# %}
ChartRegion region = this.chartControl1.ChartArea.GetChartRegion(0);
{% endhighlight %}
{% highlight vb %}
Dim region As ChartRegion = Me.chartControl1.ChartArea.GetChartRegion(0)
{% endhighlight %}
{% endtabs %}

### Get Bounds Based on Axes

Use `GetFrontBoundByAxes` to retrieve the front bounds calculated from the chart axes. Pass `true` to include all axes.

{% tabs %}
{% highlight c# %}
RectangleF frontBounds =
    this.chartControl1.ChartArea.GetFrontBoundByAxes(true);
{% endhighlight %}
{% highlight vb %}
Dim frontBounds As RectangleF =
    Me.chartControl1.ChartArea.GetFrontBoundByAxes(True)
{% endhighlight %}
{% endtabs %}

### Get the Axes Associated with a Series

Use `GetXAxis` and `GetYAxis` to retrieve the X- and Y-axes associated with a chart series.

{% tabs %}
{% highlight c# %}
ChartAxis xAxis = this.chartControl1.ChartArea.GetXAxis(series);
ChartAxis yAxis = this.chartControl1.ChartArea.GetYAxis(series);
{% endhighlight %}
{% highlight vb %}
Dim xAxis As ChartAxis = Me.chartControl1.ChartArea.GetXAxis(series)
Dim yAxis As ChartAxis = Me.chartControl1.ChartArea.GetYAxis(series)
{% endhighlight %}
{% endtabs %}

### Set the Cursor Symbol

Use `SetSeriesSymbolForCursor` to set a custom symbol for series points when the interactive cursor moves over the chart area.

{% tabs %}
{% highlight c# %}
ChartSymbolInfo symbolInfo = new ChartSymbolInfo();
this.chartControl1.ChartArea.SetSeriesSymbolForCursor(symbolInfo);
{% endhighlight %}
{% highlight vb %}
Dim symbolInfo As New ChartSymbolInfo()
Me.chartControl1.ChartArea.SetSeriesSymbolForCursor(symbolInfo)
{% endhighlight %}
{% endtabs %}
