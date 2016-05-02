---
layout: post
title: PivotAxes | Windows Forms | Syncfusion
description: pivotaxes
platform: windowsforms
control: PivotChart
documentation: ug
---

# PivotAxes

PivotCharts typically have two axes that are used to measure and categorize data, a vertical (PrimaryYAxis) axis and a horizontal (PrimaryXAxis) axis. By default, horizontal (PrimaryXAxis ) axis and vertical (PrimaryYAxis) axis are added to the Chart with axis labels, gridlines, and tick lines. You can also customize the axes explicitly by adding axis title or removing gridlines; tick lines that are added to the axis, by default.

PivotChart provides properties to set custom titles for the axes. You can set the title text for an axis by using Title property. Customize this text by using TitleColor and TitleFont properties.



<table>
<tr>
<th>
Chart Axis Properties</th><th>
Description</th></tr>
<tr>
<td>
TitleColor</td><td>
Sets the color for the title text of the axis.</td></tr>
<tr>
<td>
TitleFont</td><td>
Sets the font style for the title text.</td></tr>
</table>


{% highlight c# %}

//Sets custom title for x-axis.

this.pivotChart1.PrimaryXaxis.Title = "x-axis";

this.pivotChart1.PrimaryXaxis.TitleColor = Color.Red;

this.pivotChart1.PrimaryXaxis.TitleFont = new Font("Arial", 10);



//Sets custom title for y-axis in a similar method.

{% endhighlight %}

{% highlight vbnet %}

'Sets custom title for x-axis.

Me.pivotChart1.PrimaryXaxis.Title = "x-axis"

Me.pivotChart1.PrimaryXaxis.TitleColor = Color.Red

Me.pivotChart1.PrimaryXaxis.TitleFont = New Font("Arial", 10)



'Sets custom title for y-axis in a similar method.

{% endhighlight %}

### Chart Grid Lines

The Grid Lines in the PivotChart defines the intervals in the axes that can be customized by using the following properties. 



<table>
<tr>
<th>
Chart Control Properties</th><th>
Description</th></tr>
<tr>
<td>
GridLineType.ForeColor</td><td>
The ForeColor of the line.</td></tr>
<tr>
<td>
GridLineType.BackColor</td><td>
The back color of the line.</td></tr>
<tr>
<td>
GridLineType.DashStyle</td><td>
The DashStyle used for drawing the line.</td></tr>
<tr>
<td>
GridLineType.PenType</td><td>
The PenType used for drawing the line.</td></tr>
<tr>
<td>
GridLineType.Width</td><td>
The thickness of the lines.</td></tr>
</table>


BackColor, DashStyle, ForeColor, PenType and the Width are specified by using the GridLineType property. The following code illustrates how to show the Grid Lines on both axes and how to customize them.

{% highlight c# %}

//Customizes X-Axis Gridlines.

this.chartControl1.PrimaryXAxis.GridLineType.BackColor = System.Drawing.Color.Transparent;

this.chartControl1.PrimaryXAxis.GridLineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot;

this.chartControl1.PrimaryXAxis.GridLineType.ForeColor = System.Drawing.Color.DarkBlue;

this.chartControl1.PrimaryXAxis.GridLineType.Width = 2F;



//Customizes Y-Axis Gridlines.

this.chartControl1.PrimaryYAxis.GridLineType.BackColor = System.Drawing.Color.OliveDrab;

this.chartControl1.PrimaryYAxis.GridLineType.ForeColor = System.Drawing.Color.DarkOrange;

this.chartControl1.PrimaryYAxis.GridLineType.PenType = System.Drawing.Drawing2D.PenType.LinearGradient;

this.chartControl1.PrimaryYAxis.GridLineType.Width = 2F;

{% endhighlight %}

{% highlight vbnet %}

'Customizes X-Axis Gridlines.

Me.chartControl1.PrimaryXAxis.GridLineType.BackColor = System.Drawing.Color.Transparent

Me.chartControl1.PrimaryXAxis.GridLineType.DashStyle = System.Drawing.Drawing2D.DashStyle.DashDotDot

Me.chartControl1.PrimaryXAxis.GridLineType.ForeColor = System.Drawing.Color.DarkBlue

Me.chartControl1.PrimaryXAxis.GridLineType.Width = 2F



'Customizes Y-Axis Gridlines.

Me.chartControl1.PrimaryYAxis.GridLineType.BackColor = System.Drawing.Color.OliveDrab

Me.chartControl1.PrimaryYAxis.GridLineType.ForeColor = System.Drawing.Color.DarkOrange

Me.chartControl1.PrimaryYAxis.GridLineType.PenType = System.Drawing.Drawing2D.PenType.LinearGradient

Me.chartControl1.PrimaryYAxis.GridLineType.Width = 2F

{% endhighlight %}