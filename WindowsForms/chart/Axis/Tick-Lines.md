---
layout: post
title: Chart Axes in Windows Forms Chart control | Syncfusion
description: Learn about Chart Axes support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Axes in Windows Forms Chart

## Axis Ticks

### Major Ticks

Major ticks are rendered automatically at the intersection of an axis with the interval grid lines. The following properties allow you to customize the appearance and behavior of the major ticks.

<table>
<tr>
<th>
ChartAxis Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[TickSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TickSize)'| markdownify }}
</td><td>
Specifies the width and height of the tick rectangle. Setting this to a zero size is also a convenient way to hide the ticks. The default value is {1, 1}.</td></tr>
<tr>
<td>
{{'[TickColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TickColor)'| markdownify }}
</td><td>
Sets the color of the tick mark. The default value is <b>System.ControlText</b>.</td></tr>
<tr>
<td>

{{'[TickLabelGridPadding](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TickLabelGridPadding)'| markdownify }}
</td><td>
Sets the padding between the tick mark and the axis label. The default value is <b>5</b>.</td></tr>
<tr>
<td>
{{'[TickDrawingOperationMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_TickLabelsDrawingMode)'| markdownify }}
</td><td>
Defines the number of ticks to render while zooming.<ul><li><b>NumberOfIntervalsFixed</b> - The number of visible intervals remains constant while zooming. As you zoom in, the total number of intervals increases.</li><li><b>IntervalFixed</b> - The total number of intervals remains constant. As you zoom in, fewer intervals are visible at a time.</li></ul></td></tr>
</table>

![Chart Axes](Chart-Axes_images/Chart-Axes_img24.jpeg)

{% tabs %}

{% highlight c# %}

this.chartControl1.PrimaryXAxis.TickSize = new Size(3,3);

this.chartControl1.PrimaryXAxis.TickColor = Color.DarkOrange;

this.chartControl1.PrimaryXAxis.TickLabelGridPadding = 8F;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.TickSize = new Size(3,3)

Me.chartControl1.PrimaryXAxis.TickColor = Color.DarkOrange

Me.chartControl1.PrimaryXAxis.TickLabelGridPadding = 8F

{% endhighlight %}
{% endtabs %}

### Minor Ticks

Minor ticks are tick marks displayed between major ticks. They are not rendered by default. Use the following properties to enable minor ticks and define their frequency.

<table>
<tr>
<th>
ChartAxis Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[SmallTicksPerInterval](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_SmallTicksPerInterval)'| markdownify }}
</td><td>
Specifies the number of minor tick marks to draw on the axis between each interval. Set this to a value greater than zero to enable minor ticks.</td></tr>
<tr>
<td>
{{'[SmallTickSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_SmallTickSize)'| markdownify }}
</td><td>
Specifies the width and height of the minor tick rectangle.</td></tr>
</table>

![Chart Axes](Chart-Axes_images/Chart-Axes_img25.jpeg)

{% tabs %}

{% highlight c# %}

this.chartControl1.PrimaryXAxis.SmallTickSize = new System.Drawing.Size(2, 2);

this.chartControl1.PrimaryXAxis.SmallTicksPerInterval = 1;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.PrimaryXAxis.SmallTickSize = New System.Drawing.Size(2, 2)

Me.chartControl1.PrimaryXAxis.SmallTicksPerInterval = 1

{% endhighlight %}
{% endtabs %}