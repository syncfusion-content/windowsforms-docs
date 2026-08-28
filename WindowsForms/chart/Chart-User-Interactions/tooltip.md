---
layout: post
title: Tooltip in Windows Forms Chart control | Syncfusion®
description: Tooltip in the Windows Forms Chart displays detailed information about data points on hover, helping users analyze chart data effectively.
platform: windowsforms
control: Chart
documentation: ug
---

# Tooltips in Windows Forms Chart

## Tooltips

Tooltips display additional information when the mouse pointer hovers over chart elements, including the chart area, empty chart regions, and series data points.

### Enable tooltips

The [ShowToolTips](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ShowToolTips) property controls whether tooltips are displayed in the chart. The default value is `false`.

{% tabs %}
{% highlight c# %}
chartControl.ShowToolTips = true;
{% endhighlight %}
{% highlight vb %}
chartControl.ShowToolTips = True
{% endhighlight %}
{% endtabs %}

![Tooltip](../Chart-User-Interactions-Images/tooltip-visible.png)

## Chart tooltip

The [ChartToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ChartToolTip) property specifies the tooltip displayed when the mouse pointer hovers over the Chart control without being positioned over another chart element. The default value is `Empty`.

{% tabs %}
{% highlight c# %}
chartControl.ChartToolTip = "Sales chart";
{% endhighlight %}
{% highlight vb %}
chartControl.ChartToolTip = "Sales chart"
{% endhighlight %}
{% endtabs %}

![Chart tooltip](../Chart-User-Interactions-Images/chart-tooltip.png)

## Chart-area tooltip

The [ChartAreaToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_ChartAreaToolTip) property specifies the tooltip displayed when the mouse pointer hovers over the chart plotting area. The default value is `Empty`.

{% tabs %}
{% highlight c# %}
chartControl.ChartArea.ChartAreaToolTip = "Sales data area";
{% endhighlight %}
{% highlight vb %}
chartControl.ChartArea.ChartAreaToolTip = "Sales data area"
{% endhighlight %}
{% endtabs %}

![Chart-area tooltip](../Chart-User-Interactions-Images/chart-area-tooltip.png)

## Series-point tooltip

The [PointsToolTipFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_PointsToolTipFormat) property specifies the format of the tooltip displayed when the mouse pointer hovers over a data point in the series. The default value is `"{4}"`, which displays the first Y-value of the data point.

The following placeholders can be used:

- `{0}`: Displays the series name.
- `{1}`: Displays the tooltip text defined in the series style.
- `{2}`: Displays the tooltip text defined for an individual data point.
- `{3}`: Displays the X-value of the data point.
- `{4}`: Displays the first Y-value of the data point.
- `{5}`: Displays the second Y-value, when available.
- `{6}` and subsequent placeholders: Display additional Y-values, when available.

The following code example displays the series name, X-value, and first Y-value in the series-point tooltip.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].PointsToolTipFormat =
    "{0} - X: {3}, Y: {4}";
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).PointsToolTipFormat =
    "{0} - X: {3}, Y: {4}"
{% endhighlight %}
{% endtabs %}

![Series-point tooltip](../Chart-User-Interactions-Images/tooltip-series-point.png)

## Tooltip appearance

The [Tooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Tooltip) property provides options to customize the appearance of standard chart tooltips. By default, the property is initialized with a [ChartTooltip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.UI.Xaml.Charts.ChartTooltip.html) instance.

The following code example demonstrates how to customize chart tooltips.

{% tabs %}
{% highlight c# %}
chartControl.Tooltip.BackgroundColor =
    new BrushInfo(Color.White);
chartControl.Tooltip.BorderStyle =
    BorderStyle.FixedSingle;
chartControl.Tooltip.ForeColor =
    Color.Black;
chartControl.Tooltip.Font =
    new Font("Segoe UI", 10);
chartControl.Tooltip.Padding =
    new Padding(4);
{% endhighlight %}
{% highlight vb %}
chartControl.Tooltip.BackgroundColor =
    New BrushInfo(Color.White)
chartControl.Tooltip.BorderStyle =
    BorderStyle.FixedSingle
chartControl.Tooltip.ForeColor =
    Color.Black
chartControl.Tooltip.Font =
    New Font("Segoe UI", 10)
chartControl.Tooltip.Padding =
    New Padding(4)
{% endhighlight %}
{% endtabs %}

![Tooltip appearance](../Chart-User-Interactions-Images/tooltip-appearance.png)

## Fancy toolTip appearance

The [FancyToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_FancyToolTip) property provides options to customize the Fancy ToolTip of a chart series. By default, the property is initialized with a [ChartFancyToolTipInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html) instance.

The following properties are available in the `ChartFancyToolTipInfo` class to customize the appearance of the Fancy ToolTip:

- [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Visible): Controls whether the Fancy ToolTip is displayed.
- [BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_BackColor): Specifies the background color of the Fancy ToolTip.
- [ForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_ForeColor): Specifies the color of the tooltip text.
- [Border](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Border): Provides customization options for the tooltip border, including color, width, and style.
- [Font](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Font): Specifies the font used to render the tooltip text.
- [Shadow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Shadow): Controls the shadow effect displayed around the tooltip.
- [Alignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Alignment): Specifies the alignment of the tooltip content.
- [Image](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Image): Specifies an image to be displayed within the tooltip.
- [ImageAlignment](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_ImageAlignment): Specifies the position of the image relative to the tooltip text.
- [Opacity](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Opacity): Controls the transparency of the Fancy ToolTip.
- [Margin](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Margin): Specifies the spacing between the tooltip content and its border.
- [Padding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Padding): Specifies the internal spacing around the tooltip content.
- [TextFormat](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_TextFormat): Specifies the format used to display the tooltip text.

N> To display the Fancy ToolTip, set the [Visible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFancyToolTipInfo.html#Syncfusion_Windows_Forms_Chart_ChartFancyToolTipInfo_Visible) property to `true`. The default value is `false`.

The following code example demonstrates how to customize the Fancy ToolTip.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].FancyToolTip.Visible = true;

chartControl.Series[0].FancyToolTip.BackColor = Color.LawnGreen;

chartControl.Series[0].FancyToolTip.ForeColor =  Color.Black;

chartControl.Series[0].FancyToolTip.Border.ForeColor = Color.Red;

chartControl.Series[0].FancyToolTip.Border.Width = 1;

{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).FancyToolTip.Visible = True;

chartControl.Series(0).FancyToolTip.BackColor = Color.LawnGreen

chartControl.Series(0).FancyToolTip.ForeColor = Color.Black

chartControl.Series(0).FancyToolTip.Border.ForeColor = Color.Red

chartControl.Series(0).FancyToolTip.Border.Width = 1

{% endhighlight %}
{% endtabs %}

![Fany tooltip in Windows Forms Chart](../Chart-User-Interactions-Images/fancy-tooltip.png)


## See also

- [How to display tooltips in WinForms Chart](https://support.syncfusion.com/kb/article/1178/how-to-display-winforms-chart-tooltips)
