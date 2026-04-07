---
layout: post
title: Chart Grid Lines in Windows Forms Chart control | Syncfusion
description: Learn about Chart Grid Lines support in Syncfusion Essential Studio Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Grid Lines in Windows Forms Chart

Grid lines are horizontal and vertical lines drawn across the chart area to help users read data values against the axis intervals. 

## Customization
The grid lines in the chart can be customized using the following properties.

- [DrawGrid](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartAxis.html#Syncfusion_Windows_Forms_Chart_ChartAxis_DrawGrid) - Specifies whether or not to draw the grid lines.
- [GridLineType.ForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_ForeColor) - The fore color of the line.
- [GridLineType.BackColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_BackColor) - The back color of the line.
- [GridLineType.DashStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_DashStyle) - The DashStyle to use for drawing the line.
- [GridLineType.PenType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_PenType) - The PenType to use for drawing the line.
- [GridLineType.Width](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.LineInfo.html#Syncfusion_Windows_Forms_Chart_LineInfo_Width) - The thickness of the lines.

The following code snippet illustrates how to enable and customize grid lines on both axes.

{% tabs %}

{% highlight c# %}

// Customizing x-axis grid lines.
this.chartControl1.PrimaryXAxis.DrawGrid = true;
this.chartControl1.PrimaryXAxis.GridLineType.BackColor = System.Drawing.Color.Transparent;
this.chartControl1.PrimaryXAxis.GridLineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot;
this.chartControl1.PrimaryXAxis.GridLineType.ForeColor = System.Drawing.Color.DarkBlue;
this.chartControl1.PrimaryXAxis.GridLineType.Width = 2F;

// Customizing y-axis grid lines.
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

![Chart Axes](Chart-Axes_images/Chart-Axes_img31.jpeg)