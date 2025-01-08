---
layout: post
title: Improving Performance in Windows Forms Chart control | Syncfusion
description: Learn about Improving Performance support in Syncfusion® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Improving Performance in Windows Forms Chart

**Properties**

<table>
<tr>
<th>
Chart control Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[ChartControl.ImprovePerformance](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ImprovePerformance)'| markdownify }}

</td>
<td>
Instructs the chart to calculate the axes ranges only before painting and not at every series adding or moving. Performance of a Chart with large number of series will be improved significantly, if this property is enabled. By default this property is false.</td></tr>
<tr>
<td>
{{'[CalcRegions](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_CalcRegions)'| markdownify }}</td><td>
This property controls the Tooltips, AutoHighlighting properties and RegionHit events. If these properties and events are not used, this property can be set to false for better performance. Default value of this property is true.</td></tr>
<tr>
<td>
{{'[ChartSeries.EnableStyles](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_EnableStyles)'| markdownify }}
</td><td>
Disabling this property will disable the point symbols and point text which speeds up the chart.</td></tr>
<tr>
<td>
{{'[ChartSeries.Style.DisplayShadow](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_DisplayShadow)'| markdownify }}</td><td>
Setting this property to false will not render the series with shadow, which will increase the speed of the chart. By default this property is set to false.</td></tr>
<tr>
<td>
{{'[Indexed](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Indexed)'| markdownify }}
</td><td>
The chart renders faster if the series is not indexed. This of course, may or may not be possible in all cases. By default this property is false.</td></tr>
<tr>
<td>
{{'[BackInterior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_BackInterior)'| markdownify }}
</td><td>
The background style for the Chart control is specified using this property and if this property is not set with gradient or pattern style, will help improve the performance of the chart.</td></tr>
<tr>
<td>
{{'[ChartArea.BackInterior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartArea.html#Syncfusion_Windows_Forms_Chart_ChartArea_BackInterior)'| markdownify }}
</td><td>
This property sets the back color for the chart area. If not set with gradient or pattern style, will help improve the performance of the chart.</td></tr>
<tr>
<td>
{{'[ChartInterior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ChartInterior)'| markdownify }}
</td><td>
This property fills the chart interior. If this property is not set with gradient or pattern style, will improve the performance of the chart.</td></tr>
</tr>
</table>

**Methods**

<table>
<tr>
<td>
BeginUpdate and EndUpdate
</td>
<td>
Encapsulate your "data points adding code" within {{'[BeginUpdate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_BeginUpdate)'| markdownify }} and {{'[EndUpdate](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_EndUpdate)'| markdownify }} to improve Chart initialization speed. 
</td>
</tr>
</table>

See the example code below.

{% tabs %}  

{% highlight c# %}

// Improves the performance of the chart when a large number of series are used.

this.chartControl1.ImprovePerformance = true;

this.chartControl1.CalcRegions = false;

this.chartControl1.Series[0].EnableStyles = false;

this.chartControl1.Series[0].Style.DisplayShadow = false;

this.chartControl1.Indexed = true;

//BeginUpdate and EndUpdate methods

private DataModel datamodel1;

ChartSeries series = new ChartSeries("Line 1", ChartSeriesType.Line);

this.chartControl1.BeginUpdate();

// Add a whole bunch of points to the series like this: series.Points.Add(1, 10), etc.

this.chartControl1.EndUpdate();

{% endhighlight %}

{% highlight vb %}

' Improves the performance of the chart when a large number of series are used.

Me.chartControl1.ImprovePerformance = True

Me.chartControl1.CalcRegions = False

Me.chartControl1.Series[0].EnableStyles = False

Me.chartControl1.Series[0].Style.DisplayShadow = False

Me.chartControl1.Indexed = True

'BeginUpdate and EndUpdate methods

Private datamodel1 As DataModel

Private series As New ChartSeries("Line 1", ChartSeriesType.Line)

Me.chartControl1.BeginUpdate()

'Add a whole bunch of points to the series like this: series.Points.Add(1, 10), etc.

Me.chartControl1.EndUpdate()

{% endhighlight %}
{% endtabs %}
