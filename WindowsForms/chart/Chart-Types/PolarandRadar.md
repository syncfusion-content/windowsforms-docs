---
layout: post
title: Polar And Radar Chart in Windows Forms Charts | Syncfusion
description: Radar and polar types in the Windows Forms Chart display multivariable data in a circular layout, enabling comparison of patterns and trends.
platform: windowsforms
control: Chart
documentation: ug
---

# Polar and Radar in Windows Forms Charts

## Polar chart

[Polar Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_Polar) displays data points using values and angles on a 360-degree circle. The X-values determine the angular positions, while the Y-values determine the distances from the center.

The following code example demonstrates how to create a polar chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
    "Values",
    ChartSeriesType.Polar);

series.Points.Add(0, 80);
series.Points.Add(1, 35);
series.Points.Add(2, 85);
series.Points.Add(3, 30);
series.Points.Add(4, 75);
series.Points.Add(5, 40);
series.Points.Add(6, 90);
series.Points.Add(7, 35);

chartControl.Series.Add(series);

chartControl.Text = "Polar Value Distribution";
chartControl.ShowLegend = false;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Values",
    ChartSeriesType.Polar)

series.Points.Add(0, 80)
series.Points.Add(1, 35)
series.Points.Add(2, 85)
series.Points.Add(3, 30)
series.Points.Add(4, 75)
series.Points.Add(5, 40)
series.Points.Add(6, 90)
series.Points.Add(7, 35)

chartControl.Series.Add(series)

chartControl.Text = "Polar Value Distribution"
chartControl.ShowLegend = False

{% endhighlight %}
{% endtabs %}

![Polar Chart in Windows Forms](../Chart-Types_images/windowsforms-polar-chart.png)

## Radar chart

[Radar Chart](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeriesType.html#Syncfusion_Windows_Forms_Chart_ChartSeriesType_Radar) displays data points using lines that extend from the same central point. The X-values determine the position of each line, while the Y-values determine how far each data point is placed from the center. The data points are connected to form a shape. 

The following code example demonstrates how to create a radar Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries(
"Values",
ChartSeriesType.Radar);
series.Points.Add(0, 40);
series.Points.Add(1, 20);
series.Points.Add(2, 33);
series.Points.Add(3, 25);
series.Points.Add(4, 60);
series.Points.Add(5, 20);

chartControl.Series.Add(series);

chartControl.Text = "Radar Value Distribution";
chartControl.ShowLegend = false;

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries(
    "Values",
    ChartSeriesType.Radar)

series.Points.Add(0, 40)
series.Points.Add(1, 20)
series.Points.Add(2, 33)
series.Points.Add(3, 25)
series.Points.Add(4, 60)
series.Points.Add(5, 20)

chartControl.Series.Add(series)

chartControl.Text = "Radar Value Distribution"
chartControl.ShowLegend = False

{% endhighlight %}
{% endtabs %}

![Radar Chart in Windows Forms](../Chart-Types_images/windowsforms-radar-chart.png)

### Radar style

The [RadarStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_RadarStyle) property determines the axis style used to render a radar chart. By default, the radar chart is rendered using the [Polygon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarAxisStyle.html#Syncfusion_Windows_Forms_Chart_ChartRadarAxisStyle_Polygon) axis style.

The supported radar styles are:

- [Polygon](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarAxisStyle.html#Syncfusion_Windows_Forms_Chart_ChartRadarAxisStyle_Polygon): Renders the radar chart with polygonal grid lines, where each grid level is displayed as a multi-sided polygon.
- [Circle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarAxisStyle.html#Syncfusion_Windows_Forms_Chart_ChartRadarAxisStyle_Circle): Renders the radar chart with circular grid lines, giving the chart a smoother and more rounded appearance.

The following code sets the radar chart axis style to `Circle`.

{% tabs %}
{% highlight c# %}
chartControl.RadarStyle = ChartRadarAxisStyle.Circle;
{% endhighlight %}
{% highlight vb %}
chartControl.RadarStyle = ChartRadarAxisStyle.Circle
{% endhighlight %}
{% endtabs %}

![Radar Axis Style in Windows Forms](../Chart-Types_images/windowsforms-radar-chart-axis-stye.png)

## Grid line type

The [Type](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartRadarConfigItem_Type) property specifies how data points are rendered in Polar and Radar charts. The default value is [Area](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarDrawType.html#Syncfusion_Windows_Forms_Chart_ChartRadarDrawType_Area).

The supported values are defined in the [ChartRadarDrawType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarDrawType.html) enumeration:

- [Area](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarDrawType.html#Syncfusion_Windows_Forms_Chart_ChartRadarDrawType_Area): Connects the data points and fills the enclosed region.
- [Line](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarDrawType.html#Syncfusion_Windows_Forms_Chart_ChartRadarDrawType_Line): Connects the data points without filling the enclosed region.
- [Symbol](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartRadarDrawType.html#Syncfusion_Windows_Forms_Chart_ChartRadarDrawType_Symbol): Displays a symbol at each data point without connecting the points.

N> The `Type` property also applies to `Polar` charts.

The following code renders the radar chart as a line chart.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.RadarItem.Type = ChartRadarDrawType.Line;
series.Style.Border.Color = Color.Red;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.RadarItem.Type =
    ChartRadarDrawType.Line
series.Style.Border.Color = Color.Red
{% endhighlight %}
{% endtabs %}

![Radar Draw Type in Windows Forms](../Chart-Types_images/windowsforms-radar-chart-draw-type.png)