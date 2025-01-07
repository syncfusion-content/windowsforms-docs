---
layout: post
title: Events in Windows Forms Chart control | Syncfusion
description: Learn about Events support in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Events in Windows Forms Chart

The following events are discussed in this section:

## Chart Region Events

The Chart handles the following mouse related events when the user interacts with the Chart using mouse, on certain specific regions in the Chart - Axis Labels, Chart Points or a custom region.

* ChartRegionClick Event
* ChartRegionMouseEnter Event
* ChartRegionMouseHover Event
* ChartRegionMouseMove Event
* ChartRegionMouseLeave Event
* ChartRegionMouseUp Event
* ChartRegionMouseDown Event
* ChartRegionDoubleClick Event

The above events are raised with a [ChartRegionMouseEventArgs](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs.html) that contain the following properties.

**Properties**

<table>
<tr>
<th>
ChartRegionMouseEventArgs Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[Point](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartRegionMouseEventArgs_Point)'| markdownify }}
</td><td>
Represents the client point where the event occurred.</td></tr>
<tr>
<td>
{{'[Region (Expanded below)](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartRegionMouseEventArgs_Region)'| markdownify }}
</td><td>
Returns the region associated with this event.</td></tr>
<tr>
<td>
{{'[Button](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartRegionMouseEventArgs_Button)'| markdownify }}
</td><td>
Returns the right mouse button actions.</td></tr>
</table>

