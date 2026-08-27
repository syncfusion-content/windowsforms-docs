---
layout: post
title: Trackball in Windows Forms Chart control | Syncfusion®
description: Trackball in the Windows Forms Chart displays contextual information across data points, enabling precise data inspection and comparison.
platform: windowsforms
control: Chart
documentation: ug
---

# Trackball in Windows Forms Chart

## Trackball

The [ChartTrackball](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html) displays information about the data point close to the current mouse position. The closest point can also be highlighted with a symbol or marker. The x values of an axis are determined from the position of the vertical line of the axis, and y values are determined from the points touching the vertical line in the series.

### Enable trackball

The [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCrosshair.html#Syncfusion_Windows_Forms_Chart_ChartCrosshair_Visible) property controls whether the Trackball is displayed in the chart. By default, the Trackball is not displayed.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Visible = true;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Visible = True
{% endhighlight %}
{% endtabs %}

![Trackball Visible in Windows Forms Chart](../Chart-User-Interactions-Images/trackball-visible.png)

### Tooltip appearance

The [Interior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html#Syncfusion_Windows_Forms_Chart_TrackballTooltip_Interior) and [TextColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html#Syncfusion_Windows_Forms_Chart_TrackballTooltip_TextColor) properties customize the background and text colors of the Trackball tooltip.

{% tabs %}
{% highlight c# %}
 chartControl.Trackball.Tooltip.XValueFormat = "MMMM, yyyy";
 chartControl.Trackball.Tooltip.YValueFormat = "n0";
 chartControl.Trackball.Tooltip.CornerRadius = 15;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.Interior =
    New BrushInfo(Color.White)
chartControl.Trackball.Tooltip.TextColor = Color.Black
{% endhighlight %}
{% endtabs %}

![Trackball Visible in Windows Forms Chart](../Chart-User-Interactions-Images/trackball-tooltip.png)

## Display mode

The [DisplayMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html#Syncfusion_Windows_Forms_Chart_ChartTrackball_DisplayMode) property specifies how Trackball tooltips are displayed when the chart contains multiple series.

The supported values are defined in the [TrackballTooltipDisplayMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltipDisplayMode.html) enumeration:

- **Float**: Displays an individual tooltip near the highlighted data point of each series.
- **Group**: Displays the values of all applicable series in a combined tooltip.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.DisplayMode =
    TrackballTooltipDisplayMode.Float;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.DisplayMode =
    TrackballTooltipDisplayMode.Float
{% endhighlight %}
{% endtabs %}

![Trackball Display Mode in Windows Forms Chart](../Chart-User-Interactions-Images/trackball-displaymode.png)

## Trackball line

The [Line](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCrosshair.html#Syncfusion_Windows_Forms_Chart_ChartCrosshair_Line) property controls the appearance of the Trackball line displayed at the current mouse position.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Line.Color = Color.Gray;
chartControl.Trackball.Line.Width = 2;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Line.Color = Color.Gray
chartControl.Trackball.Line.Width = 2
{% endhighlight %}
{% endtabs %}

![Trackball Display Mode in Windows Forms Chart](../Chart-User-Interactions-Images/trackball-line.png)

## Trackball symbol

The [Symbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html#Syncfusion_Windows_Forms_Chart_ChartTrackball_Symbol) property provides options to customize the marker used to highlight the closest data point.

The symbol shape, size, interior color, border color, and border width can be customized.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Symbol.Shape = ChartSymbolShape.Circle;
chartControl.Trackball.Symbol.Size = new Size(12, 12);
chartControl.Trackball.Symbol.Color = Color.CornflowerBlue;
chartControl.Trackball.Symbol.Border.Color = Color.White;
chartControl.Trackball.Symbol.Border.Width = 2;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Symbol.Shape = ChartSymbolShape.Circle
chartControl.Trackball.Symbol.Size = New Size(12, 12)
chartControl.Trackball.Symbol.Color = Color.CornflowerBlue
chartControl.Trackball.Symbol.Border.Color = Color.White
chartControl.Trackball.Symbol.Border.Width = 2
{% endhighlight %}
{% endtabs %}

![Trackball Display Mode in Windows Forms Chart](../Chart-User-Interactions-Images/trackball-symbol.png)


## Axis tooltip

The [AxisTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartCrosshair.html#Syncfusion_Windows_Forms_Chart_ChartCrosshair_AxisTooltip) property provides options to customize the tooltip displayed on the horizontal axis at the current Trackball position.

N> To show the axistooltip enable the [ShowCrosshairTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_ShowCrosshairTooltip) property.

{% tabs %}
{% highlight c# %}
chartControl.Crosshair.AxisTooltip.Border = new ChartLineInfo();

chartControl.Crosshair.AxisTooltip.Border.Color = Color.Green;

chartControl.Crosshair.AxisTooltip.Border.Width = 3

chartControl.Crosshair.AxisTooltip.Interior = new BrushInfo(Color.Red);
chartControl.Crosshair.AxisTooltip.TextColor = Color.White;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.AxisTooltip.TextFormat = "{1}"
chartControl.Trackball.AxisTooltip.XValueFormat = "MMM, yyyy"
chartControl.Trackball.AxisTooltip.CornerRadius = 3
chartControl.Trackball.AxisTooltip.Border.Width = 1
chartControl.Trackball.AxisTooltip.Border.Color = Color.Gray
chartControl.Trackball.AxisTooltip.Interior =
    New BrushInfo(Color.White)
chartControl.Trackball.AxisTooltip.TextColor = Color.Black
{% endhighlight %}
{% endtabs %}

![Trackball Display Mode in Windows Forms Chart](../Chart-User-Interactions-Images/trackball-axis-tooltip.png)

## Trackball events

The Trackball provides rendering events that allow individual tooltips to be customized before they are displayed:

- [TrackballTooltipRendering](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html#Syncfusion_Windows_Forms_Chart_ChartTrackball_TrackballTooltipRendering): Triggered once for each chart series. This event can be used to customize the text, background, border, and text color of an individual series tooltip.
- [AxisTooltipRendering](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html#Syncfusion_Windows_Forms_Chart_ChartTrackball_AxisTooltipRendering): Triggered once for each axis. This event can be used to customize the text and appearance of an individual axis tooltip.

These events are useful when different tooltip styles or text formats are required for individual series or axes.