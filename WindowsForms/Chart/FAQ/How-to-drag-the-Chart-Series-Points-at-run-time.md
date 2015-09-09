---
layout: post
title: How-to-drag-the-Chart-Series-Points-at-run-time
description: how to drag the chart series points at run time
platform: WindowsForms
control: chart
documentation: ug
---

# How to drag the Chart Series Points at run time

You can drag the chart series points by calculating new x and y values while handling any of the ChartRegionMouse Events likeMouseUp, MouseDown, MouseHover, MouseLeave, and so forth, on the chart. The new x and y values of the series are calculated from the mouse point, and GetValueByPoint which returns the x and y values of the mouse point calculated from the Chart Point.

The following code snippet must be given under the mouse event handler of the ChartRegionMouse event.



 {% highlight c# %}



private void chartControl1_ChartRegionMouseUp(object sender, Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs e)

{

Cursor = Cursors.SizeAll;

if (this.isDragging)

{

double newY = Math.Floor(this.chartControl1.ChartArea.GetValueByPoint(e.Point).YValues[0]);

double newX = this.chartControl1.ChartArea.GetValueByPoint(e.Point).X;

if (newY &lt; 0 || newY &gt;= 50 || newX &lt; 0 || newX &gt; 7)

MessageBox.Show("Cannot drag outside chart bounds");

else

{

this.NewYValue(newY);

this.NewXValue(newX);

}

this.isDragging = false;

this.currentRegion = null;

this.selectedDataPoint.Y = 0;

this.selectedDataPoint.X = 0;

this.chartControl1.Redraw(true);

}

this.chartControl1.Series[0].Style.TextFormat = "{0}";

this.chartControl1.Refresh();

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub chartControl1_ChartRegionMouseUp(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs) Handles chartControl1.ChartRegionMouseUp

Cursor = Cursors.SizeAll

If Me.isDragging Then

Dim newY As Double = Math.Floor(Me.ChartControl1.ChartArea.GetValueByPoint(e.Point).YValues(0))

Dim newX As Double = Me.ChartControl1.ChartArea.GetValueByPoint(e.Point).X

If newY &lt; 0 OrElse newY &gt;= 50 OrElse newX &lt; 0 OrElse newX &gt; 7 Then

MessageBox.Show("Cannot drag outside chart bounds")

Else

Me.NewYValue(newY)

Me.NewXValue(newX)

End If

Me.selectedDataPoint.Y = 0

Me.selectedDataPoint.X = 0

Me.isDragging = False

Me.currentRegion = Nothing

Me.ChartControl1.Redraw(True)

End If

Me.ChartControl1.Series(0).Style.TextFormat = "{0}"

Me.ChartControl1.Refresh()

End Sub

{% endhighlight %}