The [Region](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs.html#Syncfusion_Windows_Forms_Chart_ChartRegionMouseEventArgs_Region) property above includes several useful information about the kind of region the user is currently interacting with.

<table>
<tr>
<th>
ChartRegion Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[Description](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_Description)'| markdownify }}
</td><td>
A text description of this region.</td></tr>
<tr>
<td>
{{'[Type](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_Type)'| markdownify }}
</td><td>
Specifies the type of region. Possible values:</br><ul><li>SeriesPoint - interacted on a data point.</li><li>HorAxisLabel - interacted on a horizontal axis</li><li>VerAxisLabel - interacted on a vertical axis</li><li>ChartCustom - interacted with a region that is none of the above.</li></ul></td></tr>
<tr>
<td>
<br>
{{'[IsChartPoint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_IsChartPoint)'| markdownify }}
</td><td>
Indicates whether the region is a Chart Point in the ChartSeries. This simply checks if the above mentioned Type is SeriesPoint.</td></tr>
<tr>
<td>
{{'[SeriesIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_SeriesIndex)'| markdownify }}
</td><td>
The index into the Series array of the Chart in which this point occurs if the Type is SeriesPoint.</td></tr>
<tr>
<td>
{{'[PointIndex](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_PointIndex)'| markdownify }}
</td><td>
The index into the Points array of the ChartSeries in which this point occurs if the Type is SeriesPoint.</td></tr>
<tr>
<td>
{{'[Region](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_Region)'| markdownify }}
</td><td>
The client region that represents this logical region.</td></tr>
<tr>
<td>
{{'[ToolTip](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRegion.html#Syncfusion_Windows_Forms_Chart_ChartRegion_ToolTip)'| markdownify }}
</td><td>
Specifies the tooltip for this region.</td></tr>
</table>

**ChartRegionDoubleClick and ChartRegionMouseDown Events:**

{% tabs %} 

{% highlight c# %}

//ChartRegionDoubleClick Event

this.chartControl1.ChartRegionDoubleClick += new Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventHandler(this.chartControl1_ChartRegionDoubleClick);

private void chartControl1_ChartRegionDoubleClick(object sender, ChartRegionMouseEventArgs e)

{

    if (this.chartRegionDoubleClick.Checked)

    {

        if (e.Region.SeriesIndex == 0)

        {

            OutputText(String.Format("Double Click over Series 1 Column {0} Point : {1}", e.Region.PointIndex,e.Point));

            ShowChartRegion("ChartSeries");

        }

        else

        {

            OutputText(String.Format("Double Click over {0}", e.Region.Description.ToString()));

            ShowChartRegion(e.Region.Description.ToString());

        }

    }

}

//Usage of Button property in ChartRegionMouseDown Event

void chartControl1_ChartRegionMouseDown(object sender, ChartRegionMouseEventArgs e)

{

  if(e.Button==MouseButtons.Right)

     Console.WriteLine("Chart Region Mouse Down:="+e.Point.ToString());

}

{% endhighlight %}

{% highlight vb %}

'ChartRegionDoubleClick Event

AddHandler Me.chartControl1.ChartRegionDoubleClick, AddressOf Me.chartControl1_ChartRegionDoubleClick

Private Sub chartControl1_ChartRegionDoubleClick(ByVal sender As Object, ByVal e As ChartRegionMouseEventArgs)

    If Me.chartRegionDoubleClick.Checked Then

        If e.Region.SeriesIndex = 0 Then

            OutputText([String].Format("Double Click over Series 1 Column {0} Point : {1}", e.Region.PointIndex, e.Point))

            ShowChartRegion("ChartSeries")

        Else

            OutputText([String].Format("Double Click over {0}", e.Region.Description.ToString()))

            ShowChartRegion(e.Region.Description.ToString())

        End If

    End If

End Sub

'Usage of Button property in ChartRegionMouseDown Event

Private Sub chartControl1_ChartRegionMouseDown(ByVal sender As Object, ByVal e As ChartRegionMouseEventArgs)

      If e.Button = MouseButtons.Right Then

        Console.WriteLine("Chart Region Mouse Down:="+e.Point.ToString())

    End If

End Sub

{% endhighlight %}
{% endtabs %}

## VisibleRangeChanged Event 

[ChartControl](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html) provides various zooming options for the user while interacting with the Chart. The [VisibleRangeChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_VisibleRangeChanged) event will be raised when the visible range changes during the zooming operation.

{% tabs %}  

{% highlight c# %}

private static void chartControl1_VisibleRangeChanged(object sender, EventArgs e)

{

Console.WriteLine("Visible Range Changed event is raised");

}

{% endhighlight %}

{% highlight vb %}

Private Sub chartControl1_VisibleRangeChanged(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine("Visible Range Changed event is raised")

End Sub

{% endhighlight %}
{% endtabs %}

## ChartFormatAxisLabel Event

[CustomFormatAxisLabel](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ChartFormatAxisLabel) event is discussed in detail in this topic: [Customizing Label Text](https://help.syncfusion.com/windowsforms/chart/chart-axes#customizing-label-text).

## PrepareStyle Event

When a series point is about to be rendered by the chart, it will raise [PrepareStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_PrepareStyle) event and allow event subscribers to change the style used. 

{% tabs %}  

{% highlight c# %}

//Listen to the prepare style event for the series.

series.PrepareStyle += new ChartPrepareStyleInfoHandler(series_PrepareStyle);

private void series_PrepareStyle(object sender, ChartPrepareStyleInfoEventArgs args)

{

    ChartSeries series = sender as ChartSeries ;

    if(series != null)    

{

    //Condition to select members (data points) who made 100 % quota in sales

    if(((series.Points[args.Index].YValues[0] / 150) * 100) >= 100)

        {

          args.Style.Interior = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal, System.Drawing.                       Color.DarkGreen, System.Drawing.Color.LightYellow);                                    

         }

}

}

{% endhighlight %}

{% highlight vb %}

'Listen to the prepare style event for the series.

AddHandler series.PrepareStyle, AddressOf Me.ChartControlSeries_PrepareStyle

Private Sub series_PrepareStyle(ByVal sender As Object, ByVal args As ChartPrepareStyleInfoEventArgs)

Dim series As ChartSeries = TryCast(sender, ChartSeries)

  If series IsNot Nothing Then

     'Condition to select members (data points) who made 100 % quota in sales

     If ((series.Points(args.Index).YValues(0) / 150) * 100) >= 100 Then

        args.Style.Interior = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Horizontal,                                       System.Drawing.Color.DarkGreen, System.Drawing.Color.LightYellow)

     End If

  End If

End Sub

{% endhighlight %}
{% endtabs %}

![Chart Events](Chart-control-events_images/Chart-control-events_img1.jpeg)

## SeriesInCompatible Event

When the Chart has completed updating the series and finds out that series are incompatible, [SeriesInCompatible](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_SeriesIncompatible) event will be raised.

{% tabs %}  

{% highlight c# %}

private static void chartControl1_SeriesInCompatible(object sender, EventArgs e)

{

Console.WriteLine("SeriesInCompatible event is raised");

}

{% endhighlight %}

{% highlight vb %}

Private Sub chartControl1_SeriesInCompatible(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine("SeriesInCompatible event is raised")

End Sub

{% endhighlight %}
{% endtabs %}

## LayoutCompleted Event

[LayoutCompleted](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_LayoutCompleted) event is handled every time, a resizing of chart is caused and when the chart re-renders itself. Listening to this event helps in cases where you render custom images over the chart or position custom controls over the chart.

{% tabs %}  

{% highlight c# %}

private static void chartControl1_LayoutCompleted(object sender, EventArgs e)

{

Console.WriteLine("Layout Completed event is raised");

}

{% endhighlight %}

{% highlight vb %}

Private Sub chartControl1_LayoutCompleted(ByVal sender As Object, ByVal e As EventArgs)

Console.WriteLine("Layout Completed event is raised")

End Sub

{% endhighlight %}
{% endtabs %}

## ChartAreaPaint Event

[ChartAreaPaint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ChartAreaPaint) event is discussed in [Custom Drawing](/windowsforms/chart/chart-appearance#custom-drawing).

{% seealso %}

[Chart Area Bounds](/windowsforms/chart/hit-testing#chart-area-bounds)

{% endseealso %}

## ChartLegendFilterItems Event

[FilterItems](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartLegend.html#Syncfusion_Windows_Forms_Chart_ChartLegend_FilterItems) event is discussed in detail in this topic: [ChartLegend](https://help.syncfusion.com/windowsforms/chart/chart-legend-and-legend-items).

## PreChartAreaPaint Event

[PreChartAreaPaint](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_PreChartAreaPaint) event is raised before the chart area is painted.

{% tabs %}  

{% highlight c# %}

this.chartControl1.PreChartAreaPaint += new System.Windows.Forms.PaintEventHandler(this.chartControl1_PreChartAreaPaint);

private void chartControl1_PreChartAreaPaint(object sender, PaintEventArgs e)
{
       this.chartControl1.BackColor = Color.Yellow;       
}

{% endhighlight %}

{% highlight vb %}

AddHandler Me.chartControl1.PreChartAreaPaint, AddressOf Me.chartControl1_PreChartAreaPaint
    
Private Sub chartControl1_PreChartAreaPaint(ByVal sender As Object, ByVal e As PaintEventArgs)

    Me.chartControl1.BackColor = Color.Yellow

End Sub

{% endhighlight %}

{% endtabs %}
