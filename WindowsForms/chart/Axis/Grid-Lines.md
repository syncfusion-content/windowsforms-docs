---
layout: post
title: Chart Grid Lines in Windows Forms Chart control | Syncfusion
description: Learn about Chart Grid Lines support in Syncfusion Essential Studio Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Grid Lines in Windows Forms Chart

## Chart Grid Lines

Grid lines are horizontal and vertical lines drawn across the chart area to help users read data values against the axis intervals. The grid lines in the chart can be customized using the following properties.

<table>
<tr>
<th>
ChartAxis Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[DrawGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DrawGrid)'| markdownify }}
</td><td>
Specifies whether to draw the grid lines for the axis.</td></tr>
<tr>
<td>
{{'[GridLineType.ForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_ForeColor)'| markdownify }}
</td><td>
Sets the foreground color of the grid line.</td></tr>
<tr>
<td>
{{'[GridLineType.BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_BackColor)'| markdownify }}
</td><td>
Sets the background color of the grid line.</td></tr>
<tr>
<td>
{{'[GridLineType.DashStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_DashStyle)'| markdownify }}
</td><td>
Sets the dash style used to draw the grid line.</td></tr>
<tr>
<td>
{{'[GridLineType.PenType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_PenType)'| markdownify }}
</td><td>
Sets the pen type used to draw the grid line.</td></tr>
<tr>
<td>
{{'[GridLineType.Width](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_Width)'| markdownify }}
</td><td>
Sets the thickness of the grid line.</td></tr>
</table>

![Chart Axes](Chart-Axes_images/Chart-Axes_img31.jpeg)

The following code snippet illustrates how to enable and customize grid lines on both axes.

{% tabs %}

{% highlight c# %}

//Customizing x-axis grid lines.

this.chartControl1.PrimaryXAxis.DrawGrid = true;

this.chartControl1.PrimaryXAxis.GridLineType.BackColor = System.Drawing.Color.Transparent;

this.chartControl1.PrimaryXAxis.GridLineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot;

this.chartControl1.PrimaryXAxis.GridLineType.ForeColor = System.Drawing.Color.DarkBlue;

this.chartControl1.PrimaryXAxis.GridLineType.Width = 2F;

//Customizing y-axis grid lines.

this.chartControl1.PrimaryYAxis.DrawGrid = true;

this.chartControl1.PrimaryYAxis.GridLineType.BackColor = System.Drawing.Color.OliveDrab;

this.chartControl1.PrimaryYAxis.GridLineType.ForeColor = System.Drawing.Color.DarkOrange;

this.chartControl1.PrimaryYAxis.GridLineType.PenType = System.Drawing.Drawing2D.PenType.LinearGradient;

this.chartControl1.PrimaryYAxis.GridLineType.Width = 2F;

{% endhighlight %}

{% highlight vb %}

'Customizing x-axis grid lines.

Me.chartControl1.PrimaryXAxis.DrawGrid = True

Me.chartControl1.PrimaryXAxis.GridLineType.BackColor = System.Drawing.Color.Transparent

Me.chartControl1.PrimaryXAxis.GridLineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot

Me.chartControl1.PrimaryXAxis.GridLineType.ForeColor = System.Drawing.Color.DarkBlue

Me.chartControl1.PrimaryXAxis.GridLineType.Width = 2F

'Customizing y-axis grid lines.

Me.chartControl1.PrimaryYAxis.DrawGrid = True

Me.chartControl1.PrimaryYAxis.GridLineType.BackColor = System.Drawing.Color.OliveDrab

Me.chartControl1.PrimaryYAxis.GridLineType.ForeColor = System.Drawing.Color.DarkOrange

Me.chartControl1.PrimaryYAxis.GridLineType.PenType = System.Drawing.Drawing2D.PenType.LinearGradient

Me.chartControl1.PrimaryYAxis.GridLineType.Width = 2F

{% endhighlight %}
{% endtabs %}
