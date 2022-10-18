---
layout: post
title: Chart Series in Windows Forms Chart control | Syncfusion
description: Learn about Chart Series support in Syncfusion Essential Studio Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Chart Series in Windows Forms Chart

Provide data for the [Windows Forms chart](https://www.syncfusion.com/winforms-ui-controls/chart) through the ChartSeries. ChartSeries acts as a wrapper around data that is to be displayed, and associates styles with the data. The data that is to be displayed is contained in either the IChartSeriesModel or the IEditableChartSeriesModel implementation. The style used to display the points is stored in a contained implementation of IChartSeriesStylesModel.

Here is some sample code to create a new series and add it to the chart.

{% tabs %}

{% highlight c# %}

// 1) One way to create a series:

ChartSeries series = new ChartSeries("Sales Performance", ChartSeriesType.Bar);

series.Points.Add(0,200);

series.Points.Add(1,300);

// Remember to add the series to the chart.

chartControl1.Series.Add(series);

// 2) Another way to create a series

// This will automatically add the series to the chart

ChartSeries series = chartControl1.Model.NewSeries("Sales Performance", ChartSeriesType.Bar);

series.Points.Add(0,200);

series.Points.Add(1,300);

{% endhighlight %}

{% highlight vb %}

' 1) One way to create a series:

Dim series1 As ChartSeries = New ChartSeries("Sales Performance", ChartSeriesType.Bar)

series.Points.Add(0,200)

series.Points.Add(1,300)

' Remember to add the series to the chart.

Me.chartControl1.Series.Add(series)

' 2) Another way to create a series

' This will automatically add the series to the chart

ChartSeries series = Me.chartControl1.Model.NewSeries("Sales Performance", ChartSeriesType.Bar)

series.Points.Add(0,200)

series.Points.Add(1,300)

{% endhighlight %}
{% endtabs %}

N> Same ChartSeries object being added to more than one chart is not supported. It binds the series to the default primary axis always.

## Chart Points

The ChartPoint class holds value information about a single point in a series (x and y values). The following table describes the kind of x and y values you can specify via a chart point.

_Chart Points_

<table>
<tr>
<th>
Axis</th><th>
Number of Values</th><th>
Value Types</th></tr>
<tr>
<td>
X</td><td>
1</td><td>
double or DateTime</td></tr>
<tr>
<td>
Y</td><td>
1 or more</td><td>
double or DateTime</td></tr>
</table>

Here is some sample code that shows adding data points to the Points collection. You could also optionally create a ChartPoint instance first and then add it to the Points collection.

{% tabs %}

{% highlight c# %}

// Option 1: 1 X double value; 2 double Y values in a point

series1.Points.Add(0, 2.5, 3.5);

// Option 2: 1 X double value; 1 DateTime Y value

series2.Points.Add(1, DateTime.Now);

// Option 3: 1 X DateTime value; 1 double Y value

series1.Points.Add(DateTime.Now, 5.3);

{% endhighlight %}

{% highlight vb %}

' Option 1: 1 X double value; 2 double Y values in a point

series1.Points.Add(0, 2.5, 3.5)

' Option 2: 1 X double value; 1 DateTime Y value

series2.Points.Add(1, DateTime.Now)

' Option 3: 1 X DateTime value; 1 double Y value

series1.Points.Add(DateTime.Now, 5.3)

{% endhighlight %}
{% endtabs %}

## ValueType

Always use the ChartAxis.ValueType property to specify what kind of values you have added in the series data points for the corresponding axis.

{% tabs %}

{% highlight c# %}

// To specify DateTime values in the X axis

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime;

// To specify Double values

this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Double;

{% endhighlight %}

{% highlight vb %}

' To specify DateTime values in the X axis

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.DateTime

' To specify Double values

Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Double

{% endhighlight %}
{% endtabs %}

N> To display the text right next to the data points, the DisplayText property of the data point's style should be set.

The Chart Series features are elaborated in more detail in the following sub-topics.

## Sorting

Chart has built-in support to sort the data points either in ascending or descending order. By default, chart renders the sorted data points. Sorting feature can be enabled or disabled using the property **SortPoints** of. **ChartSeries**.

Here is a simple code to sort the data points in ascending order.

{% tabs %}

{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries series1 = new ChartSeries("Market");

series1.Points.Add(1, 20);
series1.Points.Add(3, 28);
series1.Points.Add(5, 38);
series1.Points.Add(2, 18);
series1.Points.Add(6, 58);
series1.Points.Add(9, 28);
series1.Points.Add(4, 48);

//Enable sorting. Sorting is enabled by default
series1.SortPoints = true;

series1.Type = ChartSeriesType.Line;

// Add the series to the chart series collection.
this.chartControl1.Series.Add(series1);

{% endhighlight %}

{% highlight vb %}

' Create chart series and add data points into it.
Dim series1 As New ChartSeries("Market")

series1.Points.Add(1, 20)
series1.Points.Add(3, 28)
series1.Points.Add(5, 38)
series1.Points.Add(2, 18)
series1.Points.Add(6, 58)
series1.Points.Add(9, 28)
series1.Points.Add(4, 48)

'Enable sorting. Sorting is enabled by default
series1.SortPoints = True

series1.Type = ChartSeriesType.Line

' Add the series to the chart series collection.
Me.chartControl1.Series.Add(series1)

{% endhighlight %}
{% endtabs %}

Following screenshot displays chart without sorting
![Data points in random order](Chart-Series_images/Chart-Series_img171.png)

Following screenshot displays chart with sorted data points
![Data points after sorting](Chart-Series_images/Chart-Series_img172.png)

### Sorting In Categorical Axis

In categorical axis, data points can be sorted based on their x-value (value along x-axis) or y-value (value along y-axis) in either ascending or descending order.

Sorting order (ascending or descending) can be specified using the **SortOrder** property in **ChartSeries**. The **SortBy** property of **ChartSeries** can be used to specify whether sorting should work on x or y values of data point.

Here is a simple code to sort the data points in categorical axis

{% tabs %}

{% highlight c# %}

//Set axis type as Category
this.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Category;

series1.Points.Add("A1", 20);
series1.Points.Add("D1", 28);
series1.Points.Add("C1", 38);
series1.Points.Add("B1", 18);
series1.Points.Add("G1", 58);
series1.Points.Add("E1", 28);
series1.Points.Add("F1", 48);
//Enable sorting. Sorting is enabled by default
series1.SortPoints = true;

//Specify the order of sorting
series1.SortOrder = ChartSeriesSortingOrder.Ascending;

//Specify the value to consider
series1.SortBy = ChartSeriesSortingType.X;

series1.Type = ChartSeriesType.Line;

// Add the series to the chart series collection.
this.chartControl1.Series.Add(series1);

{% endhighlight %}

{% highlight vb %}

'Set axis type as Category
Me.chartControl1.PrimaryXAxis.ValueType = ChartValueType.Category

series1.Points.Add("A1", 20)
series1.Points.Add("D1", 28)
series1.Points.Add("C1", 38)
series1.Points.Add("B1", 18)
series1.Points.Add("G1", 58)
series1.Points.Add("E1", 28)
series1.Points.Add("F1", 48)
'Enable sorting. Sorting is enabled by default
series1.SortPoints = True

'Specify the order of sorting
series1.SortOrder = ChartSeriesSortingOrder.Ascending

'Specify the value to consider
series1.SortBy = ChartSeriesSortingType.X

series1.Type = ChartSeriesType.Line

' Add the series to the chart series collection.
Me.chartControl1.Series.Add(series1)

{% endhighlight %}
{% endtabs %}

Data points in chart before sorting
![Chart Series](Chart-Series_images/Chart-Series_img173.png)

Data points sorted by x-values in ascending order
![Chart Series](Chart-Series_images/Chart-Series_img174.png)

Data points sorted by X-values in descending order
![Chart Series](Chart-Series_images/Chart-Series_img175.png)

Data points sorted by y-values in ascending order
![Chart Series](Chart-Series_images/Chart-Series_img176.png)

Data points sorted by Y-values in descending order
![Chart Series](Chart-Series_images/Chart-Series_img177.png)

## Series Customization

Essential Chart offers numerous appearance and behavior customization capabilities at the series level and on individual points.

Some of these options are applicable only for the whole series while the rest could be applied on the specific data points. Similarly some of these options are specific to certain chart types.

Note that styles set at the series level automatically propagate to the points in the series.

Interestingly the Chart control lets the user to edit the styles of a series by double clicking on it during run-time. This feature can be turned on by setting the AllowUserEditStyles property to true.

The table below lists the customization options available in ChartSeries and their restrictions.

<table>
<tr>
<th>
Customization Option</th><th>
Applies to Series or DataPoints*</th><th>
Applies to Chart Type</th></tr>
<tr>
<td>
{{ '[AngleOffset](/windowsforms/chart/chart-series#angleoffset)'| markdownify }}</td><td>
Series</td><td>
Pie Chart</td></tr>
<tr>
<td>
{{ '[Border](/windowsforms/chart/chart-series#border)' | markdownify }}</td><td>
Series and points</td><td>
Pyramid, Funnel, Area, Bar, Bubble, Column Chart, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Polar and Radar Chart and Pie Chart.</td></tr>
<tr>
<td>
{{ '[BubbleType](/windowsforms/chart/chart-series#bubbletype)' | markdownify }}</td><td>
Series</td><td>
Bubble chart.</td></tr>
<tr>
<td>
{{ '[ColumnDrawMode](/windowsforms/chart/chart-series#columndrawmode)' | markdownify }}</td><td>
</td><td>
Column Chart, ColumnRange Chart,Bar Chart, BoxAndWhisker Chart, Gantt Chart.</td></tr>
<tr>
<td>
{{ '[ColumnWidthMode](/windowsforms/chart/chart-series#columnwidthmode)' | markdownify }}</td><td>
Series</td><td>
Column charts</td></tr>
<tr>
<td>
{{ '[ColumnFixedWidth](/windowsforms/chart/chart-series#columnfixedwidth)' | markdownify }}</td><td>
Series</td><td>
Column charts</td></tr>
<tr>
<td>
{{ '[ColumnType](/windowsforms/chart/chart-series#columntype)' | markdownify }}</td><td>
Series</td><td>
Column</td></tr>
<tr>
<td>
{{ '[ColorsMode](/windowsforms/chart/chart-series#colorsmode)' | markdownify }}</td><td>
Series</td><td>
Renko chart.</td></tr>
<tr>
<td>
{{ '[DarkLightPower](/windowsforms/chart/chart-series#darklightpower)' | markdownify }}</td><td>
Series</td><td>
Renko chart.</td></tr>
<tr>
<td>
{{ '[DisplayShadow](/windowsforms/chart/chart-series#displayshadow)' | markdownify }}</td><td>
Series and points</td><td>
Area Chart, Bar Chart, Bubble Chart, Column Chart, Stacking Column Chart, Stacking Column100 Chart, Line Chart, Spline Chart, Rotated Spline chart, Stepline Chart, Candle Chart, Kagi Chart, Point and Figure Chart, Renko Chart, Three line Break Charts, Gantt Chart, Histogram chart, Tornado Chart, Combination Chart, Box and Whisker Chart.</td></tr>
<tr>
<td>
{{ '[DisplayText](/windowsforms/chart/chart-series#displaytext)' | markdownify }}</td><td>
Series and points</td><td>
All Chart types.</td></tr>
<tr>
<td>
{{ '[Callout](/windowsforms/chart/chart-series#callout)' | markdownify }}</td><td>
Series and points</td><td>
Area Chart, Bar Chart, Scatter Chart, Bubble Chart, Column Chart, Stacking Column Chart, Stacking Column100 Chart, Line Chart, Spline Chart, Rotated Spline chart, Stepline Chart, Candle Chart, HiLo Chart, HiLoOpenClose Chart, Combination Chart, Pie Chart.</td></tr>
<tr>
<td>
{{ '[DoughnutCoeficient](/windowsforms/chart/chart-series#doughnutcoeficient)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[DrawColumnSeparatingLines](/windowsforms/chart/chart-series#drawcolumnseparatinglines)' | markdownify }}</td><td>
Series</td><td>
Column Chart.</td></tr>
<tr>
<td>
{{ '[DrawErrorBars](/windowsforms/chart/chart-series#drawerrorbars)' | markdownify }}</td><td>
Series</td><td>
Column Chart, Line Chart and HiLo Chart.</td></tr>
<tr>
<td>
{{ '[ShowNormalDistribution](/windowsforms/chart/chart-series#shownormaldistribution)' | markdownify }}</td><td>
Series</td><td>
Histogram chart.</td></tr>
<tr>
<td>
{{ '[DrawSeriesNameInDepth](/windowsforms/chart/chart-series#drawseriesnameindepth)' | markdownify }}</td><td>
Series</td><td>
All Chart types.</td></tr>
<tr>
<td>
{{ '[ElementBorders](/windowsforms/chart/chart-series#elementborders)' | markdownify }}</td><td>
Series and points</td><td>
Area Charts, Bar Charts, Bubble Chart, Column Charts, Line  Charts, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Tornado Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[EnablePhongStyle](/windowsforms/chart/chart-series#enablephongstyle)' | markdownify }}</td><td>
Series</td><td>
Bubble Chart.</td></tr>
<tr>
<td>
{{ '[SymbolShape](/windowsforms/chart/chart-series#symbolshape)' | markdownify }}</td><td>
Series</td><td>
Column Chart, Line Chart and HiLo Chart.</td></tr>
<tr>
<td>
{{ '[ExplodedAll](/windowsforms/chart/chart-series#explodedall)' | markdownify }}</td><td>
Series</td><td>
Pie Chart, Doughnut Chart.</td></tr>
<tr>
<td>
{{ '[ExplodedIndex](/windowsforms/chart/chart-series#explodedindex)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[ExplosionOffset](/windowsforms/chart/chart-series#explosionoffset)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[FancyToolTip](/windowsforms/chart/chart-series#fancytooltip)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[FigureBase](/windowsforms/chart/chart-series#figurebase)' | markdownify }}</td><td>
Series</td><td>
Funnel and Pyramid chart.</td></tr>
<tr>
<td>
{{ '[FillMode](/windowsforms/chart/chart-series#fillmode)' | markdownify }}</td><td>
Series</td><td>
Pie Chart</td></tr>
<tr>
<td>
{{ '[FunnelMode](/windowsforms/chart/chart-series#funnelmode)' | markdownify }}</td><td>
Series</td><td>
Funnel and Pyramid chart.</td></tr>
<tr>
<td>
{{ '[Font](/windowsforms/chart/chart-series#font)' | markdownify }}</td><td>
Series and points</td><td>
All Chart types.</td></tr>
<tr>
<td>
{{ '[GanttDrawMode](/windowsforms/chart/chart-series#ganttdrawmode)' | markdownify }}</td><td>
Series</td><td>
Gantt Chart.</td></tr>
<tr>
<td>
{{ '[GapRatio](/windowsforms/chart/chart-series#gapratio)' | markdownify }}</td><td>
Series</td><td>
Funnel and Pyramid chart.</td></tr>
<tr>
<td>
{{ '[Gradient](/windowsforms/chart/chart-series#gradient)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[HeightBox](/windowsforms/chart/chart-series#heightbox)' | markdownify }}</td><td>
Series</td><td>
Point And Figure Chart.</td></tr>
<tr>
<td>
{{ '[HeightByAreaDepth](/windowsforms/chart/chart-series#heightbyareadepth)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[HeightCoeficient](/windowsforms/chart/chart-series#heightcoeficient)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[HighlightInterior](/windowsforms/chart/chart-series#highlightinterior)' | markdownify }}</td><td>
Series</td><td>
Bar Charts, Pie, Funnel, Pyramid,Bubble, Column, Area, Stacking Area, Stacking Area100, Line Charts, Box and Whisker, Gantt Chart and Tornado Chart.</td></tr>
<tr>
<td>
{{ '[HitTestRadius](/windowsforms/chart/chart-series#hittestradius)' | markdownify }}</td><td>
Series</td><td>
Line Chart and Step Line Chart.</td></tr>
<tr>
<td>
{{ '[ImageIndex](/windowsforms/chart/chart-series#imageindex)' | markdownify }}</td><td>
Series and points</td><td>
Area Charts, Bar Charts, Bubble Chart, Column Charts, Line  Charts, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Tornado Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[Images](/windowsforms/chart/chart-series#imges)' | markdownify }}</td><td>
Series and points</td><td>
Area Charts, Bar Charts, Bubble Chart, Column Charts, Line  Charts, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Tornado Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[InSideRadius](/windowsforms/chart/chart-series#insideradius)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[Interior](/windowsforms/chart/chart-series#interior)' | markdownify }}</td><td>
Series and points</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[LabelPlacement](/windowsforms/chart/chart-series#labelpacement)' | markdownify }}</td><td>
Series</td><td>
Funnel and Pyramid Charts.</td></tr>
<tr>
<td>
{{ '[LabelStyle](/windowsforms/chart/chart-series#labelstyle)' | markdownify }}</td><td>
Series</td><td>
Funnel and Pyramid, Pie</td></tr>
<tr>
<td>
{{ '[LegendItem](/windowsforms/chart/chart-series#legenditem)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[LightAngle](/windowsforms/chart/chart-series#lightangle)' | markdownify }}</td><td>
Series</td><td>
Scatter Chart, Column Charts , Bar Charts, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[LightColor](/windowsforms/chart/chart-series#lightcolor)' | markdownify }}</td><td>
Series</td><td>
Scatter Chart, Column Charts , Bar Charts, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[Name](/windowsforms/chart/chart-series#name)' | markdownify }}</td><td>
Series</td><td>
All chart types.</td></tr>
<tr>
<td>
{{ '[NumberOfIntervals](/windowsforms/chart/chart-series#numberofintervals)' | markdownify }}</td><td>
Series</td><td>
Histogram Chart.</td></tr>
<tr>
<td>
{{ '[DrawMode](/windowsforms/chart/chart-series#drawmode)' | markdownify }}</td><td>
Series</td><td>
HiLo OpenClose chart.</td></tr>
<tr>
<td>
{{ '[OptimizePiePointPositions](/windowsforms/chart/chart-series#optimizepiepointpositions)' | markdownify }}</td><td>
Series</td><td>
Pie chart</td></tr>
<tr>
<td>
{{ '[PhongAlpha](/windowsforms/chart/chart-series#phongalpha)' | markdownify }}</td><td>
Series</td><td>
Column Chart.</td></tr>
<tr>
<td>
{{ '[PieType](/windowsforms/chart/chart-series#pietype)' | markdownify }}</td><td>
Series</td><td>
Pie chart</td></tr>
<tr>
<td>
{{ '[PieWithSameRadius](/windowsforms/chart/chart-series#piewithsameradius)' | markdownify }}</td><td>
Series</td><td>
Pie chart and Doughnut chart.</td></tr>
<tr>
<td>
{{ '[PointsToolTipFormat](/windowsforms/chart/chart-series#pointstooltipformat)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[PointWidth](/windowsforms/chart/chart-series#pointwidth)' | markdownify }}</td><td>
Series and points</td><td>
Gantt Chart.</td></tr>
<tr>
<td>
{{ '[PriceDownColor](/windowsforms/chart/chart-series#pricedowncolor)' | markdownify }}</td><td>
Series</td><td>
Financial types</td></tr>
<tr>
<td>
{{ '[PriceUpColor](/windowsforms/chart/chart-series#priceupcolor)' | markdownify }}</td><td>
Series</td><td>
Financial types</td></tr>
<tr>
<td>
{{ '[PyramidMode](/windowsforms/chart/chart-series#pyramidmode)' | markdownify }}</td><td>
Series</td><td>
Pyramid</td></tr>
<tr>
<td>
{{ '[Radar Type](/windowsforms/chart/chart-series#radar-type)' | markdownify }}</td><td>
Series</td><td>
Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[RadarStyle](/windowsforms/chart/chart-series#radarstyle)' | markdownify }}</td><td>
Series</td><td>
Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[RelatedPoints](/windowsforms/chart/chart-series#relatedpoints)' | markdownify }}</td><td>
Series and points</td><td>
Gantt Chart.</td></tr>
<tr>
<td>
{{ '[ReversalAmount](/windowsforms/chart/chart-series#reversalamount)' | markdownify }}</td><td>
Series</td><td>
Kagi, PointAndFigure, Renko</td></tr>
<tr>
<td>
{{ '[Rotate](/windowsforms/chart/chart-series#rotate)' | markdownify }}</td><td>
Series</td><td>
Column Charts, Bar Charts, Area charts, Line Chart, Spline Chart, Stepline Chart, Candle Chart, HiLo Chart, HiLo Open Chart, Kagi Chart, Box and Whisker chart, Histogram chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[ScatterConnectType](/windowsforms/chart/chart-series#scatterconnecttype)' | markdownify }}</td><td>
Series</td><td>
Scatter Chart.</td></tr>
<tr>
<td>
{{ '[ScatterSplineTension](/windowsforms/chart/chart-series#)' | markdownify }}</td><td>
Series</td><td>
Scatter Chart.</td></tr>
<tr>
<td>
{{ '[SeriesToolTipFormat](/windowsforms/chart/chart-series#seriestooltipformat)' | markdownify }}</td><td>
Series</td><td>
Area Charts.</td></tr>
<tr>
<td>
{{ '[ShadingMode](/windowsforms/chart/chart-series#shadingmode)' | markdownify }}</td><td>
Series</td><td>
Column Chart, BarCharts, Candle Chart, HiLo Chart, HiLoOpenClose Chart, Tornado chart, BoxAndWhisker chart, Gantt Chart, Histogram Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[ShadowInterior](/windowsforms/chart/chart-series#shadowinterior)' | markdownify }}</td><td>
Series and points</td><td>
Column Charts, Bubble Chart, Line Charts, BarCharts, Candle Chart, Kagi Chart, Point and Figure Chart, Renko Chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Pie Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[ShadowOffset](/windowsforms/chart/chart-series#shadowoffset)' | markdownify }}</td><td>
Series and points</td><td>
Column Charts, Bubble Chart, Line Charts, Bar Charts, Candle Chart, Kagi Chart, Point and Figure Chart, Renko Chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Pie Chart, Polar and Radar Chart.</td></tr>
<tr>
<td>
{{ '[ShowDataBindLabels](/windowsforms/chart/chart-series#showdatabindlabels)' | markdownify }}</td><td>
Series</td><td>
Pie Chart, Doughnut Chart, Funnel and Pyramid charts.</td></tr>
<tr>
<td>
{{ '[ShowHistogramDataPoints](/windowsforms/chart/chart-series#showhistogramdatapoints)' | markdownify }}</td><td>
Series</td><td>
Histogram Chart</td></tr>
<tr>
<td>
{{ '[ShowTicks](/windowsforms/chart/chart-series#showticks)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[SmartLabels](/windowsforms/chart/chart-series#smartlabels)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[Spacing](/windowsforms/chart/chart-series#spacing)' | markdownify }}</td><td>
Series and Points.</td><td>
Column Charts, BarCharts, Box and Whisker Chart, Gantt Chart, Tornado Chart.</td></tr>
<tr>
<td>
{{ '[Spacing Between Series](/windowsforms/chart/chart-series#spacingbetweenseries)' | markdownify }}</td><td>
Series</td><td>
Area Charts, BarCharts, Line Charts, Bubble Chart, Financial Charts, Gantt Chart, Histogram chart, Tornado Chart, Combination Chart, Box and Whisker Chart.</td></tr>
<tr>
<td>
{{ '[SpacingBetweenPoints](/windowsforms/chart/chart-series#spacingbetweenpoints)' | markdownify }}</td><td>
Series Points</td><td>
Column Chart, Bar Chart, HiLo Chart, HiLo Open Close Chart, Candle Chart, Tornado Chart, Boxes and Whisker Chart.</td></tr>
<tr>
<td>
{{ '[StepItem.Inverted](/windowsforms/chart/chart-series#stepiteminverted)' | markdownify }}</td><td>
Series</td><td>
StepAreaChart, StepLine Chart.</td></tr>
<tr>
<td>
{{ '[Summary](/windowsforms/chart/chart-series#summary)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[Symbol](/windowsforms/chart/chart-series#symbol)' | markdownify }}</td><td>
Series and points</td><td>
Column Chart, Bar Chart, Bubble Chart, Financial Chart, Line Chart, BoxAndWhisker Chart, Gantt chart, Tornado chart, Radar Chart</td></tr>
<tr>
<td>
{{ '[Text (Series)](/windowsforms/chart/chart-series#text-series)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[Text (Style)](/windowsforms/chart/chart-series#text-style)' | markdownify }}</td><td>
Series and Points</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[TextColor](/windowsforms/chart/chart-series#textcolor)' | markdownify }}</td><td>
Series and points</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[TextFormat](/windowsforms/chart/chart-series#textformat)' | markdownify }}</td><td>
Series and points</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[TextOffset](/windowsforms/chart/chart-series#textoffset)' | markdownify }}</td><td>
Series and points</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[TextOrientation](/windowsforms/chart/chart-series#textorientation)' | markdownify }}</td><td>
Series and points</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[ToolTip](/windowsforms/chart/chart-series#tooltip)' | markdownify }}</td><td>
Series and points</td><td>
Scatter Chart.</td></tr>
<tr>
<td>
{{ '[ToolTipFormat](/windowsforms/chart/chart-series#tooltipformat)' | markdownify }}</td><td>
Series and points</td><td>
Scatter Chart.</td></tr>
<tr>
<td>
{{ '[Visible](/windowsforms/chart/chart-series#visible)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[VisibleAllPies](/windowsforms/chart/chart-series#visibleallfiles)' | markdownify }}</td><td>
Series</td><td>
Pie Chart.</td></tr>
<tr>
<td>
{{ '[XType](/windowsforms/chart/chart-series#xtype)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[YType](/windowsforms/chart/chart-series#ytype)' | markdownify }}</td><td>
Series</td><td>
All Chart Types.</td></tr>
<tr>
<td>
{{ '[ZOrder](/windowsforms/chart/chart-series#zorder)' | markdownify }}</td><td>
Series</td><td>
Gantt chart, StackingBar chart, StackingBar100 chart, StackingColumn chart, StackedColumn100 chart, StackingArea chart, StackingArea100 chart.</td></tr>
</table>

* Indicates whether the property affects ALL the points in the series or if the property can be set on individual points as well.

### AngleOffset

The offset angle that is to be used when rendering Pie charts.

### Details

Possible Values - Accepts real values like 45f, 90f etc.

Default Value – 0.

2D / 3D Limitations – No.

Applies to Chart Element - All Series.

Applies to Chart Types – PieChart.

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Create chart series and add data points into it.

ChartSeries series1 = new ChartSeries("Market");

series1.Points.Add(0, 20);

series1.Points.Add(1, 28);

series1.Type = ChartSeriesType.Pie;

// Add the series to the chart series collection.

this.chartControl1.Series.Add(series1);

this.chartControl1.Series3D = true;

this.chartControl1.Series[0].ConfigItems.PieItem.AngleOffset = 45f;

{% endhighlight %}

{% highlight vb %}

' Create chart series and add data points into it.

Private series1 As New ChartSeries("Market")

series1.Points.Add(0, 20)

series1.Points.Add(1, 28)

series1.Type = ChartSeriesType.Pie

 ' Add the series to the chart series collection.

Me.chartControl1.Series.Add(series1)

Me.chartControl1.Series3D = True

Me.chartControl1.Series(0).ConfigItems.PieItem.AngleOffset = 45f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img3.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img4.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### Border

The user can also set the Border color and Border style for the chart series.

_Border_

<table>
<tr>
<th>
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td>
Any Color, Width, Style for the Borders</td></tr>
<tr>
<td>
Default Value     </td><td>
Color  - BlackWidth value - 1DashStyle - Solid</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td>
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td>
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td>
Pyramid, Funnel, Area, Bar, Bubble, Column Chart, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Polar and Radar Chart and Pie Chart</td></tr>
</table>

The line type can be configured using the ChartSeries.Style.Border property as in the following example.

{% tabs %}

{% highlight c# %}

// Set the border style required for the column chart.

series.Style.Border.Width = 3;

series.Style.Border.Color = Color.White;

// Set the Series style

series.Style.DisplayShadow = true;

series.Style.ShadowInterior = new Syncfusion.Drawing.BrushInfo(Color.White);

series.Style.ShadowOffset = new Size(3, 3);

{% endhighlight %}

{% highlight vb %}

' Set the border style required for the column chart.

series.Style.Border.Width = 3

series.Style.Border.Color = Color.White

' Set the Series style

series.Style.DisplayShadow = True

series.Style.ShadowInterior = New Syncfusion.Drawing.BrushInfo(Color.White)

series.Style.ShadowOffset = New Size(3, 3)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img5.jpeg)

To apply this on specific data points:

{% tabs %}

{% highlight c# %}

//Sets border for the 1st point in 1st series

series1.Styles[0].Border.Width = 3;

series1.Styles[0].Border.Color = Color.White;

//Sets border for the 3rd point in 2nd series

series2.Styles[2].Border.Width = 3;

series2.Styles[2].Border.Color = Color.White;

{% endhighlight %}

{% highlight vb %}

'Sets border for the 1st point in 1st series

series1.Styles(0).Border.Width = 3

series1.Styles(0).Border.Color = Color.White

'Sets border for the 3rd point in 2nd series

series2.Styles(2).Border.Width = 3

series2.Styles(2).Border.Color = Color.White

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img6.jpeg)

{% seealso %}

 [Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart),  [Funnel Chart](/windowsforms/chart/chart-types#funnel-chart), [AreaChart](/windowsforms/chart/chart-types#area-chart),  [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Column Charts](/windowsforms/chart/chart-types#column-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart), [PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### BubbleType

BubbleType - Specifies whether to render the data point symbols as circle, square or as image.

_Features_

<table>
<tr>
<th>
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td>
Circle - Symbol is rendered as a circleSquare - Symbol is rendered as a squareImage - Symbol is rendered as an image</td></tr>
<tr>
<td>
Default Value     </td><td>
Circle</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td>
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td>
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td>
Bubble</td></tr>
</table>

Here is some sample code to specify an Image BubbleType.

### Series wide setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.BubbleItem.BubbleType = ChartBubbleType.Image;

this.chartControl1.Series[0].Style.Images = new ChartImageCollection(this.imageList1.Images );

this.chartControl1.Series[0].Style.ImageIndex = 0;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series[0].ConfigItems.BubbleItem.BubbleType = ChartBubbleType.Image

Me.chartControl1.Series[0].Style.Images = New ChartImageCollection(Me.imageList1.Images)

Me.chartControl1.Series[0].Style.ImageIndex = 0

{% endhighlight %}
{% endtabs %}

### Specific Data Point Setting

#### Specify image for specific data points.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Styles[0].Images = new ChartImageCollection(this.imageList1.Images );

this.chartControl1.Series[0].Styles[0].ImageIndex = 0;

this.chartControl1.Series[0].Styles[1].Images = new ChartImageCollection(this.imageList1.Images );

this.chartControl1.Series[0].Styles[1].ImageIndex = 1;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series[0].Styles(0).Images = New ChartImageCollection(Me.imageList1.Images)

Me.chartControl1.Series[0].Styles[0).ImageIndex = 0

Me.chartControl1.Series[0].Styles(1).Images = New ChartImageCollection(Me.imageList1.Images)

Me.chartControl1.Series[0].Styles(1).ImageIndex = 1

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img7.jpeg)

{% seealso %}

[Bubble Charts](/windowsforms/chart/chart-types#bubble-chart)

{% endseealso %}

### ColumnDrawMode

It indicates the drawing mode of columns in charts when there are multiple series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
InDepthMode - Columns from different series are drawn at different depths.PlaneMode - Columns from all series are drawn side-by-side.ClusteredMode - Columns from all series are drawn in depth with the same size.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
InDepthMode</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
3D only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, ColumnRange Chart,Bar Chart, BoxAndWhisker Chart, Gantt Chart</td></tr>
</table>

Here is the sample code snippet using ColumnDrawMode in Column Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.ColumnDrawMode = ChartColumnDrawMode.PlaneMode;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ColumnDrawMode = ChartColumnDrawMode.PlaneMode

{% endhighlight %}
{% endtabs %}

[VB.NET]

![Chart Series](Chart-Series_images/Chart-Series_img8.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img9.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img10.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts), [Range Column Chart](/windowsforms/chart/chart-types#column-range-chart),  [BarCharts](/windowsforms/chart/chart-types#bar-charts),  [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart)

{% endseealso %}

### ColumnWidthMode

It specifies the width drawing mode for the columns in a column chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li><b> DefaultWidthMode</b> - The width of the columns will always be calculated to fill the space between columns.</li>
<li><b> FixedWidthMode </b>- The width should be given in Series.Points[i].YValues[1], in pixels. If the width of the columns are not given in point YValues[1], then they are calculated to fill the space between columns.</li>
<li> <b>RelativeWidthMode</b> - Similar to the FixedWidthMode, the width is specified in YValues[1], but in units of X-axis range.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
DefaultWidthMode</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column charts, BoxAndWhiskerChart, Candle Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

ChartSeries series1 = new ChartSeries("Series");

series.Points.Add(1, 24);

series.Points.Add(2, 36);

series.Points.Add(3, 48);

chartControl1.Series.Add(series1);

chartControl1.ColumnWidthMode = ChartColumnWidthMode.DefaultWidthMode;

{% endhighlight %}

{% highlight vb %}

Dim series1 As ChartSeries = New ChartSeries("Series")

series.Points.Add(1, 24)

series.Points.Add(2, 36)

series.Points.Add(3, 48)

chartControl1.Series.Add(series1)

chartControl1.ColumnWidthMode = ChartColumnWidthMode.DefaultWidthMode

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img11.jpeg)

{% tabs %}

{% highlight c# %}

double Interval = this.chartControl1.PrimaryXAxis.Range.Interval;

ChartSeries series = new ChartSeries("Team 1");

// 2nd Y value specifies the column width

series.Points.Add(1, new double[] { 24, Interval * 0.75 });

series.Points.Add(2, new double[] { 36, Interval * 0.75 });

series.Points.Add(3, new double[] { 48, Interval * 0.75 });

this.chartControl1.Series.Add(series);

this.chartControl1.ColumnWidthMode = ChartColumnWidthMode.RelativeWidthMode;

{% endhighlight %}

{% highlight vb %}

Dim Interval As Double = Me.chartControl1.PrimaryXAxis.Range.Interval

Dim series As New ChartSeries("Team 1")

' 2nd Y value specifies the column width

series.Points.Add(1, New Double() { 24, Interval * 0.75 })

series.Points.Add(2, New Double() { 36, Interval * 0.75 })

series.Points.Add(3, New Double() { 48, Interval * 0.75 })

Me.chartControl1.Series.Add(series)

Me.chartControl1.ColumnWidthMode = ChartColumnWidthMode.RelativeWidthMode

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img12.jpeg)

{% tabs %}

{% highlight c# %}

ChartSeries series1 = new ChartSeries("Series");

// 2nd Y value specifies the column width

series1.Points.Add(1, new double[] { 24, 25});

series1.Points.Add(2, new double[] { 36, 25});

series1.Points.Add(3, new double[] { 48, 25});

chartControl1.Series.Add(series1);

chartControl1.ColumnWidthMode = ChartColumnWidthMode.FixedWidthMode;

{% endhighlight %}

{% highlight vb %}

Dim series1 As ChartSeries = New ChartSeries("Series")

' 2nd Y value specifies the column width

series1.Points.Add(1, New Double() { 24, 25})

series1.Points.Add(2, New Double() { 36, 25})

series1.Points.Add(3, New Double() { 48, 25})

chartControl1.Series.Add(series1)

chartControl1.ColumnWidthMode = ChartColumnWidthMode.FixedWidthMode

{% endhighlight %}
{% endtabs %}

N> The width of the column can also be specified by ColumnFixedWidth property. If both second Y value and ColumnFixedWidth are specified, second Y value takes higher priority.

![Chart Series](Chart-Series_images/Chart-Series_img14.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) , [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [ColumnFixedWidth](/windowsforms/chart/chart-series#columnfixedwidth)

{% endseealso %}

### ColumnFixedWidth

It specifies the width of each column when ColumnWidthMode is set to FixedWidthMode.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
An integer value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
20</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
None</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Charts, BoxAndWhiskerChart, Candle Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

ChartSeries series1 = new ChartSeries("Series");

series1.Points.Add(1, new double[] { 24});

series1.Points.Add(2, new double[] { 36});

series1.Points.Add(3, new double[] { 48});

chartControl1.Series.Add(series1);

chartControl1.ColumnWidthMode = ChartColumnWidthMode.FixedWidthMode;

chartControl1.ColumnFixedWidth = 45;

{% endhighlight %}

{% highlight vb %}

Dim series1 As ChartSeries = New ChartSeries("Series")

series1.Points.Add(1, New Double() { 24})

series1.Points.Add(2, New Double() { 36})

series1.Points.Add(3, New Double() { 48})

chartControl1.Series.Add(series1)

chartControl1.ColumnWidthMode = ChartColumnWidthMode.FixedWidthMode

chartControl1.ColumnFixedWidth = 45

{% endhighlight %}
{% endtabs %}

N> The ColumnFixedWidth property can be overridden by specifying a second y value in the data point. See_ ColumnWidthMode _for a sample.

![Chart Series](Chart-Series_images/Chart-Series_img16.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts), [BoxAndWhiskerChart](/windowsforms/chart/chart-types#box-and-whisker-chart), [ColumnWidthMode](/windowsforms/chart/chart-series#columnwidthmode), [Candle Charts](/windowsforms/chart/chart-types#candle-chart)

{% endseealso %}

### ColumnType

It specifies whether the columns should be rendered as bars or cylinders.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Box - Renders the columns as boxes.<br>Cylinder - Renders the columns as cylinders.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Box</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
3D only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, Column Range Chart, Stacking Column Chart, Candle Chart, Bar Chart, Stacking Bar Chart</td></tr>
</table>

Here is some sample.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.ColumnItem.ColumnType = ChartColumnType.Cylinder;

this.chartControl1.Series[1].ConfigItems.ColumnItem.ColumnType = ChartColumnType.Box;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.ColumnItem.ColumnType = ChartColumnType.Cylinder

Me.chartControl1.Series(1).ConfigItems.ColumnItem.ColumnType = ChartColumnType.Box

{% endhighlight %}
{% endtabs %}

[VB.NET]

![Chart Series](Chart-Series_images/Chart-Series_img17.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts), [Column Range Chart](/windowsforms/chart/chart-types#column-range-chart),  [Stacking Column Chart](/windowsforms/chart/chart-types#stacking-column-chart),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart),  [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Stacking Bar Chart](/windowsforms/chart/chart-types#stacking-bar-chart)

{% endseealso %}

### ColorsMode

Gets / sets ColorsMode of the boxes in the financial chart types.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> <b>DarkLight</b> -Draws series data points as a dark light colors mode.</li><li> <b>Fixed</b> - Draws series data points as a Fixed color mode.</li><li> <b>Mixed</b> - Draws series data points as a Mixed colors mode.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Fixed</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
None</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Renko Chart (Financial Chart)</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Setting ColorsMode for series

this.chartControl1.Series[0].ConfigItems.FinancialItem.ColorsMode = ChartFinancialColorMode.DarkLight;

{% endhighlight %}

{% highlight vb %}

' Setting ColorsMode for series

Me.chartControl1.Series(0).ConfigItems.FinancialItem.ColorsMode = ChartFinancialColorMode.DarkLight

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img18.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img19.jpeg)

{% seealso %}

[Renko Chart](/windowsforms/chart/chart-types#renko-chart)

{% endseealso %}

### DarkLightPower

Gets or sets the intensity of the dark and light colors used in DarkLight color mode.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Ranges from 0 to 255 bytes</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
100</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Renko Chart (Financial Charts)</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Setting ColorsMode as DarkLight

this.chartControl1.Series[0].ConfigItems.FinancialItem.ColorsMode = ChartFinancialColorMode.DarkLight;

// Setting the power value of the dark light

this.chartControl1.Series[0].ConfigItems.FinancialItem.DarkLightPower = 200;

{% endhighlight %}

{% highlight vb %}

' Setting ColorsMode as DarkLight

Me.chartControl1.Series(0).ConfigItems.FinancialItem.ColorsMode = ChartFinancialColorMode.DarkLight

' Setting the power value of the dark light

Me.chartControl1.Series(0).ConfigItems.FinancialItem.DarkLightPower = 200

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img20.jpeg)

{% seealso %}

[Renko Chart](/windowsforms/chart/chart-types#renko-chart)

{% endseealso %}

### DisplayShadow

It specifies if shadow should be displayed for the series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True, False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
Only 2D</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area Chart, Bar Chart, Bubble Chart, Column Chart, Stacking Column Chart, Stacking Column100 Chart, Line Chart, Spline Chart, Rotated Spline chart, Stepline Chart, Candle Chart, Kagi Chart, Point and Figure Chart, Renko Chart, Three line Break Charts, Gantt Chart, Histogram chart, Tornado Chart, Combination Chart, Box and Whisker Chart, Pie Chart, Polar And Radar Chart, Step Area Chart</td></tr>
</table>

Here is some sample code.

### Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Style.DisplayShadow = true;

//To display shadow for specific data points use Styles[]

series1.Styles[0].DisplayShadow = true;

{% endhighlight %}

{% highlight vb %}

'To display shadow for specific data points use Styles[]

series1.Styles(0).DisplayShadow = True

Me.chartControl1.Series(0).Style.DisplayShadow = True

{{ '![Chart Series](Chart-Series_images/Chart-Series_img21.jpeg)' | markdownify }}

{% endhighlight %}
{% endtabs %}

### Specific Data Point Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Styles[0].DisplayShadow = true;

this.chartControl1.Series[0].Styles[1].DisplayShadow = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Styles(0).DisplayShadow = True

Me.chartControl1.Series(0).Styles(1).DisplayShadow = True

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Line Charts](/windowsforms/chart/chart-types#line-charts), [AreaChart](/windowsforms/chart/chart-types#area-chart), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Column Charts](/windowsforms/chart/chart-types#column-charts) ,  [Stacking Column Chart](/windowsforms/chart/chart-types#stacking-column-chart), [StackedColumn100Chart](/windowsforms/chart/chart-types#stacked-column100-chart), [BarCharts](/windowsforms/chart/chart-types#bar-charts), [PieChart](/windowsforms/chart/chart-types#pie-chart),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Kagi Chart](/windowsforms/chart/chart-types#kagi-chart), [PointAndFigure Chart](/windowsforms/chart/chart-types#point-and-figure-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Combination Chart](/windowsforms/chart/chart-types#combination-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart), [Step Area chart] (/windowsforms/chart/chart-types#step-area-chart)

{% endseealso %}

### DisplayText

It indicates whether a label indicating the data point value should be displayed at the data points.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True, False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart types</td></tr>
</table>

Here is some sample code.

### Series wide setting

{% tabs %}

{% highlight c# %}

// Enabling DisplayText

this.chartControl1.Series[0].Style.DisplayText = true;

this.chartControl1.Series[0].Style.TextColor = Color.LightSlateGray;

{% endhighlight %}

{% highlight vb %}

 ' Enabling DisplayText

Me.chartControl1.Series(0).Style.DisplayText = True

Me.chartControl1.Series(0).Style.TextColor = Color.LightSlateGray

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img22.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img23.jpeg)

### Accumulation label style

Using the `LabelStyle` property, you can place labels. The labels can be placed in the following positions:

* Inside
* Outside
* OutsideInArea
* OutsideInColumn.

{% tabs %}

{% highlight c# %}

// DisplayText position

series.ConfigItems.PieItem.LabelStyle = ChartAccumulationLabelStyle.Inside;

{% endhighlight %}

{% highlight vb %}

 ' DisplayText position

 series.ConfigItems.PieItem.LabelStyle = ChartAccumulationLabelStyle.Inside;

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img171.jpeg)

## Callout Labels

Callout data label is used to customize the text dynamically. It allows you to drag and drop the data label in any place of chart area and edit text by double clicking on the callout data label.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Callout setting object</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
* Enable – False

* Text - string.Empty

* TextOffset – 2.5f

* Font – ChartFontInfo()

* DisplayTextAndFormat - "{1},{2}"

* Position - LabelPosition.Top

* OffsetX – 0

* OffsetY – 0

* Color – HighlightText

* TextColor – WindowText

* Border - ChartLineInfo</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area chart, bar chart, scatter chart, bubble chart, column chart, stacking column chart, stacking column100 chart, line chart, spline chart, rotated spline chart, stepLine chart, candle chart, HiLo chart, HiLoOpenClose chart, combination chart, pie chart.</td></tr>
</table>

By using "DisplayTextAndFormat", you can customize the text displayed in the callout.

* {0} - displays the series name in callout.
* {1} - displays the x-value of the corresponding point in callout.
* {2} - displays the y-value of the corresponding point in callout. Default format for callout is "{0},{1}".

The following code sample demonstrates how to customize the text displayed in callout.

{% tabs %}

{% highlight c# %}

// Specified 3D View

this.chartControl1.Series3D = true;

// Enable Callout Feature

this.chartControl1.Series[0].Style.Callout.Enable = true;

// Change position, DisplayText format and color

this.chartControl1.Series[0].Style.Callout.DisplayTextAndFormat = "{1}: {2}";

this.chartControl1.Series[0].Style.Callout.Position = LabelPosition.Top;

this.chartControl1.Series[0].Style.Callout.Color = Color.LightBlue;

// Customize Text Font

this.chartControl1.Series[0].Style.Callout.Font.FontStyle = FontStyle.Underline;

this.chartControl1.Series[0].Style.Callout.TextColor = Color.Black;

this.chartControl1.Series[0].Style.Callout.Font.Size = 11;

{% endhighlight %}

{% highlight vb %}

' Specified 3D View

            Me.chartControl1.Series3D = True

' Enable Callout Feature

           Me.chartControl1.Series(0).Style.Call.Enable = True

 ' Change position, DisplayText format and color

            Me.chartControl1.Series(0).Style.Call.DisplayTextAndFormat = "{1}: {2}"

            Me.chartControl1.Series(0).Style.Call.Position = LabelPosition.Top

            Me.chartControl1.Series(0).Style.Call.Color = Color.LightBlue

 ' Customize Text Font

            Me.chartControl1.Series(0).Style.Call.Font.FontStyle = FontStyle.Underline

            Me.chartControl1.Series(0).Style.Call.TextColor = Color.Black

            Me.chartControl1.Series(0).Style.Call.Font.Size = 11

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img158.png)

### Specific Data Point Setting

To specify text for specific points, use the below code.

{% tabs %}
{% highlight c# %}

// Enabling DisplayText for the first data point

this.chartControl1.Series[0].Styles[0].DisplayText = true;

this.chartControl1.Series[0].Styles[0].TextColor = Color.LightSlateGray;

{% endhighlight %}

{% highlight vb %}

'Enabling DisplayText for the first data point

Me.chartControl1.Series(0).Styles(0).DisplayText = True

Me.chartControl1.Series(0).Styles(0).TextColor = Color.LightSlateGray

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{%endseealso %}

### DoughnutCoefficient

Specifies the percentage of the overall radius of the chart that will be used for the Doughnut center hole. For example, if it is set to 0, the doughnut hole will not exist, therefore, the chart will look like a Pie chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Ranges from 0.0 to 0.9</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
0</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No.</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series.</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Doughnut Chart, Pie Chart.</td></tr>
</table>

PieCharts with a DoughnutCoefficient specified will be rendered as doughnut. By default, this value is set to 0.0 and hence the chart will be rendered as a full pie.

The DoughnutCoefficient property specifies the fraction of the radius occupied by the doughnut whole. Hence the value can range from 0.0 to 0.9.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PieItem.DoughnutCoefficient = 0.5f;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PieItem.DoughnutCoefficient = 0.5f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img24.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### DrawColumnSeparatingLines

The drawing of separating line between columns is controlled by this property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart and Bar Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].DrawColumnSeparatingLines = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).DrawColumnSeparatingLines = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img25.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts),  [BarCharts](/windowsforms/chart/chart-types#bar-charts)

{% endseealso %}

### DrawErrorBars

Error Bars are used to indicate a degree of uncertainty in the plotted data through a bar indicating an "error range".

The 2nd y value is used to indicate the error range. For example, a value of 5 indicates an error range of -5 to +5 from the specified y value.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, Line Chart and HiLo Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Generating Series

ChartSeries series = new ChartSeries("Sales", ChartSeriesType.Column);

// 2nd Y value indicates the error range

series.Points.Add(1, new double[] { 20, 5 });

series.Points.Add(2, new double[] { 70, 6 });

series.Points.Add(3, new double[] { 10, 3 });

series.Points.Add(4, new double[] { 40, 6 });

series.Text = series.Name;

// Specifies the error bar in the column chart.

series.ConfigItems.ErrorBars.Enabled = true;

// Adding the series to the chart

this.chartControl1.Series.Add(series);

{% endhighlight %}

{% highlight vb %}

' Generating Series

series As New ChartSeries("Sales", ChartSeriesType.Column)

' 2nd Y value indicates the error range

series.Points.Add(1, New Double() { 20, 5 })

series.Points.Add(2, New Double() { 70, 6 })

series.Points.Add(3, New Double() { 10, 3 })

series.Points.Add(4, New Double() { 40, 6 })

series.Text = series.Name

' Specifies the error bar in the column chart.

series.ConfigItems.ErrorBars.Enabled = True


' Adding the series to the chart

Me.chartControl1.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img26.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img27.jpeg)

### ErrorBar Orientation

Orientation of the ErrorBars can be specified in the ErrorBars.Orientation property. It can be _Vertical_ or _Horizontal_.

{% tabs %}

{% highlight c# %}

//Creates a New Series

ChartSeries s1 = new ChartSeries("series");

//Points for the Series

s1.Points.Add(10, new double[] {20, 2, 2});

s1.Points.Add(20, new double[] {70, 2, 2});

s1.Points.Add(30, new double[] {10, 2, 2});

s1.Points.Add(40, new double[] {40, 2, 2});

s1.Points.Add(40, new double[] {40, 2, 2});

s1.Text = s1.Name;

//Type of Series

s1.Type = ChartSeriesType.Line;

s1.ConfigItems.ErrorBars.Enabled = true;

// Set the orientation to horizontal

s1.ConfigItems.ErrorBars.Orientation = ChartOrientation.Horizontal;

s1.ConfigItems.ErrorBars.SymbolShape = ChartSymbolShape.None;

s1.Style.Interior = new Syncfusion.Drawing.BrushInfo(Color.Red);

this.chartControl1.PrimaryXAxis.DrawGrid = false;

this.chartControl1.PrimaryYAxis.DrawGrid = false;

this.chartControl1.Series.Add(s1);

{% endhighlight %}

{% highlight vb %}

'Creates a New Series

Dim s1 As New ChartSeries("series")

'Points for the Series

s1.Points.Add(10, New Double() {20, 2, 2})

s1.Points.Add(20, New Double() {70, 2, 2})

s1.Points.Add(30, New Double() {10, 2, 2})

s1.Points.Add(40, New Double() {40, 2, 2})

s1.Points.Add(40, New Double() {40, 2, 2})

s1.Text = s1.Name

'Type of Series

s1.Type = ChartSeriesType.Line

s1.ConfigItems.ErrorBars.Enabled = True

' Set the orientation to horizontal

s1.ConfigItems.ErrorBars.Orientation = ChartOrientation.Horizontal

s1.ConfigItems.ErrorBars.SymbolShape = ChartSymbolShape.None

s1.Style.Interior = New Syncfusion.Drawing.BrushInfo(Color.Red)

Me.chartControl1.PrimaryXAxis.DrawGrid = False

Me.chartControl1.PrimaryYAxis.DrawGrid = False

Me.chartControl1.Series.Add(s1)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img28.jpeg)

{% seealso %}

[Line Charts](/windowsforms/chart/chart-types#line-charts), [Column Charts](/windowsforms/chart/chart-types#column-charts),  [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart), [SymbolShape](/windowsforms/chart/chart-series#symbolshape)

{% endseealso %}

### ShowNormalDistribution

The normal distribution curve is drawn by setting this property of the ChartSeries class to true.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Histogram Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// This draws the normal distribution curve for the histogram chart.

series2.ConfigItems.HistogramItem.ShowNormalDistribution = true;

// Set the desired number of intervals required for the histogram chart.

series2.ConfigItems.HistogramItem.NumberOfIntervals = 10;

{% endhighlight %}

{% highlight vb %}

' This draws the normal distribution curve for the histogram chart.

series2.ConfigItems.HistogramItem.ShowNormalDistribution = True

' Set the desired number of intervals required for the histogram chart.

series2.ConfigItems.HistogramItem.NumberOfIntervals = 10

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img29.jpeg)

{% seealso %}

[Histogram chart](/windowsforms/chart/chart-types#histogram-chart)

{% endseealso %}

### DrawSeriesNameInDepth

Indicates whether to draw series name at opposed position to origin, along x-axis.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
3D Only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All chart types</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Specified 3D View

this.chartControl1.Series3D = true;

// Setting Text Format

this.chartControl1.Series[0].Style.Font.FontStyle = FontStyle.Underline;

this.chartControl1.Series[0].Style.TextColor = Color.Black;

this.chartControl1.Series[0].Style.Font.Size = 7;

this.chartControl1.Series[0].Style.Font.Facename = "Times New Roman";

// Set SeriesNameDepth as True

this.chartControl1.Series[0].DrawSeriesNameInDepth = true;

{% endhighlight %}

{% highlight vb %}

' Specified 3D View

Me.chartControl1.Series3D = True

' Setting Text Format

Me.chartControl1.Series(0).Style.Font.FontStyle = FontStyle.Underline

Me.chartControl1.Series(0).Style.TextColor = Color.Black

Me.chartControl1.Series(0).Style.Font.Size = 7

Me.chartControl1.Series(0).Style.Font.Facename = "Times New Roman"

' Set SeriesNameDepth as True

Me.chartControl1.Series(0).DrawSeriesNameInDepth = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img30.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### DropSeriesPoints

The chart also provides you an option to drop some points (by not drawing some points) while rendering large number of chart points.

You can enable this, by setting the DropSeriesPoints property to true.

{% tabs %}

{% highlight c# %}

this.chartControl1.DropSeriesPoints = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.DropSeriesPoints = True

{% endhighlight %}
{% endtabs %}

### ElementBorders

Gets / sets the border settings for elements associated with the chart point. You can specify the inner and outer border. It is currently used only by symbols rendered by the ChartPoint (inherited from ChartStyleInfo).

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Border setting object</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
<ul><li> Weight – Thin</li><li> Width value – 1</li><li> Style - Standard</li></ul></td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area Charts, Bar Charts, Bubble Chart, Column Charts, Line  Charts, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Tornado Chart, Polar and Radar Chart</td></tr>
</table>

Here is some sample code.

### Series Wide Setting

{% tabs %}

{% highlight c# %}

// Setting Symbol for the ChartSeries

this.chartControl1.Series[0].Style.Symbol.Color = Color.Yellow;

this.chartControl1.Series[0].Style.Symbol.Shape = ChartSymbolShape.InvertedTriangle;

// Setting ElementBorder for a symbol

ChartBordersInfo border = new ChartBordersInfo();

border.Outer = new ChartBorder(ChartBorderStyle.Solid, Color.White);

border.Inner = new ChartBorder(ChartBorderStyle.DashDot, Color.Cyan);

this.chartControl1.Series[0].Style.ElementBorders = border;

{% endhighlight %}

{% highlight vb %}

' Setting Symbol for the ChartSeries

Me.chartControl1.Series(0).Style.Symbol.Color = Color.Yellow

Me.chartControl1.Series(0).Style.Symbol.Shape = ChartSymbolShape.InvertedTriangle

' Setting ElementBorder for a symbol

border As ChartBordersInfo = New ChartBordersInfo()

border.Outer = New ChartBorder(ChartBorderStyle.Solid, Color.White)

border.Inner = New ChartBorder(ChartBorderStyle.DashDot, Color.Cyan)

Me.chartControl1.Series(0).Style.ElementBorders = border

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img31.jpeg)

### Specific Data Point Setting

{% tabs %}

{% highlight c# %}

//Specifying element border for the first data point Styles(0), second data point Styles(1) and so on..

this.chartControl1.Series[0].Styles[0].ElementBorders = border;

{% endhighlight %}

{% highlight vb %}

'Specifying element border for the first data point Styles(0), second data point Styles(1) and so on..

this.chartControl1.Series(0).Styles(0).ElementBorders = border

{% endhighlight %}
{% endtabs %}

{% seealso %}

[AreaChart](/windowsforms/chart/chart-types#area-chart), [Bar Charts](/windowsforms/chart/chart-types#bar-charts), [Bubble Chart](/windowsforms/chart/chart-types#bubble-chart), [Column Charts](/windowsforms/chart/chart-types#column-charts) , [Line Charts](/windowsforms/chart/chart-types#line-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Renko chart](/windowsforms/chart/chart-types#renko-chart), [Three Line Break Chart](/windowsforms/chart/chart-types#three-line-break-chart),

[Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart)

{% endseealso %}

### EnablePhongStyle

Specifies if the phong style is enabled.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
True</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Bubble Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.BubbleItem.EnablePhongStyle = false;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.BubbleItem.EnablePhongStyle = False

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img32.jpeg)

{% seealso %}

[Bubble Charts](/windowsforms/chart/chart-types#bubble-chart)

{% endseealso %}

### EnableAreaToolTip

To display proper tooltip for the Area charts, use the Series.EnableAreaToolTip property. When this property is enabled, the series index and the point index will be returned, which will be suitable for the various PointsToolTipFormats also.

This splits up the region between two points into two parts while hovering the mouse on the region and displays the tooltip with respect to the nearby chart point.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].EnableAreaToolTip = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).EnableAreaToolTip = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img33.jpeg)

### SymbolShape

This property determines the shape of the error bar symbol when DrawErrorBars is true.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> <b>None</b> - No marker will be shown.</li><li> <b>Line</b> - A Line will be drawn as the marker.</li><li><b>Square</b> - A Square will be drawn as the marker.</li><li> <b>Circle</b> - A Circle will be drawn as the marker.</li><li> <b>Diamond</b> - A Diamond will be drawn as the marker.</li><li> <b>Triangle</b> - A Triangle will be drawn as the marker.</li><li> <b>VertLine</b> - A VerticalLine will be drawn as the marker.</li><li><b> Cross</b> - A Cross will be drawn as the marker.</li><li><b> Hexagon</b> - An Hexagon will be drawn as the marker.</li><li> <b>HorizLine</b> - An Horizontal Line will be drawn as the marker.</li><li><b> Image</b> - An Image will be drawn as the marker.</li><li> <b>InvertedTriangle</b> - A InvertedTriangle will be drawn as the marker.</li><li><b>Pentagon</b> - A Pentagon will be drawn as the marker.</li><li><b>Star</b> - A Star will be drawn as the marker.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Diamond</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Line Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

series.ConfigItems.ErrorBars.Enabled = true;

series.ConfigItems.ErrorBars.SymbolShape = ChartSymbolShape.Circle;

{% endhighlight %}

{% highlight vb %}

Me.series.ConfigItems.ErrorBars.Enabled = true

Me.series.ConfigItems.ErrorBars.SymbolShape = ChartSymbolShape.Circle

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img34.jpeg)

{% seealso %}

[Line Charts](/windowsforms/chart/chart-types#line-charts), [DrawErrorBars](/windowsforms/chart/chart-series#drawerrorbars)

{% endseealso %}

### ExplodedAll

Indicates whether to explode all slice in the Pie or Doughnut chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True, False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart, Doughnut Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ExplodedAll = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ExplodedAll = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img35.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### ExplodedIndex

Gets / sets the Index point that is to be used when a point is to be exploded from the main display.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
An integer indicating the index of the slice to be exploded.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
-1</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart, Doughnut Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ExplodedIndex = 0;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ExplodedIndex = 0

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img36.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### ExplosionOffset

Gets / sets the offset value that is to be used when slices are to be exploded in a pie chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Float type values</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
20</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart, Doughnut Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ExplodedAll = true;

this.chartControl1.Series[0].ExplosionOffset = 30f;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series[0].ExplodedAll = True

Me.chartControl1.Series(0).ExplosionOffset = 30f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img37.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### FancyToolTip

Defines the styles for a fancy tooltip. These styles include font, marker style, symbol shape, back color and other related styles.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Specifies symbol, symbol styles for the ToolTip.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
<ul><li> Visible - False</li><li> Angle  - 15</li><li> Alignment - Left</li><li>ForeColor - Color.Black</li><li> BackColor - Color.Info</li><li> SymbolColor - Color.Red</li><li> Font - Arial, 8 pt</li><li>Symbol Size - (10,10)</li><li>Symbol - Circle</li><li> Style - SmoothRectangle</li></ul></td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].FancyToolTip.Angle = 180;

this.chartControl1.Series[0].FancyToolTip.Style = MarkerStyle.SmoothRectangle;

this.chartControl1.Series[0].FancyToolTip.Symbol = ChartSymbolShape.Hexagon;

this.chartControl1.Series[0].FancyToolTip.Visible = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).FancyToolTip.Angle = 180

Me.chartControl1.Series(0).FancyToolTip.Style = MarkerStyle.SmoothRectangle

Me.chartControl1.Series(0).FancyToolTip.Symbol = ChartSymbolShape.Hexagon

Me.chartControl1.Series(0).FancyToolTip.Visible = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img38.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### FigureBase

Specifies the drawing style for the funnel or pyramid chart base.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Circle - Renders the chart with a circular base.</li><li> Square - Renders the chart with a square base.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
* Funnel Chart - Circle* Pyramid Chart - Square</td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
3D Only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Funnel and Pyramid</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Setting FigureBase For Pyramid Chart

this.chartControl1.Series[0].ConfigItems.PyramidItem.FigureBase = ChartFigureBase.Circle;

this.chartControl1.Series[0].ConfigItems.PyramidItem.FigureBase = ChartFigureBase.Square;

// Setting FigureBase For Funnel Chart

this.chartControl1.Series[0].ConfigItems.FunnelItem.FigureBase = ChartFigureBase.Circle;

this.chartControl1.Series[0].ConfigItems.FunnelItem.FigureBase = ChartFigureBase.Square;

{% endhighlight %}

{% highlight vb %}

' Setting FigureBase For Pyramid

Me.chartControl1.Series(0).ConfigItems.PyramidItem.FigureBase=ChartFigureBase.Circle

Me.chartControl1.Series(0).ConfigItems.PyramidItem.FigureBase=ChartFigureBase.Square

' Setting FigureBase For Funnel Chart

Me.chartControl1.Series(0).ConfigItems.FunnelItem.FigureBase = ChartFigureBase.Circle

Me.chartControl1.Series(0).ConfigItems.FunnelItem.FigureBase = ChartFigureBase.Square

{% endhighlight %}
{% endtabs %}

### Pyramid Chart

![Chart Series](Chart-Series_images/Chart-Series_img39.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img40.jpeg)

### Funnel Chart

![Chart Series](Chart-Series_images/Chart-Series_img41.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img42.jpeg)

{% seealso %}

[Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart),[Funnel Chart](/windowsforms/chart/chart-types#funnel-chart)

 {% endseealso %}

### FillMode

Specifies how the slice interior should be filled with gradient colors.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> AllPie - Controls the interior shape style of All PieItem.</li><li> EveryPie - Controls the interior shape style of Every PieItem.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
AllPie</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Setting Pie type

this.chartControl1.Series[0].ConfigItems.PieItem.PieType = ChartPieType.Round;

// Setting the interiors of shapes in this GraphicsPath object are filled.

this.chartControl1.Series[0].ConfigItems.PieItem.FillMode = ChartPieFillMode.EveryPie;

{% endhighlight %}

{% highlight vb %}

' Setting Pie type

Me.chartControl1.Series(0).ConfigItems.PieItem.PieType = ChartPieType.Round

' Setting the interiors of shapes in this GraphicsPath object are filled.

Me.chartControl1.Series(0).ConfigItems.PieItem.FillMode = ChartPieFillMode.EveryPie

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img43.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img44.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### FunnelMode

Gets or sets the chart funnel mode.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> YIsWidth - DataPoint y-value controls the radius of the funnel segment. </li><li>YIsHeight - DataPoint y-value controls the height of the funnel segment.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
YIsHeight</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Funnel Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.FunnelItem.FunnelMode = ChartFunnelMode.YIsHeight;

this.chartControl1.Series[0].ConfigItems.FunnelItem.FunnelMode = ChartFunnelMode.YIsWidth;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.FunnelItem.FunnelMode = ChartFunnelMode.YIsHeight

Me.chartControl1.Series(0).ConfigItems.FunnelItem.FunnelMode = ChartFunnelMode.YIsWidth

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img45.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img46.jpeg)

{% seealso %}

[Funnel Chart](/windowsforms/chart/chart-types#funnel-chart)

{% endseealso %}

### Font

Gets or sets a font object used for drawing the data point labels.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Specifying font face, size and style.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
<ul><li> FontStyle - Regular</li><li> Face Name - Microsoft Sans Serif</li><li> Size -  8.25</li></ul></td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart types</td></tr>
</table>

Here is some sample code.

Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Style.DisplayText = true;

this.chartControl1.Series[0].Style.Font.Bold = true;

this.chartControl1.Series[0].Style.Font.Facename = "Arial";

this.chartControl1.Series[0].Style.Text = "Series 1";

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Style.DisplayText = True

Me.chartControl1.Series(0).Style.Font.Bold = True

Me.chartControl1.Series(0).Style.Font.Facename = "Arial"

Me.chartControl1.Series(0).Style.Text = "Series 1"

{% endhighlight %}
{% endtabs %}

### Specific Data Point Setting

{% tabs %}

{% highlight c# %}

//font style set for first data point

this.chartControl1.Series[0].Styles[0].Font.Bold = true;

this.chartControl1.Series[0].Styles[0].Font.Facename = "Arial";

{% endhighlight %}

{% highlight vb %}

'font style set for first data point

Me.chartControl1.Series(0).Styles(0).Font.Bold = True

Me.chartControl1.Series(0).Styles(0).Font.Facename = "Arial"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img47.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### GanttDrawMode

Specifies the drawing mode of Gantt chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> AutoSizeMode - Plots the Gantt Chart side by side.</li><li> CustomPointWidthMode - Plots the Gantt Chart as Overlapped.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
CustomPointWidthMode</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
None</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Gantt Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Specifies GanttDrawMode as CustomPointWidthMode

this.chartControl1.Series[0].GanttDrawMode = ChartGanttDrawMode.CustomPointWidthMode;

this.chartControl1.Series[0].Style.PointWidth = 0.7f;

this.chartControl1.Series[1].GanttDrawMode = ChartGanttDrawMode.CustomPointWidthMode;

this.chartControl1.Series[1].Style.PointWidth = 1f;

{% endhighlight %}

{% highlight vb %}

' Specifies GanttDrawMode as CustomPointWidthMode

Me.chartControl1.Series(0).GanttDrawMode = ChartGanttDrawMode.CustomPointWidthMode

Me.chartControl1.Series(0).Style.PointWidth = 0.7f

Me.chartControl1.Series(1).GanttDrawMode = ChartGanttDrawMode.CustomPointWidthMode

Me.chartControl1.Series(1).Style.PointWidth = 1f

{% endhighlight %}
{% endtabs %}

{% tabs %}

{% highlight c# %}

// Specifies GanttDrawMode as AutoSizeMode

this.chartControl1.Series[0].GanttDrawMode = ChartGanttDrawMode.AutoSizeMode;

this.chartControl1.Series[1].GanttDrawMode = ChartGanttDrawMode.AutoSizeMode;

{% endhighlight %}

{% highlight vb %}

' Specifies GanttDrawMode as AutoSizeMode

Me.chartControl1.Series(0).GanttDrawMode = ChartGanttDrawMode.AutoSizeMode

Me.chartControl1.Series(1).GanttDrawMode = ChartGanttDrawMode.AutoSizeMode

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img48.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img49.jpeg)

{% seealso %}

[Gantt Chart](/windowsforms/chart/chart-types#gantt-chart)

{% endseealso %}

### GapRatio

Gets or sets the gap size between funnel chart or pyramid chart segments. Default value is 0.0. The maximum gap size is limited by the number of points.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Ranges from 0.0</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
0</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Funnel Chart, Pyramid Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Setting GapRatio for Funnel Chart

this.chartControl1.Series[0].ConfigItems.FunnelItem.GapRatio = 0.1f;

// Setting GapRatio for Pyramid Chart

this.chartControl1.Series[0].ConfigItems.PyramidItem.GapRatio = 0.1f;

{% endhighlight %}

{% highlight vb %}

' Setting GapRatio for Funnel Chart

Me.chartControl1.Series(0).ConfigItems.FunnelItem.GapRatio = 0.1f

' Setting GapRatio for Pyramid Chart

Me.chartControl1.Series(0).ConfigItems.PyramidItem.GapRatio = 0.1f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img50.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img51.jpeg)

{% seealso %}

[Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart), [Funnel Chart](/windowsforms/chart/chart-types#funnel-chart)

{% endseealso %}

### Gradient

Gets / sets ColorBlend for a pie item. ColorBlend defines arrays of colors and positions used for interpolating color blending in a multicolor gradient.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A ColorBlend object</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

series.ConfigItems.PieItem.PieType = ChartPieType.Custom;

ColorBlend color = new ColorBlend();

color.Positions = new float[] { 0f, 0.05f, 1f };

color.Colors = new Color[] { Color.SteelBlue, Color.LightSteelBlue, Color.AliceBlue };

// Specifying Gradient Style

series.ConfigItems.PieItem.Gradient = color;

{% endhighlight %}

{% highlight vb %}

series.ConfigItems.PieItem.PieType = ChartPieType.Custom

Private color As ColorBlend = New ColorBlend()

color.Positions = New Single() { 0f, 0.05f, 1f }

color.Colors = New Color() { Color.SteelBlue, Color.LightSteelBlue, Color.AliceBlue }

' Specifying Gradient Style

series.ConfigItems.PieItem.Gradient = color

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img52.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### HeightBox

Gets / sets the height of the boxes in the financial chart types.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A double value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
1</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Point And Figure Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].HeightBox = 2f;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).HeightBox = 2f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img53.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img54.jpeg)

{% seealso %}

[PointAndFigure Chart](/windowsforms/chart/chart-types#point-and-figure-chart)

{% endseealso %}

### HeightByAreaDepth

Indicates whether to draw series using the ChartArea.Depth property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
3D Only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PieItem.HeightByAreaDepth = true;

this.chartControl1.ChartArea.Depth = 25f;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PieItem.HeightByAreaDepth = True

Me.chartControl1.ChartArea.Depth = 25f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img55.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img56.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### HeightCoefficient

When in 3D mode, the relative height of the pie chart can be specified via the property. Note that the HeightByAreaDepth property should be set as false for this to take effect.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Valid Ranges From 0 to 1</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
0.2</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
3D Only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart</td></tr>
</table>

Here is the sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PieItem.HeightByAreaDepth = false;

this.chartControl1.Series[0].ConfigItems.PieItem.HeightCoefficient = 0.1f;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PieItem.HeightByAreaDepth = False

Me.chartControl1.Series(0).ConfigItems.PieItem.HeightCoefficient=0.1f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img57.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### HighlightInterior

The auto highlight color for any series can be changed by setting the color at the HighlightInterior property of ChartStyleInfo class.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
RBG values ranges from 0 to 255</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Bar Charts, Pie, Funnel, Pyramid,Bubble, Column, Area, Stacking Area, Stacking Area100, Line Charts, Box and Whisker, Gantt Chart , Tornado Chart, Polar And Radar Chart, Hi Lo Chart, Hi Lo Open Close Chart</td></tr>
</table>

Here is some sample code.

Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.AutoHighlight = true;

ChartSeries series1 = this.chartControl1.Series[0];

series1.Style.HighlightInterior = new BrushInfo(GradientStyle.ForwardDiagonal, Color.Red, Color.White);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.AutoHighlight = True

Dim series1 As ChartSeries = Me.chartControl1.Series(0)

series1.Style.HighlightInterior = New BrushInfo(GradientStyle.ForwardDiagonal, Color.Red, Color.White)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img58.jpeg)

### Specific Data Point Setting

To set interior color for individual highlighted datapoints,

{% tabs %}  {% highlight c# %}

series1.Styles[0].HighlightInterior = new BrushInfo(GradientStyle.ForwardDiagonal, Color.Red, Color.White);

series1.Styles[1].HighlightInterior = new BrushInfo(GradientStyle.ForwardDiagonal, Color.Green, Color.White);

series1.Styles[2].HighlightInterior = new BrushInfo(GradientStyle.ForwardDiagonal, Color.Yellow, Color.White);

series1.Styles[3].HighlightInterior = new BrushInfo(GradientStyle.ForwardDiagonal, Color.Pink, Color.White);

{% endhighlight %}

{% highlight vb %}

series1.Styles(0).HighlightInterior = New BrushInfo(GradientStyle.ForwardDiagonal, Color.Red, Color.White)

series1.Styles(1).HighlightInterior = New BrushInfo(GradientStyle.ForwardDiagonal, Color.Green, Color.White)

series1.Styles(2).HighlightInterior = New BrushInfo(GradientStyle.ForwardDiagonal, Color.Yellow, Color.White)

series1.Styles(3).HighlightInterior = New BrushInfo(GradientStyle.ForwardDiagonal, Color.Pink, Color.White)

{% endhighlight %}
{% endtabs %}

{% seealso %}

 [BarCharts](/windowsforms/chart/chart-types#bar-charts), [PieChart](/windowsforms/chart/chart-types#pie-chart),  [Funnel Chart](/windowsforms/chart/chart-types#funnel-chart),  [Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart),[Column Charts](/windowsforms/chart/chart-types#column-charts),[AreaChart](/windowsforms/chart/chart-types#area-chart), [Stacking Area Chart](/windowsforms/chart/chart-types#stacking-area-chart), [Stacking Area100 Chart](/windowsforms/chart/chart-types#stackedarea100-chart), [Line Charts](/windowsforms/chart/chart-types#line-charts), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart), [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart), [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)

 {% endseealso %}

### HitTestRadius

HitTestRadius property controls the circle around this point, which will be considered within the bounds of this point for hit-testing purposes. The ChartRegion events such as ChartRegionClick, ChartRegionMouseDown, ChartRegionMouseHover, ChartRegionMouseLeave, ChartRegionMouseMove and ChartRegionMouseEnter, are being affected by this property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A double values</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
7.5</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
None</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Line Chart and Step Line Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Specifies the circle radius around the point for HitTest

this.chartControl1.Series[0].Style.HitTestRadius = 20;

// ChartClick Event will be fired if clicked within the above circle

void chartControl1_ChartRegionClick(object sender, Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs e)

{

  // Message appears when User hits the test radius region

  if (e.Region.IsChartPoint)

  {

    MessageBox.Show("Point is Hit");

  }

}

{% endhighlight %}

{% highlight vb %}

' Specifies the circle radius around the point for HitTest

Me.chartControl1.Series(0).Style.HitTestRadius = 20

' ChartClick Event will be fired if clicked within the above circle

Private Sub chartControl1_ChartRegionClick(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Chart.ChartRegionMouseEventArgs)

' Message appears when User hits the test radius region

If e.Region.IsChartPoint Then

MessageBox.Show("Point is Hit")

End If

End Sub

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img59.jpeg)

{% seealso %}

[Line Charts](/windowsforms/chart/chart-types#line-charts) , [StepLineChart](/windowsforms/chart/chart-types#step-line-chart), [ChartRegionClick Events](/windowsforms/chart/chart-control-events#chart-region-events)

{% endseealso %}

### ImageIndex

Gets / sets the image index from the associated ImageList property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A numeric value indicating an index of the image list.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area Charts, Bar Charts, Bubble Chart, Column Charts, Line  Charts, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Tornado Chart, Polar and Radar Chart</td></tr>
</table>

Here is some sample code.

### Series Wide Setting

{% tabs %}

{% highlight c# %}

// Setting Images For the Series1

series1.Style.Images = new ChartImageCollection(this.imageList1.Images);

series1.Style.Symbol.ImageIndex = 0;

series1.Style.Symbol.Size = new Size(20, 20);

series1.Style.Symbol.Shape = ChartSymbolShape.Image;

{% endhighlight %}

{% highlight vb %}

' Setting Images For the Series1

series1.Style.Images = New ChartImageCollection(Me.imageList1.Images)

series1.Style.Symbol.ImageIndex = 0

series1.Style.Symbol.Size = New Size(20, 20)

series1.Style.Symbol.Shape = ChartSymbolShape.Image

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img60.jpeg)

Specific Data Point Setting

{% tabs %}

{% highlight c# %}

//Symbol set for specific data points (first point)

series1.Styles[0].Images = new ChartImageCollection(this.imageList1.Images);

series1.Styles[0].Symbol.ImageIndex = 0;

series1.Styles[0].Symbol.Size = new Size(20, 20);

series1.Styles[0].Symbol.Shape = ChartSymbolShape.Image;

//Symbol set for specific data points (Second point)

series1.Styles[1].Images = new ChartImageCollection(this.imageList1.Images);

series1.Styles[1].Symbol.ImageIndex = 1;

series1.Styles[1].Symbol.Size = new Size(20, 20);

series1.Styles[1].Symbol.Shape = ChartSymbolShape.Image;

{% endhighlight %}

{% highlight vb %}

'Symbol set for specific data points (first point )

series1.Styles(0).Images = New ChartImageCollection(Me.imageList1.Images)

series1.Styles(0).Symbol.ImageIndex = 0

series1.Styles(0).Symbol.Size = New Size(20, 20)

series1.Styles(0).Symbol.Shape = ChartSymbolShape.Image

//Symbol set for specific data points (Second point here)

series1.Styles(1).Images = New ChartImageCollection(Me.imageList1.Images)

series1.Styles(1).Symbol.ImageIndex = 1

series1.Styles(1).Symbol.Size = New Size(20, 20)

series1.Styles(1).Symbol.Shape = ChartSymbolShape.Image

{% endhighlight %}
{% endtabs %}

{% seealso %}

[AreaChart](/windowsforms/chart/chart-types#area-chart),  [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Column Charts](/windowsforms/chart/chart-types#column-charts) , [Line Charts](/windowsforms/chart/chart-types#line-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart)

{% endseealso %}

### Images

Gets / sets the image list that is to be associated with this ChartPoint. This property is used in conjunction with the ImageIndex property to display images associated with this point.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Value that represents the custom ImageList.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area Charts, Bar Charts, Bubble Chart, Column Charts, Line  Charts, Candle Chart, Renko chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Tornado Chart, Polar and Radar Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

// Setting Images For the Series1

series1.Style.Images = new ChartImageCollection(this.imageList1.Images);

series1.Style.Symbol.ImageIndex = 0;

series1.Style.Symbol.Size = new Size(20, 20);

series1.Style.Symbol.Shape = ChartSymbolShape.Image;

// Disabling PhongStyle

this.chartControl1.Series[0].ConfigItems.BubbleItem.EnablePhongStyle = false;

{% endhighlight %}

{% highlight vb %}

' Setting Images For the Series1

series1.Style.Images = New ChartImageCollection(Me.imageList1.Images)

series1.Style.Symbol.ImageIndex = 0

series1.Style.Symbol.Size = New Size(20, 20)

series1.Style.Symbol.Shape = ChartSymbolShape.Image

' Disabling PhongStyle

Me.chartControl1.Series(0).ConfigItems.BubbleItem.EnablePhongStyle = False

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img61.jpeg)

Specific Data Point Setting

You can also specify different image collections for different data points using the below code.

{% tabs %}

{% highlight c# %}

series1.Styles[0].Images = new ChartImageCollection(this.imageList1.Images);

series1.Styles[0].Symbol.ImageIndex = 1;

series1.Styles[0].Symbol.Size = new Size(20, 20);

series1.Styles[0].Symbol.Shape = ChartSymbolShape.Image;

series1.Styles[1].Images = new ChartImageCollection(this.imageList2.Images);

series1.Styles[1].Symbol.ImageIndex = 2;

series1.Styles[1].Symbol.Size = new Size(20, 20);

series1.Styles[1].Symbol.Shape = ChartSymbolShape.Image;

{% endhighlight %}

{% highlight vb %}

series1.Styles(0).Images = New ChartImageCollection(Me.imageList1.Images)

series1.Styles(0).Symbol.ImageIndex = 1

series1.Styles(0).Symbol.Size = New Size(20, 20)

series1.Styles(0).Symbol.Shape = ChartSymbolShape.Image

series1.Styles(1).Images = New ChartImageCollection(Me.imageList2.Images)

series1.Styles(1).Symbol.ImageIndex = 2

series1.Styles(1).Symbol.Size = New Size(20, 20)

series1.Styles(1).Symbol.Shape = ChartSymbolShape.Image

{% endhighlight %}
{% endtabs %}

{% seealso %}

[AreaChart](/windowsforms/chart/chart-types#area-chart),  [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Column Charts](/windowsforms/chart/chart-types#column-charts) ,[Line Charts](/windowsforms/chart/chart-types#line-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#torando-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart)

{% endseealso %}

### InSideRadius

Sets / Gets the radius of the doughnut hole of Pie chart as a fraction of the radius of the pie.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Ranges from 0.0f to 1.0f.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None.</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No.</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series.</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart.</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

ChartSeries series1 = new ChartSeries("Market");

series1.InSideRadius = 0.5f;

{% endhighlight %}

{% highlight vb %}

Dim series1 As New ChartSeries("Market")

series1.InSideRadius = 0.5f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img62.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### Interior

This property will allow the user to set a solid back color, gradient or pattern style for the data points.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A BrushInfo object</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Series Wide Setting

The spline area interior brush can be customized using the ChartSeries.Style.Interior property as shown below.

The interior color of the chart series can be customized by using the Interior property of the ChartStyleInfo class. The following code illustrates this.

{% tabs %}

{% highlight c# %}

// This sets the interior color for the series. This can be done for any number of series.

this.chartControl1.Series[0].Style.Interior = new BrushInfo(GradientStyle.Horizontal ,Color.AliceBlue, Color.Green);

{% endhighlight %}

{% highlight vb %}

' This sets the interior color for the series. This can be done for any number of series.

Me.chartControl1.Series(0).Style.Interior = New BrushInfo(GradientStyle.Horizontal,Color.AliceBlue, Color.Green)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img63.jpeg)

Specific Data Point Setting

You can also set interior color for individual data points using Series.Styles[0].Interior property.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Styles[0].Interior = new BrushInfo(GradientStyle.Horizontal ,Color.AliceBlue, Color.Green);

this.chartControl1.Series[0].Styles[1].Interior = new BrushInfo(GradientStyle.Horizontal ,Color.Blue, Color.AliceBlue);

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Styles[0].Interior = New BrushInfo(GradientStyle.Horizontal,Color.AliceBlue, Color.Green)

Me.chartControl1.Series(0).Styles[1].Interior = New BrushInfo(GradientStyle.Horizontal,Color.Blue, Color.AliceBlue)

{% endhighlight %}
{% endtabs %}

#### PieChart Specific

When rendering pie charts, it's sometimes very helpful to render a patterned background for each slice, while printing the pie on a gray scale printer. You can do as easily as shown below. The code here is for a Pie Chart series with 4 points.

{% tabs %}

{% highlight c# %}

series1.Styles[0].Interior = new BrushInfo(PatternStyle.BackwardDiagonal, new BrushInfoColorArrayList(new Color[] { Color.Yellow, Color.Blue }));

series1.Styles[1].Interior = new BrushInfo(PatternStyle.Cross, new BrushInfoColorArrayList(new Color[] { Color.LightGreen, Color.Blue }));

series1.Styles[2].Interior = new BrushInfo(PatternStyle.SolidDiamond, new BrushInfoColorArrayList(new Color[] { Color.Beige, Color.Blue }));

series1.Styles[3].Interior = new BrushInfo(PatternStyle.Wave, new BrushInfoColorArrayList(new Color[] { Color.White, Color.Blue }));

series1.Styles[0].Text = "Server1";

series1.Styles[1].Text = "Server2";

series1.Styles[2].Text = "Server3";

series1.Styles[3].Text = "Server4";

{% endhighlight %}

{% highlight vb %}

series1.Styles(0).Interior = New BrushInfo(PatternStyle.BackwardDiagonal, New BrushInfoColorArrayList(New Color() { Color.Yellow, Color.Blue }))

series1.Styles(1).Interior = New BrushInfo(PatternStyle.Cross, New BrushInfoColorArrayList(New Color() { Color.LightGreen, Color.Blue }))

series1.Styles(2).Interior = New BrushInfo(PatternStyle.SolidDiamond, New BrushInfoColorArrayList(New Color() { Color.Beige, Color.Blue }))

series1.Styles(3).Interior = New BrushInfo(PatternStyle.Wave, New BrushInfoColorArrayList(New Color() { Color.White, Color.Blue }))

series1.Styles(0).Text = "Server1"

series1.Styles(1).Text = "Server2"

series1.Styles(2).Text = "Server3"

series1.Styles(3).Text = "Server4"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img64.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### LabelPlacement

Gets or sets the Pyramid chart or Funnel chart data point label placement when ChartAccumulationLabelStyle is set as inside.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Center – DataPoint labels are aligned to the center of the Pyramid segment.</li><li> Top - DataPoint labels are aligned to the top of the Pyramid segment.</li><li> Bottom – DataPoint labels are aligned to the bottom of the Pyramid segment.</li><li>Left - DataPoint labels are aligned to the Left of the Pyramid segment.</li><li>Right - DataPoint labels are aligned to the Right of the Pyramid segment.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Right</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Funnel and Pyramid Charts</td></tr>
</table>

Here is the code snippet using LabelPlacement in Pyramid Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PyramidItem.LabelPlacement = ChartAccumulationLabelPlacement.Center;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PyramidItem.LabelPlacement = ChartAccumulationLabelPlacement.Center

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img65.jpeg)

Here is the code snippet using LabelPlacement in Funnel Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.FunnelItem.LabelPlacement = ChartAccumulationLabelPlacement.Center;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.FunnelItem.LabelPlacement = ChartAccumulationLabelPlacement.Center

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img66.jpeg)

{% seealso %}

[Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart),  [Funnel Chart](/windowsforms/chart/chart-types#funnel-chart)

{% endseealso %}

### LabelStyle

Gets or sets the Pyramid chart or Funnel chart label style. This property dictates the presence and overall positioning of the DataPoint labels.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Inside - DataPoint label is drawn inside the Pyramid segment.</li><li>Outside - DataPoint label is drawn outside and next to the Pyramid segment.</li><li> OutsideInColumn - DataPoint is drawn outside the Pyramid segment with all labels aligned.</li><li> Disabled - DataPoint labels are disabled.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
OutsideInColumn</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Funnel, Pyramid charts</td></tr>
</table>

Here is the code snippet using LabelStyle in Pyramid Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PyramidItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PyramidItem.LabelStyle= ChartAccumulationLabelStyle.OutsideInColumn

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img67.jpeg)

Here is the code snippet using LabelStyle in Funnel Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.FunnelItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.FunnelItem.LabelStyle= ChartAccumulationLabelStyle.OutsideInColumn

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img68.jpeg)

{% seealso %}

 [Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart),  [Funnel Chart](/windowsforms/chart/chart-types#funnel-chart)

 {% endseealso %}

### LegendItem

Refer ChartLegendItem for more information.

### LightAngle

Specifies the light angle in horizontal plane.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any double value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
-0.785398163397448</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Charts , Bar Charts, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Polar and Radar Chart, Candle Chart, HiLo Chart(3D), HiloOpenClose(3D)</td></tr>
</table>

Here is code snippet using LightAngle in Column Chart.

{% tabs %}

{% highlight c# %}

// Specifies light angle of both the series

this.chartControl1.Series[0].ConfigItems.ColumnItem.LightAngle = 45;

this.chartControl1.Series[1].ConfigItems.ColumnItem.LightAngle = 45;

{% endhighlight %}

{% highlight vb %}

' Specifies light angle of both the series

Private Me.chartControl1.Series(0).ConfigItems.ColumnItem.LightAngle =45

Private Me.chartControl1.Series(1).ConfigItems.ColumnItem.LightAngle = 45

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img69.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img70.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) , [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart) , [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart) , [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Tornado Chart](/windowsforms/chart/chart-types#torando-chart) , [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart),  [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart)(3D), [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)(3D)

{% endseealso %}

### LightColor

Specifies the color of light for all shading modes except ChartColumnShadingMode.FlatRectangle.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A Color object</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Color.White</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, Bar Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Radar Chart</td></tr>
</table>

Here is sample code snippet using LightColor in Column Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.ColumnItem.LightColor = Color.Blue;

this.chartControl1.Series[1].ConfigItems.ColumnItem.LightColor = Color.Green;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ConfigItems.ColumnItem.LightColor = Color.Blue

Private Me.chartControl1.Series(1).ConfigItems.ColumnItem.LightColor = Color.Green

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img71.jpeg)

{% seealso %}

[Scatter Chart](/windowsforms/chart/chart-types#scatter-chart), [Column Charts](/windowsforms/chart/chart-types#column-charts) , [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart) , [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart) , [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart) ,

{% endseealso %}

### Polar and Radar Chart

### Name

Specifies the name of the Series. This name can also be used to retrieve the series by name from the series collection.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any user defined string</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Null</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All chart types</td></tr>
</table>

Here is the code snippet using Name in Column Chart.

{% tabs %}

{% highlight c# %}

//This Code Snippet gives the name of the series as Product1

ChartSeries s1 = new ChartSeries();

s1.Type = Syncfusion.Windows.Forms.Chart.ChartSeriesType.Column;

s1.Name="Product1";

// Points to be added

this.chartControl1.Series.Add(s1);

//Series retrieved using Name

this.chartControl1.Series["Product1"].Style.Symbol.Shape = ChartSymbolShape.Diamond;

this.chartControl1.Series["Product1"].Style.Symbol.Color = Color.Red;

{% endhighlight %}

{% highlight vb %}

' This Code Snippet gives the name of the series as Product

s1 As New ChartSeries()

s1.Type = Syncfusion.Windows.Forms.Chart.ChartSeriesType.Column

s1.Name="Product1"

' Points to be added

Me.chartControl1.Series.Add(s1)

'Series retrieved using Name

Me.chartControl1.Series["Product1"].Style.Symbol.Shape = ChartSymbolShape.Diamond

Me.chartControl1.Series["Product1"].Style.Symbol.Color = Color.Red

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img72.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### NumberOfIntervals

Gets or sets the number of Histogram intervals.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any numeric value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
10</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series Points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
HistoGram Chart</td></tr>
</table>

Here is a code sample.

{% tabs %}

{% highlight c# %}

// Set the desired number of intervals required for the histogram chart.

series.ConfigItems.HistogramItem.NumberOfIntervals = 20;

{% endhighlight %}

{% highlight vb %}

' Set the desired number of intervals required for the histogram chart.

series.ConfigItems.HistogramItem.NumberOfIntervals = 20

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img73.jpeg)

{% seealso %}

[Histogram chart](/windowsforms/chart/chart-types#histogram-chart)

{% endseealso %}

### DrawMode

Gets or sets the open, close draw mode to the HiLoOpenClose chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Open - Points only the opening value of that period.</li><li> Close - Points out the closing value of that period.* Both - Points out both the opening and the closing values  of that period.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Both</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
HiLoOpenClose Chart</td></tr>
</table>

Here is the code snippet using DrawMode.

{% tabs %}

{% highlight c# %}

ChartSeries CS1 = new ChartSeries("Series Name",ChartSeriesType.HiLoOpenClose);

CS1.Points.Add(date,456,214,364,386);

CS1.Points.Add(date.AddDays(1),491, 234, 321, 378 );

CS1.Points.Add(date.AddDays(2),482,193,302,352);

CS1.Points.Add(date.AddDays(3),437,243,354,391);

CS1.Points.Add(date.AddDays(4),421,223,317,367);

CS1.Points.Add(date.AddDays(5),434,263,339,385);

CS1.ConfigItems.HiLoOpenCloseItem.DrawMode = ChartOpenCloseDrawMode.Open;

this.chartControl1.Series.Add(CS1);

{% endhighlight %}

{% highlight vb %}

Dim CS1 As New ChartSeries("Series Name",ChartSeriesType.HiLoOpenClose)

CS1.Points.Add(date,456,214,364,386)

CS1.Points.Add(date.AddDays(1),491, 234, 321, 378 )

CS1.Points.Add(date.AddDays(2),482,193,302,352)

CS1.Points.Add(date.AddDays(3),437,243,354,391)

CS1.Points.Add(date.AddDays(4),421,223,317,367)

CS1.Points.Add(date.AddDays(5),434,263,339,385)

Me.chartControl1.Series.Add(CS1)

CS1.ConfigItems.HiLoOpenCloseItem.DrawMode = ChartOpenCloseDrawMode.Open

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img74.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img75.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img76.jpeg)

{% seealso %}

[HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)

{% endseealso %}

### OptimizePiePointPositions

Specifies if the data points with smaller values are grouped together and ordered. By default, they are ordered in the order in which the points are added to the series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> True  - Enables optimization</li><li> False - Disables optimization</li></ul><br></td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
True</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No.</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series.</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart.</td></tr>
</table>

Here is the code snippet using OptimizePiePointPositions.

{% tabs %}

{% highlight c# %}

ChartSeries series = new ChartSeries("Series Name", ChartSeriesType.Pie);

series.Points.Add(0, 20);

series.Points.Add(1, 28);

series.Points.Add(2, 23);

series.Points.Add(3, 10);

series.Points.Add(4, 12);

series.Points.Add(5, 3);

series.Points.Add(6, 2);

series.ExplodedIndex = 2;

series.OptimizePiePointPositions = false;

this.chartControl1.Series.Add(series);

{% endhighlight %}

{% highlight vb %}

Dim series As New ChartSeries("Series Name",ChartSeriesType.Pie)

series.Points.Add(0, 20)

series.Points.Add(1, 28)

series.Points.Add(2, 23)

series.Points.Add(3, 10)

series.Points.Add(4, 12)

series.Points.Add(5, 3)

series.Points.Add(6, 2)

series.ExplodedIndex = 2

series.OptimizePiePointPositions = False

Me.chartControl1.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img77.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img78.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### PhongAlpha

Specifies the Phong's alpha co-efficient used for calculating specular lighting.

_Features_

<table>
<tr>
<th colspan = "2">
Features </th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any double value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
20</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, Bar Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Polar and Radar Chart, HiLo Chart, HiLoOpenClose Chart, Candle Chart, Scatter Chart</td></tr>
</table>

Here is code snippet using PhongAlpha in Column Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.ColumnItem.PhongAlpha = 2.0;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ConfigItems.ColumnItem.PhongAlpha = 2.0

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img79.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img80.jpeg)

{% seealso %}

 [BarCharts](/windowsforms/chart/chart-types#bar-charts) ,  [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart) , [Column Charts](/windowsforms/chart/chart-types#column-charts)  ,  [Candle Charts](/windowsforms/chart/chart-types#candle-chart) , [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart) ,  [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart) , [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart) ,  [Histogram chart](/windowsforms/chart/chart-types#histogram-chart) , [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Radar Charts](/windowsforms/chart/chart-types#radar-chart), [Scatter Chart](/windowsforms/chart/chart-types#scatter-chart),

{% endseealso %}

### PieType

Sets pre-defined types for pie charts.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> None - It has no specific type.<li></li> OutSide - Specifies outside pie type.</li><li> InSide - Specifies inside pie type.</li><li> Round - Specifies Round pie type.</li><li> Bevel - Specifies Bevel pie type.</li><li> Custom - Specifies custom pie type.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Pie Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
PieChart</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PieItem.PieType=ChartPieType.Bevel;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PieItem.PieType = ChartPieType.Bevel

{% endhighlight %}
{% endtabs %}

The following screen shots depict these types.

![Chart Series](Chart-Series_images/Chart-Series_img81.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img82.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img83.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img84.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img85.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### PieWithSameRadius

Gets or sets whether the pie chart is rendered in the same radius when the LabelStyle is set to Outside or OutsideInColumn.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True or False</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Pie Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
PieChart and Doughnut chart</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PieItem.PieWithSameRadius=true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).ConfigItems.PieItem.PieType = True

{% endhighlight %}
{% endtabs %}

Setting this property to true will let you display Pie Chart with same size in the divided area.

### PointsToolTipFormat

Check Tooltips topic for more info on this setting.

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### PointWidth

Sets the width of this point relative to the total width available. It is very useful to render series that overlap.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
0.0F to 1.0F</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
1.0F</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Gantt Chart</td></tr>
</table>

Here is a code snippet using PointWidth in Gantt Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

ganttSeries.Style.PointWidth = 0.25f;

{% endhighlight %}

{% highlight vb %}

Private ganttSeries.Style.PointWidth = 0.25f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img86.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img87.jpeg)

Specific Data Point Setting

You can also set the PointWidth for specific points using Series.Styles[0].PointWidth for the first data point, Series.Styles[1].PointWidth for the second data point and so on.

{% tabs %}

{% highlight c# %}

ganttSeries.Styles[0].PointWidth = 0.25f;

ganttSeries.Styles[1].PointWidth = 0.5f;

{% endhighlight %}

{% highlight vb %}

Private ganttSeries.Styles(0).PointWidth = 0.25f

Private ganttSeries.Styles(1).PointWidth = 0.5f

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Gantt Chart](/windowsforms/chart/chart-types#gantt-chart)

{% endseealso %}

### PriceDownColor

Specifies a color for the financial item whose price is down.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any valid color</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Color.Red</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Kagi Chart, Point and Figure Chart, Renko Chart, Three Line Break Chart</td></tr>
</table>

Here is code snippet using PriceDownColor in point and figure Chart.

{% tabs %}

{% highlight c# %}

series7.PriceDownColor = Color.Magenta;

series7.PriceUpColor= Color.Orange;

{% endhighlight %}

{% highlight vb %}

series7.PriceDownColor = Color.Magenta

series7.PriceUpColor = Color.Orange

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img88.jpeg)

{% seealso %}

[Kagi Chart](/windowsforms/chart/chart-types#kagi-chart), [PointAndFigure Chart](/windowsforms/chart/chart-types#point-and-figure-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart)

{% endseealso %}

### PriceUpColor

Specifies a color for the financial item whose price is up.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any valid color</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Color.Green</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Kagi Chart, Point and Figure Chart, Renko Chart, Three Line Break Chart</td></tr>
</table>

Here is sample code snippet using PriceUpColor in Kagi Chart.

{% tabs %}

{% highlight c# %}

series.PriceUpColor = Color.Red;

series.PriceDownColor = Color.Green;

{% endhighlight %}

{% highlight vb %}

series.PriceUpColor = Color.Red

series.PriceDownColor = Color.Green

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img89.jpeg)

{% seealso %}

Kagi Chart, Point and Figure Chart, Three Line Break Chart, Renko Chart

{% endseealso %}

### PyramidMode

Specifies the mode in which the y values should be interpreted. In Linear mode the y values are proportional to the length of the sides of the Pyramid. In Surface Mode the y values are proportional to the surface area of the corresponding blocks.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Linear -  Draw pyramid chart in linear mode</li><li>Surface - Draw pyramid chart in surface mode</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Linear</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pyramid</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.PyramidItem.PyramidMode=ChartPyramidMode.Surface;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ConfigItems.PyramidItem.PyramidMode=ChartPyramidMode.Surface

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img90.jpeg)

{% seealso %}

[Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart)

{% endseealso %}

### Radar Type

Indicates the type of radar chart to be rendered.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Area - Renders the radar chart such that the points are connected and the enclosed region is not filled.</li><li> Line - Renders the radar chart such that the points are connected but the enclosed region is not filled.</li><li>Symbol - Points are rendered with the associated symbols</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Area</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Polar and Radar Chart</td></tr>
</table>

Here is code snippet using RadarType.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.RadarItem.Type = ChartRadarDrawType.Symbol;

this.chartControl1.Series[1].ConfigItems.RadarItem.Type = ChartRadarDrawType.Symbol;

this.chartControl1.Series[0].Style.Symbol.Shape = ChartSymbolShape.Star;

this.chartControl1.Series[1].Style.Symbol.Shape = ChartSymbolShape.Star;

this.chartControl1.Series[0].Style.Symbol.Color = Color.Blue;

this.chartControl1.Series[1].Style.Symbol.Color = Color.Green;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ConfigItems.RadarItem.Type = ChartRadarDrawType.Symbol

Private Me.chartControl1.Series(1).ConfigItems.RadarItem.Type = ChartRadarDrawType.Symbol

Private Me.chartControl1.Series(0).Style.Symbol.Shape = ChartSymbolShape.Star

Private Me.chartControl1.Series(1).Style.Symbol.Shape = ChartSymbolShape.Star

Private Me.chartControl1.Series(0).Style.Symbol.Color = Color.Blue

Private Me.chartControl1.Series(1).Style.Symbol.Color = Color.Green

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img91.jpeg)

{% seealso %}

[Polar And Radar Charts](/windowsforms/chart/chart-types#polar-and-radar-chart)

{% endseealso %}

### RadarStyle

Indicates the style of the radar chart axes.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li>Polygon - Axes are renders as polygon.</li><li> Circle - Axes are renders as Circle.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Polygon</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Radar Chart</td></tr>
</table>

Here is code snippet using RadarType.

{% tabs %}

{% highlight c# %}

this.chartControl1.RadarStyle = ChartRadarAxisStyle.Circle;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.RadarStyle = ChartRadarAxisStyle.Circle

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img92.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img93.jpeg)

{% seealso %}

[Radar Charts](/windowsforms/chart/chart-types#radar-chart)

{% endseealso %}

### RelatedPoints

Lets you specific the relationship between two points in the Gantt chart type. This will render a line connecting the specified points.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A ChartRelatedPointInfo object, which has the following properties:
<ul><li> Color - Any Color Object* Alignment - Any PenAlignment Property</li><li>Points - Integer Array containing the points which are to be connected.</li><li> Count - Specifies the Number of points</li><li>DashStyle - Any System.Drawing.Drawing2D.DashStyle* DashPattern - A Float array with two values</li><li>Width - Any Float value</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
<ul><li> Color - Control Text Color</li><li> Alignment - Center* Points - Null* Count - 0</li><li> DashStyle - Solid* DashPattern - Null</li><li>Width - 5.0f</li></ul></td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series and Points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Gantt Chart</td></tr>
</table>

Here is sample code snippet using RelatedPoints.

{% tabs %}

{% highlight c# %}

// Related Points for first series

int[] ptIndices = new int[] {2,4};

this.chartControl1.Series[0].Styles[3].RelatedPoints.Points = ptIndices;

this.chartControl1.Series[0].Styles[3].RelatedPoints.Color = Color.Red;

this.chartControl1.Series[0].Styles[3].RelatedPoints.Alignment = System.Drawing.Drawing2D.PenAlignment.Right;

this.chartControl1.Series[0].Styles[3].RelatedPoints.DashStyle = System.Drawing.Drawing2D.DashStyle.Custom;

this.chartControl1.Series[0].Styles[3].RelatedPoints.Width = 3f;

float[] dash = new float[] { 1.5f, 2.4f };

this.chartControl1.Series[0].Styles[3].RelatedPoints.DashPattern = dash;

// Related Points for second series

int[] ptIndices = new int[] { 1 };

this.chartControl1.Series[1].Styles[5].RelatedPoints.Points = ptIndices;

this.chartControl1.Series[1].Styles[5].RelatedPoints.Color = Color.Green;

this.chartControl1.Series[1].Styles[5].RelatedPoints.Alignment = System.Drawing.Drawing2D.PenAlignment.Center;

this.chartControl1.Series[1].Styles[5].RelatedPoints.DashStyle = System.Drawing.Drawing2D.DashStyle.Solid;

this.chartControl1.Series[1].Styles[5].RelatedPoints.Width = 3f;

{% endhighlight %}

{% highlight vb %}

' Related Points for first series

Dim ptIndices As Integer() = New Integer() {2,4}

Me.chartControl1.Series(0).Styles(3).RelatedPoints.Points = ptIndices

Me.chartControl1.Series(0).Styles(3).RelatedPoints.Color = Color.Red

Me.chartControl1.Series(0).Styles(3).RelatedPoints.Alignment = System.Drawing.Drawing2D.PenAlignment.Right

Me.chartControl1.Series(0).Styles(3).RelatedPoints.DashStyle = System.Drawing.Drawing2D.DashStyle.Custom

Me.chartControl1.Series(0).Styles(3).RelatedPoints.Width = 3f

Dim dash As Single() = New Single() { 1.5f, 2.4f }

Me.chartControl1.Series(0).Styles(3).RelatedPoints.DashPattern = dash

' Related Points for second series

Dim ptIndices As Integer() = New Integer() { 1 }

Me.chartControl1.Series(1).Styles(5).RelatedPoints.Points = ptIndices

Me.chartControl1.Series(1).Styles(5).RelatedPoints.Color = Color.Green

Me.chartControl1.Series(1).Styles(5).RelatedPoints.Alignment = System.Drawing.Drawing2D.PenAlignment.Center

Me.chartControl1.Series(1).Styles(5).RelatedPoints.DashStyle = System.Drawing.Drawing2D.DashStyle.Solid

Me.chartControl1.Series(1).Styles(5).RelatedPoints.Width = 3f

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img94.jpeg)

{% seealso %}

[Gantt Chart](/windowsforms/chart/chart-types#gantt-chart)

{% endseealso %}

### ReversalAmount

Gets or sets the reversal amount for financial charts.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any numeric value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
1</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Kagi Chart, Three Line Break Chart, Point and Figure Chart, Renko Chart</td></tr>
</table>

Here is code snippet using ReversalAmount in Renko Chart.

![Chart Series](Chart-Series_images/Chart-Series_img95.jpeg)

{% tabs %}

{% highlight c# %}

series.ReversalAmount = 3;

{% endhighlight %}

{% highlight vb %}

Private series.ReversalAmount = 3

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img96.jpeg)

{% seealso %}

[Kagi Chart](/windowsforms/chart/chart-types#kagi-chart), [PointAndFigure Chart](/windowsforms/chart/chart-types#point-and-figure-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart)

{% endseealso %}

### Rotate

Indicates whether the x and y axis should be rotated for this series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
True -  Enable the Rotate property False - Disable the Rotate property</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Charts, Bar Charts, Area charts, Line Chart, Spline Chart, Stepline Chart, Box and Whisker chart, Histogram chart, Polar and Radar Chart, Bubble And Scatter Chart</td></tr>
</table>

Here is sample code snippet using Rotate in Column Chart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Rotate = true;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).Rotate = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img97.jpeg)


![Chart Series](Chart-Series_images/Chart-Series_img98.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) , [Bar Charts](/windowsforms/chart/chart-types#bar-charts), [AreaChart](/windowsforms/chart/chart-types#area-chart), [Line Chart](/windowsforms/chart/chart-types#line-chart), [Spline Chart](/windowsforms/chart/chart-types#spline-chart), [Stepline Chart](/windowsforms/chart/chart-types#step-line-chart), [Kagi Chart](/windowsforms/chart/chart-types#kagi-chart), [Box and Whisker chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart), [Bubble And Scatter Chart](/windowsforms/chart/chart-types#xy-charts-bubble-and-scatter)

{% endseealso %}

### ScatterConnectType

Specifies the connection type of the Scatter Charts.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
None - Scatter Connect Type will be none.Line - Scatter Connect Type will be Line.Spline - Scatter Connect Type will be spline.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
None</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Scatter Chart</td></tr>
</table>

### Scatter Line Chart

Optionally, you can connect the points in the series through straight lines using the ScatterConnectType property as shown below.

{% tabs %}

{% highlight c# %}

series.ScatterConnectType = ScatterConnectType.Line;

{% endhighlight %}

{% highlight vb %}

series.ScatterConnectType = ScatterConnectType.Line

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img99.jpeg)

### Scatter Spline Chart

Alternatively, you can connect the points in the series through splines using the ScatterConnectType property as shown below.

{% tabs %}

{% highlight c# %}

series.ScatterConnectType = ScatterConnectType.Spline;

series.ScatterSplineTension = 1; // Default is 0

{% endhighlight %}

{% highlight vb %}

series.ScatterConnectType = ScatterConnectType.Spline

series.ScatterSplineTension = 1 ' Default is 0

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img100.jpeg)

{% seealso %}

[Scatter Chart](/windowsforms/chart/chart-types#scatter-chart)

{% endseealso %}

### ScatterSplineTension

Sets the tension required for the Scatter Spline Chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any Possible Numeric Values</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
0.5</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
ScatterSplineChart</td></tr>
</table>
Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[i].ScatterConnectType  = ScatterConnectType.Spline;

this.chartControl1.Series[i].ScatterSplineTension =3;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(i).ScatterConnectType = ScatterConnectType.Spline

Private Me.chartControl1.Series(i).ScatterSplineTension =3

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img101.jpeg)

{% seealso %}

[Scatter Chart](/windowsforms/chart/chart-types#scatter-chart)

{% endseealso %}

### SeriesToolTipFormat

Specifies the format for tooltip display in series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> {0}  -  Series Name</li><li> {1}  -  Series Style tooltip</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
{0}</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area Charts, Radar Chart, Polar Chart, ThreeLineBreak Chart,PointAndFigure Chart, StepLine Chart, Spline Chart, HiloOpenClose(3D), RotatedSpline, Kagi Chart</td></tr>
</table>

Here is some sample code.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[1].SeriesToolTipFormat="{0}";

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(1).SeriesToolTipFormat="{0}"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img102.jpeg)

{% seealso %}

[AreaChart](/windowsforms/chart/chart-types#area-chart), [Radar Chart](/windowsforms/chart/chart-types#radar-chart), [Polar Chart](/windowsforms/chart/chart-types#polar-chart), [ThreeLineBreak Chart](/windowsforms/chart/chart-types#three-line-break-chart),[PointAndFigure Chart](/windowsforms/chart/chart-types#point-and-figure-chart), [StepLine Chart](/windowsforms/chart/chart-types#step-line-chart), [Spline Chart](/windowsforms/chart/chart-types#spline-chart), [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)(3D), [RotatedSpline](/windowsforms/chart/chart-types#rotated-spline-chart), [Kagi Chart](/windowsforms/chart/chart-types#kagi-chart)

{% endseealso %}

### ShadingMode

Specifies the appearance of the chart series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> FlatRectangle - Displays in a flat rectangular format.</li><li>PhongCylinder - Displays in a cylindrical format.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
PhongCylinder</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, BarCharts, Candle Chart, HiLo Chart, HiLoOpenClose Chart, Tornado chart, Box and Whisker chart, Gantt Chart, Histogram Chart, Polar and Radar Chart</td></tr>
</table>

Here is sample code snippet using ShadingMode.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.ColumnItem.ShadingMode = ChartColumnShadingMode.FlatRectangle;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ConfigItems.ColumnItem.ShadingMode = ChartColumnShadingMode.FlatRectangle

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img103.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img104.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) , [BarCharts](/windowsforms/chart/chart-types#bar-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart),  [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart),[HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart),  [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart)

{% endseealso %}

### ShadowInterior

Specifies the interior color of the shadow.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any valid Color format</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Black</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
2D only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Charts, Bubble Chart, Line Charts, BarCharts, Candle Chart, Kagi Chart, Point and Figure Chart, Renko Chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Pie Chart, Polar and Radar Chart, Area Chart, Step Area Chart</td></tr>
</table>

Here is sample code snippet using ShadowInterior in Column Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

// Specifying Shadow Interior for 2 series

this.chartControl1.Series[0].Style.DisplayShadow = true;

this.chartControl1.Series[0].Style.ShadowInterior = new BrushInfo(GradientStyle.None, Color.SteelBlue,Color.SteelBlue);

{% endhighlight %}

{% highlight vb %}

' Specifying Shadow Interior for 2 series

Private Me.chartControl1.Series(0).Style.DisplayShadow = True

Private Me.chartControl1.Series(0).Style.ShadowInterior = New BrushInfo(GradientStyle.None, Color.SteelBlue,Color.SteelBlue)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img105.jpeg)

### Specific Data Point Setting

To specify different shadow colors for individual points, use Series.Styles[0].ShadowInterior property.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Styles[0].ShadowInterior = new BrushInfo(GradientStyle.None, Color.SteelBlue,Color.SteelBlue);

this.chartControl1.Series[0].Styles[0].ShadowInterior = new BrushInfo(GradientStyle.None, Color.Gray,Color.Gray);

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).Style.ShadowInterior = New BrushInfo(GradientStyle.None, Color.SteelBlue,Color.SteelBlue)

Private Me.chartControl1.Series(0).Style.ShadowInterior = New BrushInfo(GradientStyle.None, Color.Gray,Color.Gray)

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) ,  [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Line Charts](/windowsforms/chart/chart-types#line-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Kagi Chart](/windowsforms/chart/chart-types#kagi-chart),[Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart),[Point and Figure Chart](/windowsforms/chart/chart-types#point-and-figure-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart), [Three Line Break Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Pie Chart](/windowsforms/chart/chart-types#pie-chart), [Area Chart](/windowsforms/chart/chart-types#area-chart), [Step Area Chart](/windowsforms/chart/chart-types#step-area-chart)

{% endseealso %}

### ShadowOffset

Specifies the width of the shadow of the series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any possible numeric values for x, y</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
3, 2</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
2D only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Charts, Bubble Chart, Line Charts, BarCharts, Candle Chart, Kagi Chart, Point and Figure Chart, Renko Chart, Three Line Break Chart, Box and Whisker Chart, Gantt Chart, Histogram Chart, Tornado Chart, Pie Chart, Polar and Radar Chart, Area Chart, Step Area Chart</td></tr>
</table>

Here is sample code snippet using ShadowOffset in Column Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

series.Style.DisplayShadow = true;

series.Style.ShadowOffset = new Size(7, 7);

//For specific points

series.Styles[0].ShadowOffset = new Size(7, 7);

series.Styles[1].ShadowOffset = new Size(8, 8);

series.Styles[2].ShadowOffset = new Size(6, 6);

{% endhighlight %}

{% highlight vb %}

Private series.Style.DisplayShadow = True

Private series.Style.ShadowOffset = New Size(7, 7)

'For specific points

Private series.Styles(0).ShadowOffset = New Size(7, 7)

Private series.Styles(1).ShadowOffset = New Size(8, 8)

Private series.Styles(2).ShadowOffset = New Size(6, 6)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img106.jpeg)

Specific Data Point Setting

{% tabs %}

{% highlight c# %}

//For specific points

series.Styles[0].ShadowOffset = new Size(7, 7);

series.Styles[1].ShadowOffset = new Size(8, 8);

series.Styles[2].ShadowOffset = new Size(6, 6);

{% endhighlight %}

{% highlight vb %}

'For specific points

Private series.Styles(0).ShadowOffset = New Size(7, 7)

Private series.Styles(1).ShadowOffset = New Size(8, 8)

Private series.Styles(2).ShadowOffset = New Size(6, 6)

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) ,  [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Line Charts](/windowsforms/chart/chart-types#line-charts),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Kagi Chart](/windowsforms/chart/chart-types#kagi-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart),[Point and Figure Chart](/windowsforms/chart/chart-types#point-and-figure-chart), [Renko Chart](/windowsforms/chart/chart-types#renko-chart), [Three Line Break Chart](/windowsforms/chart/chart-types#three-line-break-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Pie Chart](/windowsforms/chart/chart-types#pie-chart), [Area Chart](/windowsforms/chart/chart-types#area-chart), [Step Area Chart](/windowsforms/chart/chart-types#step-area-chart)

{% endseealso %}

### ShowDataBindLabels

Indicates whether data bound labels are displayed in the chart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li>True - Displays the data bind labels.</li><li> False - Hides the data bind labels.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All Series </td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart, Doughnut Chart, Funnel Chart and Pyramid chart.</td></tr>
</table>

Here is sample code snippet using ShowDataPointLabels.

{% tabs %}

{% highlight c# %}

//For Pie Chart

this.chartControl.Series[0].ConfigItems.PieItem.ShowDataBindLabels = true;

//For Funnel Chart

this.chartControl.Series[0].ConfigItems.FunnelItem.ShowDataBindLabels = true;

//For Pyramid Chart

this.chartControl.Series[0].ConfigItems.PyramidItem.ShowDataBindLabels = true;

{% endhighlight %}

{% highlight vb %}

'For Pie Chart

Me.chartControl.Series(0).ConfigItems.PieItem.ShowDataBindLabels = True

'For Funnel Chart

Me.chartControl.Series(0).ConfigItems.FunnelItem.ShowDataBindLabels = True

'For Pyramid Chart

Me.chartControl.Series(0).ConfigItems.PyramidItem.ShowDataBindLabels = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img107.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img108.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img109.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart), [Funnel Chart](/windowsforms/chart/chart-types#funnel-chart), [Pyramid Chart](/windowsforms/chart/chart-types#pyramid-chart)

{% endseealso %}

### ShowHistogramDataPoints

Indicates if the histogram data points should be shown.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> True - Displays the datapoints.</li><li> False - Hides the datapoints.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
True</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Histogram Chart</td></tr>
</table>

Here is sample code snippet using ShowHistogramDataPoints.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ShowHistogramDataPoints =true;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ShowHistogramDataPoints =True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img110.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img111.jpeg)

{% seealso %}

[Histogram chart](/windowsforms/chart/chart-types#histogram-chart)

{% endseealso %}

### ShowTicks

Indicates whether ticks should be shown or not.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li>True - Displays ticks</li><li> False - Hides ticks</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
True</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart</td></tr>
</table>

Here is a sample code snippet using ShowTicks.

{% tabs %}

{% highlight c# %}

// Enables Ticks

this.chartControl1.Series[0].ShowTicks = true;

{% endhighlight %}

{% highlight vb %}

' Enables Ticks

Private Me.chartControl1.Series(0).ShowTicks = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img112.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img113.jpeg)

{% seealso %}

[PieChart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### SmartLabels

Specifies the behavior of the labels. If set to true, the labels will be rendered to avoid overlap with other labels.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> True  -  Enables smart labels</li><li> False -  Disables smart labels</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All chart types</td></tr>
</table>

Here is sample code snippet using Smart Labels in ColumnChart.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Style.DisplayText = true;

series.Styles[0].Text = series.Name;

this.chartControl1.Series[0].SmartLabels = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Style.DisplayText = True

series.Styles(0).Text = series.Name

Private Me.chartControl1.Series(0).SmartLabels = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img114.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img115.jpeg)

### Custom borders for smart Labels

Smart labels can be made smarter by displaying with customized borders. The color and the width of the border can be changed using the appearance properties available. SmartLabelsBorderColor property is used to set color for the border and SmartLabelsBorderWidth property is used to set the width of the border.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].SmartLabelsBorderColor = Color.Yellow;

this.chartControl1.Series[0].SmartLabelsBorderWidth = 2

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).SmartLabelsBorderColor = Color.Yellow

Me.chartControl1.Series(0).SmartLabelsBorderWidth = 2

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### Spacing

#### Spacing between data points

This specifies the space/width between data points in the x axis. This value is specified in percentage (%) of interval width. So, for example, if the value of the property is 20%, then only 80% of the interval width is used for rendering the data point(s). If there are multiple series then the available width is divided between the data points in the different series. This of course is used only for appropriate chart types like the column chart which has a width component.

This property will not be used when ChartColumnWidth is set to FixedWidthMode.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A double value (10 to 99)</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
30</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series and points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Charts, BarCharts, Box and Whisker Chart, Gantt Chart, Tornado Chart, Candle Chart, HiLo Chart, HiLo Open Close Chart</td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Indicates the spacing width in percentage that is to be applied between the datapoints of the column chart.

this.chartControl1.Spacing = 50;

{% endhighlight %}

{% highlight vb %}

'Indicates the spacing width in percentage that is to be applied between the data points of the column chart.

Me.chartControl1.Spacing = 50

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img116.jpeg)

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) ,   [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart),   [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [HiLo Chart](/windowsforms/chart/chart-types#hi-lo-chart), [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)

{% endseealso %}

### SpacingBetweenSeries

EssentialChart provides support to control the spacing between series using SpacingBetweenSeries property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A double value (10 to 100)</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
10</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Area Charts, BarCharts, Line Charts, Bubble Chart, Financial Charts, Gantt Chart, Histogram chart, Tornado Chart, Combination Chart, Box and Whisker Chart</td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Specifies the spacing between individual series.

this.chartControl1.SpacingBetweenSeries = 20;

{% endhighlight %}

{% highlight vb %}

'Specifies the spacing between individual series.

Me.chartControl1.SpacingBetweenSeries = 20

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img117.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img118.jpeg)

{% seealso %}

[Area Charts](/windowsforms/chart/chart-types#area-charts), [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Line Charts](/windowsforms/chart/chart-types#line-charts), [Column Charts](/windowsforms/chart/chart-types#column-charts), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Financial Charts](/windowsforms/chart/chart-types#financial-charts), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart) [Combination Chart](/windowsforms/chart/chart-types#combination-chart),  [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart)

{% endseealso %}

### SpacingBetweenPoints

EssentialChart provides support to control the spacing between points using SpacingBetweenPoints property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
A double value (0 to 99)</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
0</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
2D only</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Series points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, Bar Chart, HiLo Chart, HiLo Open Close Chart, Candle Chart, Tornado Chart, Boxes and Whisker Chart</td></tr>
</table>

{% tabs %}

{% highlight c# %}

this.chartControl1.SpacingBetweenPoints = 70;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.SpacingBetweenSeries = 70

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) ,  [BarCharts](/windowsforms/chart/chart-types#bar-charts),  [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart), [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart)

{% endseealso %}

### Stacking Group

This section illustrates how to group the stacking series with another stacking series.

1. In order to group the stacking series with another stacking series in chart control, you need to set a StackingGroup property of the chart series with the desired group name.

The below example demonstrates the code on setting the StackingGroup for the series in the Chart control.

{% capture codesnippet1 %}
{% tabs %}

{% highlight c# %}

ChartSeries ser1 = new ChartSeries("Series 1");

ser1.Type = ChartSeriesType.StackingColumn;

// specifying group name .

ser1.StackingGroup = "FirstGroup";

ChartSeries ser2 = new ChartSeries("Series 2");

ser2.Type = ChartSeriesType.StackingColumn;

// specifying group name .

ser2.StackingGroup = "SecondGroup";

ChartSeries ser3 = new ChartSeries("Series 3");

ser3.Type = ChartSeriesType.StackingColumn;

// specifying group name .

ser3.StackingGroup = "FirstGroup";

{% endhighlight %}

{% highlight vb %}

Dim ser1 As New ChartSeries("Series 1")

ser1.Type = ChartSeriesType.StackingColumn

' specifying group name .

ser1.StackingGroup = "FirstGroup"

Dim ser2 As New ChartSeries("Series 2")

ser2.Type = ChartSeriesType.StackingColumn

' specifying group name .

ser2.StackingGroup = "SecondGroup"

Dim ser3 As New ChartSeries("Series 3")

ser3.Type = ChartSeriesType.StackingColumn

' specifying group name .

ser3.StackingGroup = "FirstGroup"

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet1 | OrderList_Indent_Level_1 }}

![Chart Series](Chart-Series_images/Chart-Series_img119.png)

![Chart Series](Chart-Series_images/Chart-Series_img120.png)

### StepItem.Inverted

Specifies if the particular stepline is inverted or not in the StepAreaChart.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li>True - Indicates that the stepline is inverted.</li><li> False - Indicates that the stepline is not inverted.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
True</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
StepAreaChart, StepLine Chart</td></tr>
</table>

Here is sample code snippet using Inverted Step.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ConfigItems.StepItem.Inverted=true;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ConfigItems.StepItem.Inverted=True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img121.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img122.jpeg)

{% seealso %}

[StepAreaChart](/windowsforms/chart/chart-types#step-area-chart), [StepLine Chart](/windowsforms/chart/chart-types#step-line-chart)

{% endseealso %}

### Summary

Provides access to summary information such as minimum/maximum values contained in this series at any given moment.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
</ul></li> MaxX - Returns the maximum X value. </li><li> MaxY - Returns the minimum Y value. </li><li> MinX - Returns the minimum X value. </li><li> MinY - Returns the minimum Y value. </li><li> ModelImpl - Returns the model implemented.</li><li> GetYPercentage - This method returns percentage value of series point in a Pie chart.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
<ul><li> MaxX   - 0</li><li> MaxY   - 0</li><li> MinY    - 0</li><li> MinX    - 0</li><li> ModelImpl - Nil</li></ul></td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All chart types</td></tr>
</table>

Here is a sample code snippet using Radar chart.

{% tabs %}

{% highlight c# %}

string str = this.chartControl1.Series[0].Summary.MaxY.ToString();

string str1 = this.chartControl1.Series[0].Summary.MinY.ToString();

label1.Text = "Summary" + "\n" + " MaxY Value : " + str + "\n" + "MinY Value : " + str1;

//To get percentage value of series point in Pie chart

this.chartControl1.Series[0].Summary.GetYPercentage(1);

this.chartControl1.Series[0].Summary.GetYPercentage(1, 0);

{% endhighlight %}

{% highlight vb %}

Dim str As String = Me.chartControl1.Series(0).Summary.MaxY.ToString()

Dim str1 As String = Me.chartControl1.Series(0).Summary.MinY.ToString()

label1.Text = "Summary" + "" & Char(10) & "" + " MaxY Value : " + str + "" & Char(10) & "" + "MinY Value : " + str1

'To get percentage value of series point in Pie chart

this.chartControl1.Series[0].Summary.GetYPercentage(1)

this.chartControl1.Series[0].Summary.GetYPercentage(1, 0)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img123.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types), How to find value, maximum value and minimum value among the data points

{% endseealso %}

### Symbol

Sets the attributes of the symbol that is to be displayed at this point.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Size - Specifies the size of the symbol.</li><li> Color - Specifies the color of the symbol.</li><li> Shape - Specifies the shape of the symbol.</li><li> Offset - Specifies the offset of the symbol.</li></ul></td></tr>
<tr>
<td>
<br>Default Value</td><td colspan = "2">
<ul><li> Size - 10,10</li><li> Color - HighLightText Color</li><li> Shape - None</li><li> Offset - 0,0</li></ul></td></tr>
<tr>
<td>
<br>2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Column Chart, Bar Chart, Bubble Chart, Financial Chart, Line Chart, Box and Whisker Chart, Gantt chart, Tornado chart, Radar Chart, Polar Chart, Area Charts, Scatter Chart</td></tr>
</table>

Here is sample code snippet using Symbol in Column Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Style.Symbol.Shape = ChartSymbolShape.Diamond;

this.chartControl1.Series[0].Style.Symbol.Color=Color.Green;

this.chartControl1.Series[0].Style.Symbol.Size = new Size(10, 10);

this.chartControl1.Series[0].Style.Symbol.Offset = new Size(1, 20);

//Sets the Color of the Symbol border.

this.chartControl1.Series[0].Style.Symbol.Border.Color = Color.Blue;

//Sets the Width of the Symbol border.

this.chartControl1.Series[0].Style.Symbol.Border.Width = 1;

//Sets the Alignment of the Symbol border.

this.chartControl1.Series[0].Style.Symbol.Border.Alignment = PenAlignment.Outset;

//Sets the Dash style of the Symbol Border.

this.chartControl1.Series[0].Style.Symbol.Border.DashStyle = DashStyle.Solid;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).Style.Symbol.Shape = ChartSymbolShape.Diamond

Private Me.chartControl1.Series(0).Style.Symbol.Color=Color.Green

Private Me.chartControl1.Series(0).Style.Symbol.Size = New Size(10, 10)

Private Me.chartControl1.Series(0).Style.Symbol.Offset = New Size(1, 20)

'Used to set the Color of the Symbol border.

Private Me.chartControl1.Series(0).Style.Symbol.Border.Color = Color.Blue

'Used to set the Width of the Symbol border.

Private Me.chartControl1.Series(0).Style.Symbol.Border.Width = 1

{% endhighlight %}
{% endtabs %}

'Used to set the Alignment of the Symbol border.

Private Me.chartControl1.Series(0).Style.Symbol.Border.Alignment = PenAlignment.Outset

'Used to set the Dash style of the Symbol Border.

Private Me.chartControl1.Series0).Style.Symbol.Border.DashStyle = DashStyle.Solid

![Chart Series](Chart-Series_images/Chart-Series_img124.jpeg)

Specific Data Point Setting

To specify customized symbols for individual datapoints, use Series.Styles[i].Symbol property, where i ranges from 0 to n representing the data points.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Styles[0].Symbol.Shape = ChartSymbolShape.Diamond;

this.chartControl1.Series[0].Styles[0].Symbol.Color=Color.Green;

this.chartControl1.Series[0].Styles[0].Symbol.Size = new Size(10, 10);

this.chartControl1.Series[0].Styles[0].Symbol.Offset = new Size(1, 20);

this.chartControl1.Series[0].Styles[1].Symbol.Shape = ChartSymbolShape.Hexagon;

this.chartControl1.Series[0].Styles[1].Symbol.Color=Color.Yellow;

this.chartControl1.Series[0].Styles[1].Symbol.Size = new Size(9, 9);

this.chartControl1.Series[0].Styles[1].Symbol.Offset = new Size(1, 20);

//Used to set the Color of the Symbol border.

this.chartControl1.Series[0].Styles[0].Symbol.Border.Color = Color.Blue;

//Used to set the Width of the Symbol border.

this.chartControl1.Series[0].Styles[0].Symbol.Border.Width = 3;

//Used to set the Alignment of the Symbol border.

this.chartControl1.Series[0].Styles[0].Symbol.Border.Alignment = PenAlignment.Outset;

//Used to set the Dash style of the Symbol Border.

this.chartControl1.Series[0].Styles[0].Symbol.Border.DashStyle = DashStyle.Solid;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).Styles(0).Symbol.Shape = ChartSymbolShape.Diamond

Private Me.chartControl1.Series(0).Styles(0).Symbol.Color=Color.Green

Private Me.chartControl1.Series(0).Styles(0).Symbol.Size = New Size(10, 10)

Private Me.chartControl1.Series(0).Styles(0).Symbol.Offset = New Size(1, 20)

Private Me.chartControl1.Series(0).Styles(1).Symbol.Shape = ChartSymbolShape.Hexagon

Private Me.chartControl1.Series(0).Styles(1).Symbol.Color=Color.Yellow

Private Me.chartControl1.Series(0).Styles(1).Symbol.Size = New Size(9, 9)

Private Me.chartControl1.Series(0).Styles(1).Symbol.Offset = New Size(1, 20)

'Used to set the Color of the Symbol border.

Private Me.chartControl1.Series(0).Styles[0].Symbol.Border.Color = Color.Blue

'Used to set the Width of the Symbol border.

Private Me.chartControl1.Series(0).Styles[0].Symbol.Border.Width = 3

'Used to set the Alignment of the Symbol border.

Private Me.chartControl1.Series(0).Styles[0].Symbol.Border.Alignment = PenAlignment.Outset

'Used to set the Dash style of the Symbol Border.

Private Me.chartControl1.Series0).Styles[0].Symbol.Border.DashStyle = DashStyle.Solid

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Column Charts](/windowsforms/chart/chart-types#column-charts) ,   [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Bubble Chart](/windowsforms/chart/chart-types#bubble-chart), [Financial Chart](/windowsforms/chart/chart-types#financial-charts),  [Line Charts](/windowsforms/chart/chart-types#line-charts), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Radar Chart](/windowsforms/chart/chart-types#radar-chart), [Polar Chart](/windowsforms/chart/chart-types#polar-chart), [AreaChart](/windowsforms/chart/chart-types#area-chart), [Scatter Chart](/windowsforms/chart/chart-types#scatter-chart)

{% endseealso %}

### Text (Series)

It specifies the chart series text. This will be displayed at run-time in the legend.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any string value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Name of the series</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Text can be set directly by using Series object.

Here is sample code snippet.

{% tabs %}

{% highlight c# %}

// Here the series text will be taken from series name

ChartSeries series1 = new ChartSeries("August",ChartSeriesType.Column);

// Add points to series1.

//....

//....

// Here, the text is given explicitly.

ChartSeries series2 = new ChartSeries("June",ChartSeriesType.Column);

series2.Text = "JuneSales";

{% endhighlight %}

{% highlight vb %}

' Here the series text will be taken from series name

Dim series1 As New ChartSeries("August",ChartSeriesType.Column)

' Add points to series1.

'....

' Here, the text is given explicitly.

Dim series2 As New ChartSeries("June",ChartSeriesType.Column)

series2.Text = "JuneSales"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img125.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### Text (Style)

Series Wide Setting

Datapoint labels for a series can be specified using Series.Style.Text property.

{% tabs %}

{% highlight c# %}

//labels for the series

chartControl1.Series[0].Style.DisplayText = true;

chartControl1.Series[0].Style.Text = "Series1 Point";

{% endhighlight %}

{% highlight vb %}

'labels for the series

chartControl1.Series[0].Style.DisplayText = True

chartControl1.Series(0).Style.Text = "Series1 Point"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img126.jpeg)

Specific Data Point Setting

Labels for specific data points can be specified through Series.Styles[0].Text property.

{% tabs %}

{% highlight c# %}

//labels for the individual datapoints in the series

chartControl1.Series[0].Style.DisplayText = true;

chartControl1.Series[0].Styles[0].Text = "First Point";

chartControl1.Series[0].Styles[1].Text = "Second Point";

chartControl1.Series[0].Styles[2].Text = "Third Point";

{% endhighlight %}

{% highlight vb %}

'labels for the individual datapoints in the series

chartControl1.Series[0].Style.DisplayText = True

chartControl1.Series(0).Styles(0).Text = "First Point"

chartControl1.Series(0).Styles(1).Text = "Second Point"

chartControl1.Series(0).Styles(2).Text = "Third Point"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img127.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img128.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### TextColor

It is used to set the color of the display text of the series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
All predefined colors</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Black</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Series and Points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Here is sample code snippet using TextColor in Column Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

// Set the color of the text in the Series

this.chartControl1.Series[0].Style.TextColor = Color.Blue;

this.chartControl1.Series[1].Style.TextColor = Color.Red;

this.chartControl1.Series[2].Style.TextColor = Color.Green;

{% endhighlight %}

{% highlight vb %}

' Set the color of the text in the Series

Private Me.chartControl1.Series(0).Style.TextColor = Color.Blue

Private Me.chartControl1.Series(1).Style.TextColor = Color.Red

Private Me.chartControl1.Series(2).Style.TextColor = Color.Green

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img129.jpeg)

Specific Data Point Setting

We can set TextColor for specific data points in a series by using Series.Styles[0].TextColor property as follows.

{% tabs %}

{% highlight c# %}

// Set the text color for the three data points in the Series

this.chartControl1.Series[0].Styles[0].TextColor = Color.Blue;

this.chartControl1.Series[0].Styles[1].TextColor = Color.SteelBlue;

this.chartControl1.Series[0].Styles[2].TextColor = Color.LightBlue;

{% endhighlight %}

{% highlight vb %}

' Set the text color for the three data points in the Series

Private Me.chartControl1.Series(0).Styles(0).TextColor = Color.Blue

Private Me.chartControl1.Series(0).Styles(1).TextColor = Color.SteelBlue

Private Me.chartControl1.Series(0).Styles(2).TextColor = Color.LightBlue

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### TextFormat

Sets the format that is to be applied to values that are displayed as text.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any string value with '{0}' as place holder for the Y value.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Nil</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series and Points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Here is sample code snippet using TextFormat in Column Chart.

Series wide setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Style.TextFormat = "T = {0}";

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Style.TextFormat = "T = {0}"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img130.jpeg)

Specific Data Point Setting

TextFormats for individual data points are specified using below code.

{% tabs %}

{% highlight c# %}

chartControl1.Series[0].Styles[0].TextFormat = "YValue : {0}";

chartControl1.Series[0].Styles[1].TextFormat = "Dollars : {0:C}";

{% endhighlight %}

{% highlight vb %}

chartControl1.Series(0).Styles(0).TextFormat = "YValue : {0}"

chartControl1.Series(0).Styles(1).TextFormat = "Dollars : {0:C}"

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### TextOffset

Sets the Offset of the text from the position of the chart point.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any float value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
2.5 </td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Here is a sample code snippet using TextOffset in Column Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Style.TextOffset = 10.0F;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Style.TextOffset = 10.0F

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img131.jpeg)

Specific Data Point Setting

TextOffset for data points can be specified using Series.Styles[0].TextOffset property.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Styles[0].TextOffset = 10.0F;

this.chartControl1.Series[0].Styles[1].TextOffset = 15.0F;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Styles(0).TextOffset = 10.0F

Me.chartControl1.Series(0).Styles(1).TextOffset = 15.0F

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### TextOrientation

It is used to align the text of the series within the data point region.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td>
<td colspan = "2">
<ul>
<li> <b>Center</b> - Aligns to the center of the point.</li>
<li><b>Down</b> - Aligns below the point.</li>
<li><b>Left</b> - Aligns to the left position to the point.</li>
<li> <b>RegionCenter</b> - Aligns below the region that represents the points.</li>
<li> <b>RegionDown</b> - Aligns below the region that represents the points.</li>
<li> <b>RegionUp</b> - Aligns to the top of the region that represents the points.</li>
<li> <b>Right</b> - Aligns to the right of the point.</li>
<li> <b>Smart</b> - Aligns in a manner that is appropriate to the situation.</li><li> <b>SymbolCenter </b>- Text is centered to the symbol that is associated to the point.</li>
<li> <b>Up</b> - Aligns to the top of the point.</li>
<li><b>UpLeft</b> - Aligns to the top left corner of the point.</li>
<li> <b>UpRight</b> - Aligns to the top right corner of the point.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Up</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All chart types</td></tr>
</table>

Here is some sample code.

Series Wide Setting

{% tabs %}

{% highlight c# %}

// Text Orientation of chart series

this.chartControl1.Series[1].Style.TextOrientation = ChartTextOrientation.RegionDown;

this.chartControl1.Series[0].Style.TextOrientation = ChartTextOrientation.Up;

this.chartControl1.Series[0].Style.TextColor=Color.Blue;

this.chartControl1.Series[1].Style.TextColor=Color.Red;

{% endhighlight %}

{% highlight vb %}

' Text Orientation of chart series

Private Me.chartControl1.Series(1).Style.TextOrientation = ChartTextOrientation.RegionDown

Private Me.chartControl1.Series(0).Style.TextOrientation = ChartTextOrientation.Up

Private Me.chartControl1.Series(0).Style.TextColor=Color.Blue

Private Me.chartControl1.Series(1).Style.TextColor=Color.Red

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img132.jpeg)

#### Specific Data Point Setting

Text orientation for specific data points can be set using Series.Style[i].TextOrientation property, where "i" represents the index of data points ranging from 0 to n.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[1].Styles[0].TextOrientation = ChartTextOrientation.RegionDown;

this.chartControl1.Series[0].Styles[0].TextOrientation = ChartTextOrientation.Up;

this.chartControl1.Series[0].Styles[0].TextColor=Color.Blue;

this.chartControl1.Series[1].Styles[0].TextColor=Color.Red;

this.chartControl1.Series[1].Styles[1].TextOrientation = ChartTextOrientation.Smart;

this.chartControl1.Series[0].Styles[1].TextOrientation = ChartTextOrientation.UpRight;

this.chartControl1.Series[0].Styles[1].TextColor=Color.Green;

this.chartControl1.Series[1].Styles[1].TextColor=Color.Yellow;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(1).Styles(0).TextOrientation = ChartTextOrientation.RegionDown

Private Me.chartControl1.Series(0).Styles(0).TextOrientation = ChartTextOrientation.Up

Private Me.chartControl1.Series(0).Styles(0).TextColor=Color.Blue

Private Me.chartControl1.Series(1).Styles(0).TextColor=Color.Red

Private Me.chartControl1.Series(1).Styles(1).TextOrientation = ChartTextOrientation.Smart

Private Me.chartControl1.Series(0).Styles(1).TextOrientation = ChartTextOrientation.UpRight

Private Me.chartControl1.Series(0).Styles(1).TextColor=Color.Green

Private Me.chartControl1.Series(1).Styles(1).TextColor=Color.Yellow

{% endhighlight %}
{% endtabs %}

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### ToolTip

Sets the tooltip of the style object associated with the series.
_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any string value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Nil</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Scatter Chart, HiLo Open Close Chart(3D),Column Charts, BarCharts, Bubble Chart,Line Charts,  Box and Whisker Chart, Tornado Chart, Combination Chart, Gantt Chart,Candle Chart, HiLo Chart(3D), PolarAndRadar, PieChart,Accumulation Charts, Area Charts</td></tr>
</table>




_Property_

<table>
<tr>
<th>
Property </th><th>
Description </th><th>
Type </th><th>
Data Type </th><th>
Reference links </th></tr>
<tr>
<td>
ShowToolTips </td><td>
Specifies whether tooltip has to be displayed.   </td><td>
Server side </td><td>
Boolean </td><td>
NA </td></tr>
</table>

Here is sample code snippet using ToolTip in the Column Chart.

Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.ShowToolTips = true;

series1.PointsToolTipFormat = "{1}";

series1.Style.ToolTip = "Tooltip of Series1";

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ShowToolTips = True

series1.PointsToolTipFormat = "{1}"

series1.Style.ToolTip = "Tooltip of Series1"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img133.jpeg)

#### Specific Data Point Setting

ToolTip can be applied to individual points of a Series.

{% tabs %}

{% highlight c# %}

for (int i = 0; i < series1.Points.Count; i++)
{
    series1.Styles[i].ToolTip = string.Format("X = {0}, Y = {1}", series1.Points[0].X.ToString(),series1.Points[i].YValues[0]);
}

{% endhighlight %}

{% highlight vb %}

Dim i As Integer = 0

Do While i < series1.Points.Count

series1.Styles(i).ToolTip = String.Format("X = {0}, Y = {1}", series1.Points(0).X.ToString(),series1.Points(i).YValues(0))

  i += 1

Loop

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img134.jpeg)

{% seealso %}

[Scatter Chart](/windowsforms/chart/chart-types#scatter-chart),[HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)(3D), [Column Charts](/windowsforms/chart/chart-types#column-charts), [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Line Charts](/windowsforms/chart/chart-types#line-charts), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Combination Chart](/windowsforms/chart/chart-types#combination-chart), [Gantt Chart](/windowsforms/chart/chart-types#gantt-chart),  [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart)(3D), [Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart), [PieChart](/windowsforms/chart/chart-types#pie-chart), [Accumulation Charts](/windowsforms/chart/chart-types#accumulation-chart), [Area Charts](/windowsforms/chart/chart-types#area-charts)

{% endseealso %}

### ToolTipFormat

Sets the tooltip format of the style object associated with the series.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any string with '{0}' as the place holder for Y value.</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
Nil</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series and Points</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Scatter Chart, HiLo Open Close Chart(3D),Column Charts, BarCharts, Bubble Chart,Line Charts,  Box and Whisker Chart, Tornado Chart, Combination Chart, Gantt Chart,Candle Chart, HiLo Chart(3D), PolarAndRadar, PieChart,Accumulation Charts, Area Charts</td></tr>
</table>

Here is sample code snippet using ToolTipFormat in the Column chart.

#### Series Wide Setting

{% tabs %}

{% highlight c# %}

this.chartControl1.ShowToolTips = true;

this.chartControl1.Series[1].Style.ToolTipFormat = "Y = {0}";

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ShowToolTips = True

Me.chartControl1.Series[1].Style.ToolTipFormat = "Y = {0}"

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img135.jpeg)

#### Specific Data Point Setting

Tooltip format can be applied for individual points by using Series.Styles[0].ToolTipFormat property settings.

{% tabs %}

{% highlight c# %}

for (int i = 0; i < series1.Points.Count; i++)
{
    series1.Styles[i].ToolTipFormat = "{0}";
}

{% endhighlight %}

{% highlight vb %}

Dim i As Integer = 0

Do While i < series1.Points.Count

series1.Styles(i).ToolTipFormat = "{0}";

  i += 1

Loop

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img136.jpeg)

{% seealso %}

[Scatter Chart](/windowsforms/chart/chart-types#scatter-chart), [HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)(3D)

{% endseealso %}

### Visible

It turns on / off the visibility of the series.

_Features_

<table>
<tr>
<th>
Features</th><th colspan = "2">
Details</th></tr>
<tr>
<td colspan = "2">
Possible Values</td><td>
<ul><li> True - Unhide the associated series.</li><li> False - Hides the associated series.</li></ul></td></tr>
<tr>
<td colspan = "2">
<br>Default Value     </td><td>
True</td></tr>
<tr>
<td colspan = "2">
2D / 3D Limitations</td><td>
No</td></tr>
<tr>
<td colspan = "2">
Applies to Chart Element</td><td>
All series </td></tr>
<tr>
<td colspan = "2">
Applies to Chart Types</td><td>
All chart types</td></tr>
</table>

Here is sample code snippet using Visible property in Bar Chart.

{% tabs %}

{% highlight c# %}

// Hides Series[0] and shows Series[1]

this.chartControl1.Series[0].Visible = false;

this.chartControl1.Series[1].Visible = true;

{% endhighlight %}

{% highlight vb %}

' Hides Series[0] and shows Series[1]

Private Me.chartControl1.Series(0).Visible = False

Private Me.chartControl1.Series(1).Visible = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img137.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img138.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### VisibleAllPies

Specifies whether the legend is to be displayed with one legend item for each slice in the pie.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> True - Indicates only one legend item for all slices of pie.</li><li> False - Indicates one legend item for each slice of pie.</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
False</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Pie Chart</td></tr>
</table>

Here is the sample code snippet using VisibleAllPies in PieChart.

{% tabs %}

{% highlight c# %}

this.chartControl1.ChartArea.VisibleAllPies = false;

chartControl1.Legend.RowsCount = 3;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.ChartArea.VisibleAllPies = False

chartControl1.Legend.RowsCount = 3

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img139.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img140.jpeg)

{% seealso %}

[Pie Chart](/windowsforms/chart/chart-types#pie-chart)

{% endseealso %}

### XType

Returns the x value type that is being rendered. It is a read-only property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Double - Specifies Double values</li><li> DateTime - Specifies Date and Time values</li><li>Logarithmic - Specifies Logarithmic values</li><li>Custom - Specifies Custom values</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Double</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Here is sample code snippet using XType.

{% tabs %}

{% highlight c# %}

autoLabel1.Text = this.chartControl1.Series[0].XType.ToString();

{% endhighlight %}

{% highlight vb %}

Private autoLabel1.Text = Me.chartControl1.Series(0).XType.ToString()

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img141.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### YType

Returns the y value type that is being rendered. It is a read-only property.

_Features_

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
<ul><li> Double - Specifies Double values</li><li> DateTime - Specifies Date and Time values</li><li> Logarithmic - Specifies Logarithmic values</li><li> Custom  -  Specifies Custom values</li></ul></td></tr>
<tr>
<td>
<br>Default Value     </td><td colspan = "2">
Double</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
All Chart Types</td></tr>
</table>

Here is sample code snippet using YType.

{% tabs %}

{% highlight c# %}

autoLabel1.Text = this.chartControl1.Series[0].YType.ToString();

{% endhighlight %}

{% highlight vb %}

Private autoLabel1.Text = Me.chartControl1.Series(0).YType.ToString()

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img142.jpeg)

{% seealso %}

[Chart Types](/windowsforms/chart/chart-types)

{% endseealso %}

### ZOrder

Specifies the order in which the objects are arranged and controls the visibility when one is placed over the other.

By default, the Z-order for series are assigned based on the order in which they are added to the Series collection.

<table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
Possible Values</td><td colspan = "2">
Any integer value</td></tr>
<tr>
<td>
Default Value     </td><td colspan = "2">
The order that we add the series in the chart control.</td></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
No</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
Any Series</td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Gantt Chart, Histogram chart, Tornado Chart, Combination Chart, Box and Whisker Chart, Area Charts,Polar And Radar Chart, BarCharts, Column Charts, Bubble Charts, Candle Charts, HiLo Charts, HiLo Open Close Chart</td></tr>
</table>

Here is sample code snippet using ZOrder.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].ZOrder = 0;

this.chartControl1.Series[1].ZOrder = 1;

{% endhighlight %}

{% highlight vb %}

Private Me.chartControl1.Series(0).ZOrder = 0

Private Me.chartControl1.Series(1).ZOrder = 1

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img143.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img144.jpeg)

#### Rearranging the Series using ZOrder property

The chart series can be rearranged at run-time using ZOrder property as follows. The chart needs to be redrawn in order to reflect ZOrder property changes. We cannot call redrawing for every series ZOrder changes. In order to overcome this, we should change the order of the series in between the begin update and end update statements as follows.

{% tabs %}

{% highlight c# %}

this.chartControl1.BeginUpdate();

this.chartControl1.Model.Series[0].ZOrder = 2;

this.chartControl1.Model.Series[1].ZOrder = 1;

this.chartControl1.Model.Series[2].ZOrder = 0;

this.chartControl1.EndUpdate();

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.BeginUpdate()

Me.chartControl1.Model.Series[0].ZOrder = 2

Me.chartControl1.Model.Series[1].ZOrder = 1

Me.chartControl1.Model.Series[2].ZOrder = 0

Me.chartControl1.EndUpdate()

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img145.jpeg)

{% seealso %}

[Gantt Chart](/windowsforms/chart/chart-types#gantt-chart), [Histogram chart](/windowsforms/chart/chart-types#histogram-chart), [Tornado Chart](/windowsforms/chart/chart-types#tornado-chart), [Combination Chart](/windowsforms/chart/chart-types#combination-chart), [Box and Whisker Chart](/windowsforms/chart/chart-types#box-and-whisker-chart), [Area Charts](/windowsforms/chart/chart-types#area-chart),[Polar And Radar Chart](/windowsforms/chart/chart-types#polar-and-radar-chart), [BarCharts](/windowsforms/chart/chart-types#bar-charts), [Column Charts](/windowsforms/chart/chart-types#column-charts), [Bubble Charts](/windowsforms/chart/chart-types#bubble-chart), [Candle Charts](/windowsforms/chart/chart-types#candle-chart), [HiLo Charts](/windowsforms/chart/chart-types#hi-lo-chart),[HiLo Open Close Chart](/windowsforms/chart/chart-types#hi-lo-open-close-chart)

{% endseealso %}

## Data Point Labels, Tooltips and Symbols

### Labels

Data Points in a series can be adorned with text labels as well as custom symbols to provide additional information regarding the specific data points.

Text labels can be rendered at the data points using the [DisplayText](/windowsforms/chart/chart-series#displaytext), [Text](/windowsforms/chart/chart-series#text) and [TextFormat](/windowsforms/chart/chart-series#textformat) settings. They can further be customized using the [TextColor](/windowsforms/chart/chart-series#textcolor), [TextOffset](/windowsforms/chart/chart-series#textoffset) and [TextOrientation](/windowsforms/chart/chart-series#textorientation) settings.

![Chart Series](Chart-Series_images/Chart-Series_img146.jpeg)

### Tooltips

Refer the Tooltips topic for more information on this.

#### Symbols

Built-in or custom symbols can be rendered at the data points to emphasize importance of certain data points. See Symbol setting for more information.

![Chart Series](Chart-Series_images/Chart-Series_img147.jpeg)

**Shape**:

Data markers are used to provide information about the data points in the series. You can add a shape to adorn each data point.

Markers can be assigned with different shapes such as rectangle, circle, and diamond using the shape property.

The following code sample demonstrates how to add shapes to a marker.

{% tabs %}

{% highlight c# %}

//Set add shape for chart symbols

series1.Style.Symbol.Shape = ChartSymbolShape.Circle;

{% endhighlight %}

{% highlight vb %}

//Set add shape for chart symbols

series1.Style.Symbol.Shape = ChartSymbolShape.Circle;

{% endhighlight %}
{% endtabs %}

The following screenshot illustrates a chart with different chart symbols.

![Chart Series](Chart-Series_images/Chart-Series_img178.png)

**Customization**:

The color and border of a marker can be customized using the color and border properties.

The following code sample demonstrates how to customize the color and border for shapes.

{% tabs %}

{% highlight c# %}

// set border and color for chart symbols
 series1.Style.Symbol.Shape = ChartSymbolShape.Circle;
 series1.Style.Symbol.Color = Color.Red;
 series1.Style.Symbol.Border.Color = Color.Green;
 series1.Style.Symbol.Border.Width = 3;

{% endhighlight %}

{% highlight vb %}

// set border and color for chart symbols
 series1.Style.Symbol.Shape = ChartSymbolShape.Circle;
 series1.Style.Symbol.Color = Color.Red;
 series1.Style.Symbol.Border.Color = Color.Green;
 series1.Style.Symbol.Border.Width = 3;

{% endhighlight %}
{% endtabs %}

The following screenshot illustrates a chart with color and border customization of chart symbols.

![Chart Series](Chart-Series_images/Chart-Series_img179.png)

## Custom Points

EssentialChart supports plotting of points on the Chart Area even if they don't belong to a series. These are stored in the ChartControl.CustomPoints collection. They can be set at custom coordinates of the Chart Area or be made to follow a certain point or percentage coordinates. A custom point displays a text, background, border, symbol and marker, which is a line that connects the CustomPoint with the point on the chart area when it is offset from it.

Through Designer the Custom Points can be set using the CustomPoints property. Clicking this property will popup ChartCustomPoint Collection Editor window where you can add your custom points.

You can set the co-ordinates (XValue and the YValue property), symbols and their customization, using the Symbols property, text, using the Text property, alignment of the text, using the Alignment property and so on.

![Chart Series](Chart-Series_images/Chart-Series_img148.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img149.jpeg)

#### Programmatically

* Creating and Customizing the Custom Point.

{% capture codesnippet2 %}
{% tabs %}

{% highlight c# %}

// Point that follows a series point:

ChartCustomPoint cp = new ChartCustomPoint();

// Gets the series index and point index if the CustomType is PointFollow.

cp.PointIndex = 1;

cp.SeriesIndex = 0;

// Specifies the text of the custom point.

cp.Text = "Custom Point";

// Specifies the custom type.

chartCustomPoint1.CustomType = Syncfusion.Windows.Forms.Chart.ChartCustomPointType.PointFollow;

// Specifies the shape of the custom point symbol.

cp.Symbol.Shape = ChartSymbolShape.Diamond;

// Specifies the color of the custom point.

chartCustomPoint1.Symbol.Color = Color.Khaki;

//Setting X-value and Y- value

chartCustomPoint1.XValue = 1;

chartCustomPoint1.YValue = 370;

//Setting the font properties

chartCustomPoint1.Color = System.Drawing.SystemColors.ButtonHighlight;

chartCustomPoint1.Font.Bold = true;

chartCustomPoint1.Font.Facename = "Verdana";

chartCustomPoint1.Font.Size = 10F;

{% endhighlight %}

{% highlight vb %}

'Point that follows a series point:

cp As ChartCustomPoint = New ChartCustomPoint()

'Gets the series index and point index if the CustomType is PointFollow.

cp.PointIndex = 1

cp.SeriesIndex = 0

'Specifies the text of the custom point.

cp.Text = "Custom Point"

'Specifies the custom type.

chartCustomPoint1.CustomType = Syncfusion.Windows.Forms.Chart.ChartCustomPointType.PointFollow

'Specifies the shape of the custom point symbol.

cp.Symbol.Shape = ChartSymbolShape.Diamond

'Specifies the color of the custom point.

cp.Symbol.Color = Color.Khaki

//Setting X-value and Y- value

chartCustomPoint1.XValue = 1

chartCustomPoint1.YValue = 370

'Setting the font properties

chartCustomPoint1.Color = System.Drawing.SystemColors.ButtonHighlight

chartCustomPoint1.Font.Bold = true

chartCustomPoint1.Font.Facename = "Verdana"

chartCustomPoint1.Font.Size = 10F

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet2 | OrderList_Indent_Level_1 }}

N> You can also customize a custom point symbol using Symbol property.

* Adding Custom Point to the Chart.

{% capture codesnippet3 %}
{% tabs %}

{% highlight c# %}

// Adds the custom point to the collection.

this.chartControl1.CustomPoints.Add(cp);

{% endhighlight %}

{% highlight vb %}

'Adds the custom point to the collection.

Me.chartControl1.CustomPoints.Add(cp)

{% endhighlight %}
{% endtabs %}
{% endcapture %}
{{ codesnippet3 | OrderList_Indent_Level_1 }}

_Custom point types_

<table>
<tr>
<th>
CustomPoint types</th><th>
Description</th></tr>
<tr>
<td>
PointFollow</td><td>
This custom point will follow the regular points of any series, to which it is assigned.</td></tr>
<tr>
<td>
ChartCoordinates</td><td>
This lets you render a point type at any location in the chart.</td></tr>
<tr>
<td>
Percent</td><td>
The coordinates are specified as the percentage of the chart area.</td></tr>
<tr>
<td>
Pixel</td><td>
The coordinates are specified to be in pixels of the chart area.</td></tr>
</table>

![Chart Series](Chart-Series_images/Chart-Series_img151.jpeg)

The custom point symbols in the above image represents following Custom Types respectively.

1. Yellow “Circle” – PointFollow
2. Orange “Star” - Pixel
3. Pink “Pentagon” - Percent
4. OrangeRed “Diamond” – ChartCoordinates

A sample demonstrating all the custom point types is available in our installation at the following location:

..\My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0\Chart Series\Chart Custom Points

### Custom Point in Multiple Axes

The custom points for the Secondary axis can be achieved by assigning the Series Index for the ChartCoordinates type.

The following code snippet illustrates this:

{% tabs %}

{% highlight c# %}

ChartCustomPoint cp = new ChartCustomPoint();

cp.CustomType = ChartCustomPointType.ChartCoordinates;

//Set the series index if the CustomType is ChartCoordinates in multiple axis

cp.SeriesIndex = 0;

cp.XValue = 10;

cp.YValue = 60;

cp.Symbol.Shape = ChartSymbolShape.Circle;

cp.Alignment = ChartTextOrientation.Left;

cp.Color = Color.Black;

cp.Font.Facename = "Verdana";

cp.Font.Size = 8.0F;

cp.Symbol.Color = Color.Yellow;

cp.Text = cp.XValue + "," + cp.YValue;

this.ChartWebControl1.CustomPoints.Add(cp);

{% endhighlight %}

{% highlight vb %}

Dim cp As ChartCustomPoint = New ChartCustomPoint()

cp.CustomType = ChartCustomPointType.ChartCoordinates

'Set the series index if the CustomType is ChartCoordinates in multiple axis

cp.SeriesIndex = 0

cp.XValue = 10

cp.YValue = 60

cp.Symbol.Shape = ChartSymbolShape.Circle

cp.Alignment = ChartTextOrientation.Left

cp.Color = Color.Black

cp.Font.Facename = "Verdana"

cp.Font.Size = 8.0F

cp.Symbol.Color = Color.Yellow

cp.Text = cp.XValue & "," & cp.YValue

Me.ChartWebControl1.CustomPoints.Add(cp)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img152.png)

## Empty Points

EssentialChart lets you prevent certain points from getting plotted in the resultant chart. Such points are termed Empty Points.

Empty Points can be implemented by setting the IsEmpty property of the ChartPoint class to true.

{% tabs %}

{% highlight c# %}

// This sets the specified point as empty point.

this.chartControl1.Series[1].Points[0].IsEmpty = true;

{% endhighlight %}

{% highlight vb %}

' This sets the specified point as empty point.

Me.chartControl1.Series[1].Points[0].IsEmpty = True

{% endhighlight %}
{% endtabs %}

The following images illustrate the same. The second image displays after setting Point1 as an empty point.

![Chart Series](Chart-Series_images/Chart-Series_img153.jpeg)

![Chart Series](Chart-Series_images/Chart-Series_img154.jpeg)

Showing Empty Point without any gap between Data Points

It is possible to set some data point as empty point and still show the chart without any gap between the points. You need to set AllowGapForEmptyPoints property to false to enable this feature. By default it is set to true.

![Chart Series](Chart-Series_images/Chart-Series_img155.jpeg)

N> You need to set ChartControl.Indexed property to true for the above setting to be effective.

{% tabs %}

{% highlight c# %}

this.chartControl1.Series[0].Points[3].IsEmpty = true;

this.chartControl1.Series[0].Points[4].IsEmpty = true;

this.chartControl1.Series[0].Points[5].IsEmpty = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Series(0).Points(3).IsEmpty = True

Me.chartControl1.Series(0).Points(4).IsEmpty = True

Me.chartControl1.Series(0).Points(5).IsEmpty = True

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img156.jpeg)

{% tabs %}

{% highlight c# %}

this.chartControl1.Indexed = true;

this.chartControl1.AllowGapForEmptyPoints = true;

{% endhighlight %}

{% highlight vb %}

Me.chartControl1.Indexed = True

Me.chartControl1.AllowGapForEmptyPoints = True

{% endhighlight %}
{% endtabs %}

[VB.NET]

![Chart Series](Chart-Series_images/Chart-Series_img157.jpeg)

## Trendlines

Trendlines are used to analyze and display the trends in the data graphically. It is built on the assumptions based on current and past price trends.
 Multiple Trendlines can be added to the **ChartSeries.Trendlines** collection which holds objects of class **Trendline**.

 _Features_

 <table>
<tr>
<th colspan = "2">
Features</th><th>
Details</th></tr>
<tr>
<td>
2D / 3D Limitations</td><td colspan = "2">
Not Applicable for 3D</td></tr>
<tr>
<td>
Applies to Chart Element</td><td colspan = "2">
All series and Points </td></tr>
<tr>
<td>
Applies to Chart Types</td><td colspan = "2">
Scatter Chart, HiLo Open Close Chart, Column Charts, Bar Charts, Bubble Chart,
Line Charts, Box and Whisker Chart,  Combination Chart, Candle Chart, Area Charts,
ColumnRange Chart, BoxAndWhiskerChart, Stacking Column Chart, Stacking Bar Chart, Stacking Area, Stacking Area100</td></tr>
</table>

The Properties of Trendlines are listed below

<table>
<tr>
<th>
Trendline Properties</th><th colspan = "2">
Description </th><th>
Default Value</th></tr>
<tr>
<td>
Name</td><td colspan = "2">
Gets or Sets the name for the Trendline</td><td>Trendline</td></tr>
<tr>
<td>
Visible</td><td colspan = "2">
Displays the Trendline</td><td>True</td></tr>
<tr>
<td>
Type</td><td colspan = "2">
Enum property that displays the various types of Trendlines</td><td>TrendlineType.Linear</td></tr>
<tr>
<td>
BackwardForecast</td><td colspan = "2">
Gets or Sets the Backward Forecast values </td><td>0</td></tr>
<tr>
<td>
ForwardForecast</td><td colspan = "2">
Gets or Sets the Forward Forecast values</td><td>0</td></tr>
<tr>
<td>
PolynomialOrder</td><td colspan = "2">
Gets or Sets the Polynomial Order value for the Polynomial Trendline </td><td>2</td></tr>
<tr>
<td>
Period</td><td colspan = "2">
Gets or Sets the period used in the Moving Average Trendline</td><td>2</td></tr>
<tr>
<td>
Style</td><td colspan = "2">
Gets or Sets the Dash Style for the Trendline </td><td>DashStyle.Solid</td></tr>
<tr>
<td>
Width</td><td colspan = "2">
Gets or Sets the line  width  for the Trendline</td><td>1f</td></tr>
<tr>
<td>
Color</td><td colspan = "2">
Gets or Sets the Color associated with the Trendline</td><td>Color.Black</td></tr>
</table>

The Code Snippet to enable the Trendlines in Chart
{% tabs %}

{% highlight c# %}

//Declaring

Trendline trendline = new Trendline();

//Customizing the Trendline

trendline.Name = "Linear";
trendline.Visible = true;
trendline.Style = DashStyle.Solid;
trendline.Width = 2f;
trendline.Color = Color.Black;
trendline.Type = TrendlineType.Linear;

//Adding Trendline to the series

this.chartControl1.Series[0].Trendlines.Add(trendline);

{% endhighlight %}

{% highlight vb %}

'Declaring

Private  trendline  As Trendline = new Trendline()

'Customizing the Trendline

trendline.Name = "Linear"

trendline.Visible = true

trendline.Style = DashStyle.Solid

trendline.Width = 2f

trendline.Color = Color.Black

trendline.Type = TrendlineType.Linear

'Adding Trendline to the series

Me.chartControl1.Series[0].Trendlines.Add(trendline)

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img159.png)

### Trendline Types

The different types of trendlines are

*	Linear Trendline
*	Exponential Trendline
*	Power Trendline
*   Logarithmic Trendline
*	Polynomial Trendline
*	Moving Average Trendline

### Linear Trendline

To render the Linear Trendline, you have to set the Type as **TrendlineType.Linear**.

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.Linear;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.Linear

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img159.png)

### Exponential Trendline

Exponential Trendline can be rendered by setting the trendline.Type as **TrendlineType.Exponential**.

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.Exponential;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.Exponential

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img160.png)

N> This trendline cannot be used for negative values and values containing zero

### Power Trendline

Power Trendline can be rendered by setting the trendline.Type as **TrendlineType.Power**.

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.Power;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.Power

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img161.png)

### Logarithmic Trendline

Logarithmic Trendline can be rendered by setting the trendline.Type as **TrendlineType.Logarithmic**.

{% tabs %}  {% highlight c# %}

trendline.Type = TrendlineType.Logarithmic;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.Logarithmic

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img162.png)

### Polynomial Trendline

Polynomial Trendline can be rendered by setting the trendline.Type as **TrendlineType.Polynomial**.

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.Polynomial;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.Polynomial

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img163.png)

### Polynomial Order

You can set the Polynomial order for the Polynomial trendline. Polynomial order calculates order based on the equation and this value should fall between 2 and 6.

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.Polynomial;
trendline.PolynomialOrder = 4;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.Polynomial
trendline.PolynomialOrder = 4

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img164.png)

### Moving Average Trendline

Moving Average Trendline can be rendered by setting the trendline.Type as **TrendlineType.MovingAverage**.

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.MovingAverage;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.MovingAverage

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img165.png)

### Period

The period of the Moving Average Trendline is modified by using the **period** property

{% tabs %}

{% highlight c# %}

trendline.Type = TrendlineType.MovingAverage;
trendline.Period = 3;

{% endhighlight %}

{% highlight vb %}

trendline.Type = TrendlineType.MovingAverage
trendline.Period = 3

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img166.png)

### Forecasting

 **Trendline forecasting** is the prediction of future/past situations.

**Forecasting** can be classified into two types as follows.

*	Forward Forecasting

*	Backward Forecasting

### Forward Forecasting

For determining the future trends (in forward direction). The following code example explains the how to set the value for forward forecast.

{% tabs %}

{% highlight c# %}

trendline.ForwardForecast = 10;

{% endhighlight %}

{% highlight vb %}

trendline.ForwardForecast = 10

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img167.png)

### Backward Forecasting

For determining the past trends (in backward direction). The following code example explains the how to set the value for backward forecast.

{% tabs %}

{% highlight c# %}

trendline.BackwardForecast = 10;

{% endhighlight %}

{% highlight vb %}

trendline.BackwardForecast = 10

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img168.png)

### Trendline Legends

The visibility of the trendline can also be checked using the checkboxes in the legend. When the legend checkbox is unchecked, the trendline is hidden.

![Chart Series](Chart-Series_images/Chart-Series_img169.png)

N> In order to enable the checkboxes in the trendline legend ,**VisibleCheckBox** property should be enabled in the legend.

### Customizing the Styles of the Trendlines

The trendline can be customized by using the properties such as **Color, Width and Style**.

{% tabs %}

{% highlight c# %}

trendline.Style = DashStyle.Dash;
trendline.Width = 3f;
trendline.Color = Color.Red;

{% endhighlight %}

{% highlight vb %}

trendline.Style = DashStyle.Dash
trendline.Width = 3f
trendline.Color = Color.Red

{% endhighlight %}
{% endtabs %}

![Chart Series](Chart-Series_images/Chart-Series_img170.png)

