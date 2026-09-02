---
layout: post
title: Zooming and Panning in Windows Forms Chart control | Syncfusion
description: Zooming and panning in the Windows Forms Chart enable users to navigate, inspect, and analyze specific data ranges with ease.
platform: windowsforms
control: Chart
documentation: ug
---

# Zooming and Panning in Windows Forms Chart
## Zooming and panning

The Windows Forms Chart supports interactive zooming, scrolling, and panning, allowing users to inspect and navigate through specific portions of chart data.

## Zooming

Zooming can be enabled independently for the horizontal and vertical axes. After zooming, scroll bars can be used to access chart regions outside the visible range.

### Enable zooming

The [EnableXZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_EnableXZooming) and [EnableYZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_EnableYZooming) properties enable zooming along the horizontal and vertical axes, respectively. The default value of both properties is `false`.

The following code example demonstrates how to enable zooming.

{% tabs %}
{% highlight c# %}
chartControl.EnableXZooming = true;
chartControl.EnableYZooming = true;
{% endhighlight %}
{% highlight vb %}
chartControl.EnableXZooming = True
chartControl.EnableYZooming = True
{% endhighlight %}
{% endtabs %}

![Chart before zooming](../Chart-User-Interactions-Images/zoom_selection_1.png)

![Chart after zooming](../Chart-User-Interactions-Images/zoom_selection_2.png)

### Reset on double-click

The [ResetOnDoubleClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ResetOnDoubleClick) property controls whether the chart returns to its original range when the chart area is double-clicked or double-tapped. By default, this property is `false`.

The following code example demonstrates how to reset the chart.

{% tabs %}
{% highlight c# %}
chartControl.ResetOnDoubleClick = true;
{% endhighlight %}
{% highlight vb %}
chartControl.ResetOnDoubleClick = True
{% endhighlight %}
{% endtabs %}

![Zoom reset on double click in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-reset-on-double-click.png)

## Zoom-area appearance

The [Zooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Zooming) property provides access to the appearance settings of the interactive zoom-selection area.

### Zoom-area border

The [Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZooming.html#Syncfusion_Windows_Forms_Chart_ChartZooming_Border) property specifies the line used to draw the border around the selected zoom area. The border can be customized using its width, color, and dash style. By default, a new `LineInfo` instance is used.

The [ShowBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZooming.html#Syncfusion_Windows_Forms_Chart_ChartZooming_ShowBorder) property controls whether the border is displayed. By default, this property is `false`.

N> To display the border, set the [ShowBorder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZooming.html#Syncfusion_Windows_Forms_Chart_ChartZooming_ShowBorder) property to `true`.

The following code example demonstrates how to display and customize the zoom-area border.

{% tabs %}
{% highlight c# %}
chartControl.Zooming.ShowBorder = true;
chartControl.Zooming.Border.Width = 5;
chartControl.Zooming.Border.ForeColor = Color.Green;
chartControl.Zooming.Border.BackColor = Color.Transparent;
chartControl.Zooming.Border.DashStyle = DashStyle.Solid;

{% endhighlight %}
{% highlight vb %}

chartControl.Zooming.ShowBorder = True
chartControl.Zooming.Border.Width = 5
chartControl.Zooming.Border.ForeColor = Color.Green
chartControl.Zooming.Border.BackColor = Color.Transparent
chartControl.Zooming.Border.DashStyle = DashStyle.Solid

{% endhighlight %}
{% endtabs %}

![Zoom area border in Windows Forms Chart](../Chart-User-Interactions-Images/zoom_border.png)

### Zoom-area interior

The [Interior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZooming.html#Syncfusion_Windows_Forms_Chart_ChartZooming_Interior) property specifies the brush used to fill the selected zoom area. The brush can use foreground and background colors with a gradient style. Its default brush is a `BrushInfo` initialized with `SystemColors.Highlight`.

The [Opacity](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZooming.html#Syncfusion_Windows_Forms_Chart_ChartZooming_Opacity) property controls the transparency of the selected zoom area. The default opacity value is `0.5f`.

The following code example demonstrates how to customize the zoom-area interior and opacity.

{% tabs %}
{% highlight c# %}
chartControl.Zooming.Opacity = 0.7f;
chartControl.Zooming.Interior = new BrushInfo(
    GradientStyle.ForwardDiagonal,
    Color.Red,
    Color.Yellow);
{% endhighlight %}
{% highlight vb %}
chartControl.Zooming.Opacity = 0.7F
chartControl.Zooming.Interior = New BrushInfo(
    GradientStyle.ForwardDiagonal,
    Color.Red,
    Color.Yellow)
{% endhighlight %}
{% endtabs %}

![Zoom area interior in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-area-interior.png)

## Programmatic zooming

Programmatic zooming allows the zoom level and visible position to be configured without requiring mouse interaction.

### Zoom factor

The [ZoomFactorX](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomFactorX) and [ZoomFactorY](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomFactorY) properties specify the portion of the horizontal and vertical ranges displayed after zooming. The default value of both properties is `1.0`.

A value of `1` displays the original range. A smaller value displays a smaller portion of the range and produces a higher zoom level.

The following code example demonstrates how to set the zoom factor.

{% tabs %}
{% highlight c# %}
chartControl.ZoomFactorX = 0.5;
chartControl.ZoomFactorY = 0.5;
{% endhighlight %}
{% highlight vb %}
chartControl.ZoomFactorX = 0.5
chartControl.ZoomFactorY = 0.5
{% endhighlight %}
{% endtabs %}

![Zoom area interior in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-factor.png)

### Zoom position

The [ZoomPositionX](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomPositionX) and [ZoomPositionY](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomPositionY) properties specify which portion of the horizontal and vertical ranges is displayed after zooming. The default value of both properties is `0.0`.

The following code example demonstrates how to set the zoom position.

{% tabs %}
{% highlight c# %}
chartControl.ZoomFactorX = 0.5;
chartControl.ZoomFactorY = 0.5;
chartControl.ZoomPositionX = 0.25;
chartControl.ZoomPositionY = 0.25;
{% endhighlight %}
{% highlight vb %}
chartControl.ZoomFactorX = 0.5
chartControl.ZoomFactorY = 0.5
chartControl.ZoomPositionX = 0.25
chartControl.ZoomPositionY = 0.25
{% endhighlight %}
{% endtabs %}

![Zoom position in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-factor.png)

### Minimum zoom factor

The [MinZoomFactorX](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_MinZoomFactorX) and [MinZoomFactorY](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_MinZoomFactorY) properties limit how far users can zoom into the chart along each axis. The default value of both properties is `0.01`.

The following code example demonstrates how to set the minimum zoom factor.

{% tabs %}
{% highlight c# %}
chartControl.MinZoomFactorX = 0.2;
chartControl.MinZoomFactorY = 0.2;
{% endhighlight %}
{% highlight vb %}
chartControl.MinZoomFactorX = 0.2
chartControl.MinZoomFactorY = 0.2
{% endhighlight %}
{% endtabs %}

![Min Zoom Factor in Windows Forms Chart](../Chart-User-Interactions-Images/minimum-zoom-factor.png)

### Zoom-out increment

The [ZoomOutIncrement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomOutIncrement) property specifies the amount by which the chart zooms out for each zoom-out action. The default value of this property is `0.2`.

The following code example demonstrates how to set the zoom-out increment.

{% tabs %}
{% highlight c# %}
chartControl.ZoomOutIncrement = 0.5;
{% endhighlight %}
{% highlight vb %}
chartControl.ZoomOutIncrement = 0.5
{% endhighlight %}
{% endtabs %}

![Zoom Out Increment in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-out-increment.png)

## Keyboard zooming and navigation

The [KeyZoom](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_KeyZoom) property enables keyboard-based zooming and navigation. By default, this property is `false`.

The following properties specify the keyboard shortcuts used to control a zoomed chart:

- [ZoomIn](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomIn): Zooms into the chart.
- [ZoomOut](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomOut): Zooms out of the chart.
- [ZoomLeft](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomLeft): Moves the visible zoomed range to the left.
- [ZoomRight](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomRight): Moves the visible zoomed range to the right.
- [ZoomUp](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomUp): Moves the visible zoomed range upward.
- [ZoomDown](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomDown): Moves the visible zoomed range downward.
- [ZoomCancel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomCancel): Cancels the current zoom operation.

{% tabs %}
{% highlight c# %}
chartControl.KeyZoom = true;
chartControl.ZoomIn = Keys.Add;
chartControl.ZoomOut = Keys.Subtract;
chartControl.ZoomLeft = Keys.Left;
chartControl.ZoomRight = Keys.Right;
chartControl.ZoomUp = Keys.Up;
chartControl.ZoomDown = Keys.Down;
chartControl.ZoomCancel = Keys.Escape;
{% endhighlight %}
{% highlight vb %}
chartControl.KeyZoom = True
chartControl.ZoomIn = Keys.Add
chartControl.ZoomOut = Keys.Subtract
chartControl.ZoomLeft = Keys.Left
chartControl.ZoomRight = Keys.Right
chartControl.ZoomUp = Keys.Up
chartControl.ZoomDown = Keys.Down
chartControl.ZoomCancel = Keys.Escape
{% endhighlight %}
{% endtabs %}

## Zoom type

The [ZoomType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ZoomType) property specifies how users zoom the chart. The default zoom type is `Selection`.

The `ZoomType` property supports the following values:

- [Selection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ZoomType.html#Syncfusion_Windows_Forms_Chart_ZoomType_Selection): Zooms into a range selected by dragging over the chart area.
- [MouseWheelZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ZoomType.html#Syncfusion_Windows_Forms_Chart_ZoomType_MouseWheelZooming): Zooms according to mouse-wheel movement.
- [PinchZooming](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ZoomType.html#Syncfusion_Windows_Forms_Chart_ZoomType_PinchZooming): Zooms according to pinch and spread gestures on touch-enabled devices.

### Selection zooming

Selection zooming allows users to drag over the chart area and zoom into the selected range.

{% tabs %}
{% highlight c# %}
chartControl.ZoomType = ZoomType.Selection;
{% endhighlight %}
{% highlight vb %}
chartControl.ZoomType = ZoomType.Selection
{% endhighlight %}
{% endtabs %}

### Mouse-wheel zooming

Mouse-wheel zooming allows users to zoom in or out by rotating the mouse wheel over the chart area.

{% tabs %}
{% highlight c# %}
chartControl.ZoomType = ZoomType.MouseWheelZooming;
{% endhighlight %}
{% highlight vb %}
chartControl.ZoomType = ZoomType.MouseWheelZooming
{% endhighlight %}
{% endtabs %}

### Pinch zooming

Pinch zooming allows users to zoom the chart using pinch and spread gestures on touch-enabled devices.

**Spread**

![Chart Runtime](../Chart-User-Interactions-Images/user_interaction_img3.png)

**Pinch**

![Chart Runtime](../Chart-User-Interactions-Images/user_interaction_img4.png)

{% tabs %}
{% highlight c# %}
chartControl.EnableXZooming = true;
chartControl.EnableYZooming = true;
chartControl.ZoomType = ZoomType.PinchZooming;
{% endhighlight %}
{% highlight vb %}
chartControl.EnableXZooming = True
chartControl.EnableYZooming = True
chartControl.ZoomType = ZoomType.PinchZooming
{% endhighlight %}
{% endtabs %}

## Scrolling

Scrolling allows users to navigate through chart regions that become hidden after zooming.

### Show scroll bars

The [ShowScrollBars](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowScrollBars) property controls whether scroll bars are displayed for navigating through the zoomed chart. The default value of this property is `true`.

The following code example demonstrates how to hide scroll bars.


{% tabs %}
{% highlight c# %}
chartControl.ShowScrollBars = false;
{% endhighlight %}
{% highlight vb %}
chartControl.ShowScrollBars = False
{% endhighlight %}
{% endtabs %}

![Zoom Show Scroll Bars in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-show-toolbars.png)

### Scroll precision

The [ScrollPrecision](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ScrollPrecision) property specifies the movement precision of the chart scroll bars. The default value of this property is `100`.

The following code example demonstrates how to set the scroll precision.

{% tabs %}
{% highlight c# %}
chartControl.ScrollPrecision = 20;
{% endhighlight %}
{% highlight vb %}
chartControl.ScrollPrecision = 20
{% endhighlight %}
{% endtabs %}

![Zoom Scroll Precision in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-precision.png)

## Panning

Panning allows users to drag a zoomed chart to navigate through hidden data ranges. The chart must be zoomed before panning can produce a visible effect.

### Enable panning

The [MouseAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_MouseAction) property enables mouse-based panning. The chart uses `Zooming` as the default mouse action. 

The [ZoomActions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ZoomActions) property controls panning independently for each axis. The default value of this property is `None`.

The supported values are defined in the [ChartZoomingAction](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZoomingAction.html) enumeration:

- [Panning](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZoomingAction.html#Syncfusion_Windows_Forms_Chart_ChartZoomingAction_Panning): Enables panning along the corresponding axis.
- [None](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartZoomingAction.html#Syncfusion_Windows_Forms_Chart_ChartZoomingAction_None): Disables panning along the corresponding axis.

Press and hold the left mouse button within the zoomed chart area, and then drag the chart to navigate through hidden data ranges.

N> Panning works only after the chart has been zoomed. Enable zooming for the required axes before enabling panning.

{% tabs %}
{% highlight c# %}
chartControl.EnableXZooming = true;
chartControl.EnableYZooming = true;

// Applies an initial zoom so that panning can be demonstrated.
chartControl.ZoomFactorX = 0.5;
chartControl.ZoomFactorY = 0.5;

chartControl.MouseAction = ChartMouseAction.Panning;
chartControl.PrimaryXAxis.ZoomActions = ChartZoomingAction.Panning;
chartControl.PrimaryYAxis.ZoomActions = ChartZoomingAction.Panning;
{% endhighlight %}
{% highlight vb %}
chartControl.EnableXZooming = True
chartControl.EnableYZooming = True

' Applies an initial zoom so that panning can be demonstrated.
chartControl.ZoomFactorX = 0.5
chartControl.ZoomFactorY = 0.5

chartControl.MouseAction = ChartMouseAction.Panning
chartControl.PrimaryXAxis.ZoomActions = ChartZoomingAction.Panning
chartControl.PrimaryYAxis.ZoomActions = ChartZoomingAction.Panning
{% endhighlight %}
{% endtabs %}

![Panning in Windows Forms Chart](../Chart-User-Interactions-Images/panning.png)

## Formatted labels in a zoomed DateTime axis

The [SmartDateZoom](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_SmartDateZoom) property enables formatted axis labels when a DateTime axis is zoomed.  You can set any one of the following custom label formats to the chart axis.

- SmartDateZoomDayLevelLabelFormat
- SmartDateZoomYearLevelLabelFormat
- SmartDateZoomWeekLevelLabelFormat
- SmartDateZoomSecondLevelLabelFormat
- SmartDateZoomMonthLevelLabelFormat
- SmartDateZoomHourLevelLabelFormat
- SmartDateZoomMinuteLevelLabelFormat

N> The axis value type must be set to `DateTime` to use smart date labels.

{% tabs %}
{% highlight c# %}
chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.SmartDateZoom = true;
chartControl.PrimaryXAxis.SmartDateZoomDayLevelLabelFormat = "dd MM/yy HH.00";
{% endhighlight %}
{% highlight vb %}
chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.SmartDateZoom = True
chartControl.PrimaryXAxis.SmartDateZoomDayLevelLabelFormat = "dd MM/yy HH.00"
{% endhighlight %}
{% endtabs %}

![Zoom Format Label in Windows Forms Chart](../Chart-User-Interactions-Images/zoom-data-time.png){height:"350", width="350"}

## See also

- [How to hide the Chart ZoomButton](https://help.syncfusion.com/windowsforms/chart/faq/how-to-hide-the-chart-zoombutton)
- [How to enable zooming with scrollbars in WinForms Chart](https://support.syncfusion.com/kb/article/4129/how-to-enable-zooming-with-scrollbars-in-syncfusion-winforms-chart)
- [How to implement zooming with keyboard shortcuts in WinForms Chart](https://support.syncfusion.com/kb/article/3871/how-to-implement-zooming-with-keyboard-shortcuts-in-winforms-chart)
 - [How to display the scrollbar even after clicking the reset button in a WinForms Chart](https://support.syncfusion.com/kb/article/6700/how-to-display-the-scrollbar-even-after-clicking-the-reset-button-in-a-winforms-chart)
