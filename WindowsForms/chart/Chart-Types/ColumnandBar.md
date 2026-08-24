---
layout: post
title: Column and Bar Chart in Windows Forms Chart control | Syncfusion
description: Column and bar series in the Windows Forms Chart compare categorical data using vertical and horizontal bars for clear data visualization.
platform: windowsforms
control: Chart
documentation: ug
---

## Column chart

A chart that uses vertical bars (columns) to compare values across different categories or to show changes in data over time. It is useful for comparing counts, totals, averages, or frequencies between groups. The following code shows how to define a column chart in ChartControl.

Column charts are similar to Bar Charts, except that bar charts use `horizontal bars`.

You can also customize the following features for column charts:
* **Column Spacing**: The [Spacing](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Spacing) property is used to control the gap between columns from different data series.
* **3D Style**: Enable the [Style3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Style3D) property to render the chart in a 3D view with enhanced colors and depth effects.

N>
Chart details for column chart.
* Number of Y values per point - 1.
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Stacked Bar, Polar, Radar.

The following code example demonstrates how to create a Column Chart.

{% tabs %}
{% highlight c# %}

// Create chart series and add data points into it.
ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.Column);
firstServer.Points.Add(10, 300);
firstServer.Points.Add(20, 600);
firstServer.Points.Add(30, 400);
firstServer.Points.Add(40, 300);
firstServer.Points.Add(50, 400);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.Column);

secondServer.Points.Add(10, 300);
secondServer.Points.Add(20, 500);
secondServer.Points.Add(30, 200);
secondServer.Points.Add(40, 700);
secondServer.Points.Add(50, 750);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

// Create chart series and add data points into it.
Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.Column)
firstServer.Points.Add(10, 300)
firstServer.Points.Add(20, 600)
firstServer.Points.Add(30, 400)
firstServer.Points.Add(40, 300)
firstServer.Points.Add(50, 400)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.Column)
secondServer.Points.Add(10, 300)
secondServer.Points.Add(20, 500)
secondServer.Points.Add(30, 200)
secondServer.Points.Add(40, 700)
secondServer.Points.Add(50, 750)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Column Chart in Windows Forms](../Chart-Types_images/windowsforms-column-chart.png)

