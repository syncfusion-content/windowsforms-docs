---
layout: post
title: How-to-add-custom-TrendLine-in-Chart | Windows Forms | Syncfusion
description: how to add custom trendline in chart
platform: windowsforms
control: chart
documentation: ug
---

# How to add custom TrendLine in Chart

TrendLines are used to draw lines in the ChartArea. They can be added to the chart using the TrendLineAdder class. 

TrendLines can also be drawn using the Mouse Events. In this case, you will have to make use of the Utility class to listen to mouse events and convert them into trendlines. You can draw any number of trendlines, and can set different colors to differentiate them.

{% tabs %}

{% highlight c# %}

// Creating Custom Points

ChartPoint ptStart = this.chart.ChartArea.GetValueByPoint(start);

ChartPoint ptEnd = this.chart.ChartArea.GetValueByPoint(end);

ChartSeries series = this.chart.Model.NewSeries("TrendLine", ChartSeriesType.Line);

series.Points.Add(ptStart);

series.Points.Add(ptEnd);

this.chart.Series.Add(series);

series.LegendItem.Visible = false;

// Specify the color for the lines.

series.Style.Interior = new Syncfusion.Drawing.BrushInfo(ptStart.YValues[0] < ptEnd.YValues[0] ? Color.DarkGreen : Color.Red); 

{% endhighlight %}

{% highlight vb %}

' Creating Custom Points

Dim tLineAdder As TrendLineAdder

Dim ptStart As ChartPoint = Me.chart.ChartArea.GetValueByPoint(start)

Dim ptEnd As ChartPoint = Me.chart.ChartArea.GetValueByPoint(end_Renamed)

Dim series As ChartSeries = Me.chart.Model.NewSeries("TrendLine", ChartSeriesType.Line)

series.Points.Add(ptStart)

series.Points.Add(ptEnd)

Me.chart.Series.Add(series)

series.LegendItem.Visible = False

' Specify the color for the lines.

If ptStart.YValues(0) < ptEnd.YValues(0) Then

series.Style.Interior = New Syncfusion.Drawing.BrushInfo(Color.DarkGreen)

Else

series.Style.Interior = New Syncfusion.Drawing.BrushInfo(Color.Red)

End If

{% endhighlight %}

{% endtabs %}	

![Chart Trendline](How-to-add-custom-TrendLine-in-Chart_images/How-to-add-custom-TrendLine-in-Chart_img1.jpeg)


