---
layout: post
title: Trackball in WPF Windows Forms Chart control | Syncfusion®
description: Trackball in the Windows Forms Chart displays contextual information across data points, enabling precise data inspection and comparison.
platform: windowsforms
control: SfChart
documentation: ug
---

# TrackBall in Windows Forms Chart
## Trackball

The [Trackball](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Trackball) displays information about the data point closest to the current mouse position. A line indicates the current X-axis position, while a symbol highlights the corresponding data point in each series.

### Enable trackball

The [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.html) property controls whether the trackball is displayed in the chart.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Visible = true;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Visible = True
{% endhighlight %}
{% endtabs %}

## Trackball tooltip

The [Tooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html) property provides options to customize the tooltip displayed for the data point closest to the current mouse position.

### Text format

The [TextFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html) property specifies the format used to display the X-value and Y-value of the data point in the trackball tooltip.

The following placeholders can be used:

- `{1}`: Represents the X-value of the data point.
- `{2}`: Represents the Y-value of the data point.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Tooltip.TextFormat = "{1} : {2}";
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.TextFormat = "{1} : {2}"
{% endhighlight %}
{% endtabs %}

### X-value format

The [XValueFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html) property specifies the format applied to X-values in the trackball tooltip.

For an X-axis containing `DateTime` values, a standard date-and-time format can be used.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Tooltip.XValueFormat = "MMM, yyyy";
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.XValueFormat = "MMM, yyyy"
{% endhighlight %}
{% endtabs %}

### Y-value format

The [YValueFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html) property specifies the numeric format applied to Y-values in the trackball tooltip.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Tooltip.YValueFormat = "n0";
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.YValueFormat = "n0"
{% endhighlight %}
{% endtabs %}

### Corner radius

The [CornerRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html) property specifies the radius used to render rounded corners for the trackball tooltip.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Tooltip.CornerRadius = 3;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.CornerRadius = 3
{% endhighlight %}
{% endtabs %}

### Border width

The [Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltip.html) property provides access to the trackball tooltip border settings, including its width, color, and style.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Tooltip.Border.Width = 1;
chartControl.Trackball.Tooltip.Border.Color = Color.Gray;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.Border.Width = 1
chartControl.Trackball.Tooltip.Border.Color = Color.Gray
{% endhighlight %}
{% endtabs %}

### Tooltip appearance

The trackball tooltip background and text colors can be customized using the `Interior` and `TextColor` properties.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Tooltip.Interior =
    new BrushInfo(Color.White);
chartControl.Trackball.Tooltip.TextColor = Color.Black;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Tooltip.Interior =
    New BrushInfo(Color.White)
chartControl.Trackball.Tooltip.TextColor = Color.Black
{% endhighlight %}
{% endtabs %}

## Display mode

The [DisplayMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html) property specifies how trackball tooltips are displayed when the chart contains multiple series.

The supported values are defined in the [TrackballTooltipDisplayMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.TrackballTooltipDisplayMode.html) enumeration:

- **Float**: Displays an individual tooltip for the closest data point in each series.
- **Group**: Combines the tooltips for all series into a single grouped tooltip.

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

## Trackball line

The [Line](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.html) property controls the appearance of the trackball line displayed at the current mouse position.

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

## Trackball symbol

The [Symbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html) property provides options to customize the marker used to highlight the closest data point.

The symbol shape, size, interior color, border color, and border width can be customized.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Symbol.Shape =
    ChartSymbolShape.Circle;
chartControl.Trackball.Symbol.Size =
    new Size(12, 12);
chartControl.Trackball.Symbol.Color =
    Color.CornflowerBlue;
chartControl.Trackball.Symbol.Border.Color =
    Color.White;
chartControl.Trackball.Symbol.Border.Width = 2;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Symbol.Shape =
    ChartSymbolShape.Circle
chartControl.Trackball.Symbol.Size =
    New Size(12, 12)
chartControl.Trackball.Symbol.Color =
    Color.CornflowerBlue
chartControl.Trackball.Symbol.Border.Color =
    Color.White
chartControl.Trackball.Symbol.Border.Width = 2
{% endhighlight %}
{% endtabs %}

## Axis tooltip

The [AxisTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.html) property provides options to customize the tooltip displayed on the horizontal axis at the current trackball position.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.AxisTooltip.TextFormat = "{1}";
chartControl.Trackball.AxisTooltip.XValueFormat = "MMM, yyyy";
chartControl.Trackball.AxisTooltip.CornerRadius = 3;
chartControl.Trackball.AxisTooltip.Border.Width = 1;
chartControl.Trackball.AxisTooltip.Border.Color = Color.Gray;
chartControl.Trackball.AxisTooltip.Interior =
    new BrushInfo(Color.White);
chartControl.Trackball.AxisTooltip.TextColor = Color.Black;
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

## Complete trackball configuration

The following code configures the trackball based on the settings shown in the Trackball Settings panel.

{% tabs %}
{% highlight c# %}
chartControl.Trackball.Visible = true;

chartControl.Trackball.Tooltip.TextFormat = "{1} : {2}";
chartControl.Trackball.Tooltip.XValueFormat = "MMM, yyyy";
chartControl.Trackball.Tooltip.YValueFormat = "n0";
chartControl.Trackball.Tooltip.CornerRadius = 3;
chartControl.Trackball.Tooltip.Border.Width = 1;

chartControl.Trackball.DisplayMode =
    TrackballTooltipDisplayMode.Float;
{% endhighlight %}
{% highlight vb %}
chartControl.Trackball.Visible = True

chartControl.Trackball.Tooltip.TextFormat = "{1} : {2}"
chartControl.Trackball.Tooltip.XValueFormat = "MMM, yyyy"
chartControl.Trackball.Tooltip.YValueFormat = "n0"
chartControl.Trackball.Tooltip.CornerRadius = 3
chartControl.Trackball.Tooltip.Border.Width = 1

chartControl.Trackball.DisplayMode =
    TrackballTooltipDisplayMode.Float
{% endhighlight %}
{% endtabs %}

Move the mouse pointer over the chart area to display the trackball line, highlighting symbol, and tooltip for the closest data point.
![Chart before zooming](../Chart-User-Interactions-Images/trackball.jpg)

## Trackball events

The trackball provides rendering events that allow tooltips to be customized individually before they are displayed:

- [TrackballTooltipRendering](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html#Syncfusion_Windows_Forms_Chart_ChartTrackball_TrackballTooltipRendering): Triggered once for each chart series. It can be used to customize the text, background, border, and text color of an individual series tooltip.
- [AxisTooltipRendering]((https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartTrackball.html#Syncfusion_Windows_Forms_Chart_ChartTrackball_TrackballTooltipRendering)): Triggered once for each axis. It can be used to customize the text and appearance of individual axis tooltips.

These events are useful when different tooltip styles or text formats are required for individual series or axes.

## See also

- [Trackball in Windows Forms Chart](https://help.syncfusion.com/windowsforms/chart/runtime-features#trackball)
- [How to display tooltips in WinForms Chart](https://support.syncfusion.com/kb/article/1178/how-to-display-winforms-chart-tooltips)