### Column width mode
The [ColumnWidthMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_ColumnWidthMode) property provides three modes for calculating column widths: [DefaultWidthMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnWidthMode.html#Syncfusion_Windows_Forms_Chart_ChartColumnWidthMode_DefaultWidthMode), [FixedWidthMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnWidthMode.html#Syncfusion_Windows_Forms_Chart_ChartColumnWidthMode_FixedWidthMode), and [RelativeWidthMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnWidthMode.html#Syncfusion_Windows_Forms_Chart_ChartColumnWidthMode_RelativeWidthMode).

* **DefaultWidthMode**: Automatically calculates column widths to fill the available space between columns.
* **FixedWidthMode**: Allows column widths to be specified using the measurement units of the X-axis.
* **RelativeWidthMode**: Sets column widths relative to the X-axis range. A width value of 1.0 corresponds to one unit on the axis range.

{% tabs %}
{% highlight c# %}
chartControl.ColumnWidthMode = ChartColumnWidthMode.DefaultWidthMode;
{% highlight vb %}
chartControl.ColumnWidthMode = ChartColumnWidthMode.DefaultWidthMode
{% endhighlight %}
{% endtabs %}


### Column type
The [ColumnType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartColumnConfigItem_ColumnType) property provides two types of column display: [Box](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnType.html#Syncfusion_Windows_Forms_Chart_ChartColumnType_Box), and [Cylinder](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnType.html#Syncfusion_Windows_Forms_Chart_ChartColumnType_Cylinder). It works when 3d chart enaable.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.ColumnItem.ColumnType = ChartColumnType.Box;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.ColumnItem.ColumnType = ChartColumnType.Box
{% endhighlight %}
{% endtabs %}

### Corner radius

The [CornerRadius](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartColumnConfigItem_CornerRadius) property specifies the horizontal and vertical radii used to render rounded corners for columns and bars.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.ColumnItem.CornerRadius = new SizeF(10, 10);
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.ColumnItem.CornerRadius = New SizeF(10, 10)
{% endhighlight %}
{% endtabs %}

### Light angle

The [LightAngle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartColumnConfigItem_LightAngle) property specifies the horizontal angle of the light source when the **ShadingMode** property is set to **PhongCylinder**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.ColumnItem.LightAngle = -Math.PI / 4;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.ColumnItem.LightAngle = -Math.PI / 4
{% endhighlight %}
{% endtabs %}

### Light color

The [LightColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartColumnConfigItem_LightColor) property specifies the color of the light source when the **ShadingMode** property is set to **PhongCylinder**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.ColumnItem.LightColor = Color.White;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.ColumnItem.LightColor = Color.White
{% endhighlight %}
{% endtabs %}

### Phong alpha

The [PhongAlpha](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartColumnConfigItem_PhongAlpha) property controls the intensity and sharpness of the specular lighting effect applied to columns and bars.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.ColumnItem.PhongAlpha = 20d;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.ColumnItem.PhongAlpha = 20.0
{% endhighlight %}
{% endtabs %}

### Shading mode

The [ShadingMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartColumnConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartColumnConfigItem_ShadingMode) property specifies the shading effect applied to columns and bars.

The **ShadingMode** property supports the following values:

- **FlatRectangle**: Renders columns or bars with flat rectangular shading.
- **PhongCylinder**: Renders columns or bars using Phong shading to create a cylindrical lighting effect.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.ColumnItem.ShadingMode = ChartColumnShadingMode.PhongCylinder;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.ColumnItem.ShadingMode = ChartColumnShadingMode.PhongCylinder
{% endhighlight %}
{% endtabs %}

### Customization option

The following chart series properties are used as customization options for Column chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [ColumnDrawMode](https://help.syncfusion.com/windowsforms/chart/chart-series#columndrawmode)
- [ColumnFixedWidth](https://help.syncfusion.com/windowsforms/chart/chart-series#columnfixedwidth)
- [ColumnType](https://help.syncfusion.com/windowsforms/chart/chart-series#columntype)
- [ColumnWidthMode](https://help.syncfusion.com/windowsforms/chart/chart-series#columnwidthmode)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawColumnSeparatingLines](https://help.syncfusion.com/windowsforms/chart/chart-series#drawcolumnseparatinglines)
- [DrawErrorBars](https://help.syncfusion.com/windowsforms/chart/chart-series#drawerrorbars)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [ErrorBarsSymbolShape](https://help.syncfusion.com/windowsforms/chart/chart-series#errorbarssymbolshape)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle)
- [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing](https://help.syncfusion.com/windowsforms/chart/chart-series#spacing)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

# Bar chart in windows forms chart

A bar chart is a graphical representation of data that uses rectangular bars to compare values across different categories. The length of each bar indicates the magnitude of the value, making it easy to visualize and compare data. They operate similarly to column charts, which display vertical bars.

You can also customize the following features for bar chart:
* **Chart 3-D Mode**: Render the chart in 3-D mode by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.
* **Chart Series Points**: Display series points using the [DisplayText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_DisplayText) property in a chart control.
* **Series Color Settings**: Change series colors using the [Interior](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartStyleInfo.html#Syncfusion_Windows_Forms_Chart_ChartStyleInfo_Interior) property in a chart control.

## Bar chart

Bar chart display data with horizontal bars to compare values across categories. They support multiple series and can be shown with a 3D visual effect. The following code shows how to define a bar chart in ChartControl.

N>
Chart details for bar chart.
* Number of Y values per point - 1.
* Number of Series - One or More.
* Cannot be combined with - Any chart type except Bar and Stacked Bar charts.

The following code example demonstrates how to create a Bunnel chart.

{% tabs %}
{% highlight c# %}

ChartSeries firstServer = new ChartSeries("Server 1", ChartSeriesType.Bar);
firstServer.Points.Add(10, 100);
firstServer.Points.Add(20, 300);
firstServer.Points.Add(30, 200);
firstServer.Points.Add(40, 100);
firstServer.Points.Add(50, 200);

ChartSeries secondServer = new ChartSeries("Server 2", ChartSeriesType.Bar);

secondServer.Points.Add(10, 100);
secondServer.Points.Add(20, 200);
secondServer.Points.Add(30, 100);
secondServer.Points.Add(40, 300);
secondServer.Points.Add(50, 350);

chartControl.Series.Add(firstServer);
chartControl.Series.Add(secondServer);

{% endhighlight %}
{% highlight vb %}

Dim firstServer As New ChartSeries("Server 1", ChartSeriesType.Bar)
firstServer.Points.Add(10, 100)
firstServer.Points.Add(20, 300)
firstServer.Points.Add(30, 200)
firstServer.Points.Add(40, 100)
firstServer.Points.Add(50, 200)

Dim secondServer As New ChartSeries("Server 2", ChartSeriesType.Bar)
secondServer.Points.Add(10, 100)
secondServer.Points.Add(20, 200)
secondServer.Points.Add(30, 100)
secondServer.Points.Add(40, 300)
secondServer.Points.Add(50, 350)

chartControl.Series.Add(firstServer)
chartControl.Series.Add(secondServer)

{% endhighlight %}
{% endtabs %}

![Bar chart in Windows Forms](../Chart-Types_images/windowsforms-bar-chart.png)

### Customization option

The following chart series properties are used as customization options for Bar chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [ColumnDrawMode](https://help.syncfusion.com/windowsforms/chart/chart-series#columndrawmode)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle)
- [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing](https://help.syncfusion.com/windowsforms/chart/chart-series#spacing)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)