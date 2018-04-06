---
layout: post
title: Improving-Performance | Windows Forms | Syncfusion
description: improving performance
platform: windowsforms
control: Chart
documentation: ug
---

# Improving Performance

_Properties and Methods_

<table>
<tr>
<th>
Chart control Property</th><th>
Description</th></tr>
<tr>
<td>
ChartControl.ImprovePerformance</td><td>
Instructs the chart to calculate the axes ranges only before painting and not at every series adding or moving. Performance of a Chart with large number of series will be improved significantly, if this property is enabled.By default this property is false.</td></tr>
<tr>
<td>
CalcRegions</td><td>
This property by default is true. This controls the Tooltips, AutoHighlighting properties and RegionHit events. If these properties and events are not used, this property can be set to false for better performance.</td></tr>
<tr>
<td>
ChartSeries.EnableStyles</td><td>
Disabling this property will in turn disable the point symbols and point text which speeds up the chart.</td></tr>
<tr>
<td>
ChartSeries.Style.DisplayShadow</td><td>
Setting this property to false will not render the series with shadow, which will increase the speed of the chart. By default this property is set to false.</td></tr>
<tr>
<td>
Indexed</td><td>
The chart renders faster if the series is not indexed. This of course, may or may not be possible in all cases.By default this property is false.</td></tr>
<tr>
<td>
BackInterior</td><td>
The background style for the Chart control is specified using this property and if this property is not set with gradient or pattern style, will help improve the performance of the chart.</td></tr>
<tr>
<td>
ChartArea.BackInterior</td><td>
This property sets the back color for the chart area. If not set with gradient or pattern style, will help improve the performance of the chart.</td></tr>
<tr>
<td>
ChartInterior</td><td>
If this property which fills the chart interior, not set with gradient or pattern style, will improve the performance of the chart.</td></tr>
<tr>
<td colspan = "2">
Method</td></tr>
<tr>
<td>
BeginUpdate and EndUpdate</td><td>
Encapsulate your "data points adding code" within BeginUpdate and EndUpdate to improve Chart initialization speed. See the example below.</td></tr>
</table>

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