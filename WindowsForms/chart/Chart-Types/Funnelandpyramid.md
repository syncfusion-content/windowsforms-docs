---
layout: post
title: Funnel and Pyramid Chart in Windows Forms Chart control | Syncfusion
description: Funnel and pyramid series in the Windows Forms Chart visualize proportional data across stages, enabling effective comparison and analysis.
platform: windowsforms
control: Chart
documentation: ug
---

# Funnel and Pyramid charts in windows forms chart

## Pyramid chart
Pyramid Chart is a single-series chart that represents data as portions of 100% and does not use axes. It is similar to a Funnel Chart and is often used to display hierarchical or geographical data. Pyramid charts can be displayed in 2D or 3D mode.

You can also customize the following feature:

* **Chart 3-D Mode**: A chart can be rendered in 3-D mode by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Any other chart types.

The following code example demonstrates how to create a Pyramid chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Pyramid chart", ChartSeriesType.Pyramid);
series.Points.Add(0, 25);
series.Points.Add(1, 25);
series.Points.Add(2, 25);
series.Points.Add(3, 25);
series.Points.Add(4, 25);
chartControl.Series.Add(series);

series.Styles[0].Text = "Oats\n4.15%";
series.Styles[1].Text = "Barley\n12.89%";
series.Styles[2].Text = "Maize\n21.62%";
series.Styles[3].Text = " Rice\n23.75%";
series.Styles[4].Text = "Wheat\n37.5%";

series.Style.DisplayText = true;
series.Style.TextColor = Color.Black;

series.ConfigItems.PyramidItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn;
series.ConfigItems.PyramidItem.LabelPlacement = ChartAccumulationLabelPlacement.Center;

chartControl.Legend.Visible = false;

{% endhighlight %}
{% highlight vb %}

' Pyramid Series
Dim series As New ChartSeries("Pyramid chart", ChartSeriesType.Pyramid)

series.Points.Add(0, 25)
series.Points.Add(1, 25)
series.Points.Add(2, 25)
series.Points.Add(3, 25)
series.Points.Add(4, 25)

chartControl.Series.Add(series)

' Labels
series.Styles(0).Text = "Oats" & vbLf & "4.15%"
series.Styles(1).Text = "Barley" & vbLf & "12.89%"
series.Styles(2).Text = "Maize" & vbLf & "21.62%"
series.Styles(3).Text = "Rice" & vbLf & "23.75%"
series.Styles(4).Text = "Wheat" & vbLf & "37.5%"

' Display Labels
series.Style.DisplayText = True
series.Style.TextColor = Color.Black

' Pyramid Settings
series.ConfigItems.PyramidItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn
series.ConfigItems.PyramidItem.LabelPlacement = ChartAccumulationLabelPlacement.Center

' Hide Legend
chartControl.Legend.Visible = False

{% endhighlight %}
{% endtabs %}

![Pyramid Chart in Windows Forms](../Chart-Types_images/windowsforms-pyramid-chart.png)

### Figure base

The [FigureBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_FigureBase) property specifies the shape of the pyramid base when the chart is rendered in 3D mode. The supported values are **Square** and **Circle**.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.FigureBase = ChartFigureBase.Square;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.FigureBase = ChartFigureBase.Square
{% endhighlight %}
{% endtabs %}

### Gap ratio

The [GapRatio](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_GapRatio) property controls the spacing between pyramid segments. Increasing the value adds more separation between the segments, making them easier to distinguish.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.GapRatio = 0.2f;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.GapRatio = 0.2F
{% endhighlight %}
{% endtabs %}

### Label placement

The [LabelPlacement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_LabelPlacement) property specifies the position of data labels relative to the pyramid segments.

The **LabelPlacement** property supports the following values:

- **Top**: Displays the label at the top of the segment when it is rendered inside.
- **Bottom**: Displays the label at the bottom of the segment when it is rendered inside.
- **Center**: Displays the label at the center of the segment when it is rendered inside.
- **Left**: Displays the label to the left of the segment when it is rendered outside.
- **Right**: Displays the label to the right of the segment when it is rendered outside.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.LabelPlacement = ChartAccumulationLabelPlacement.Right;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.LabelPlacement = ChartAccumulationLabelPlacement.Right
{% endhighlight %}
{% endtabs %}

### Label style

The [LabelStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_LabelStyle) property specifies how data labels are displayed in the pyramid chart, including whether they are displayed inside or outside the segments, within the chart area, in columns, or hidden.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.LabelStyle = ChartAccumulationLabelStyle.Outside;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.LabelStyle = ChartAccumulationLabelStyle.Outside
{% endhighlight %}
{% endtabs %}

### Pyramid mode

The [PyramidMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_PyramidMode) property specifies how the Y-values are interpreted when calculating the size of pyramid segments.

The **PyramidMode** property supports the following modes:

- **Linear**: The height of each pyramid segment is proportional to its Y-value. This is the default mode.
- **Surface**: The surface area of each pyramid segment is proportional to its Y-value, providing a more accurate visual representation of the data.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.PyramidMode = ChartPyramidMode.Linear;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.PyramidMode = ChartPyramidMode.Linear
{% endhighlight %}
{% endtabs %}

### Show databind labels

The [ShowDataBindLabels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_ShowDataBindLabels) property controls whether labels obtained from the bound data source are displayed on the pyramid segments.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.ShowDataBindLabels = true;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.ShowDataBindLabels = True
{% endhighlight %}
{% endtabs %}

### Show series title

The [ShowSeriesTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPyramidConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPyramidConfigItem_ShowSeriesTitle) property controls whether the series title is displayed in the pyramid chart.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.PyramidItem.ShowSeriesTitle = true;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.PyramidItem.ShowSeriesTitle = True
{% endhighlight %}
{% endtabs %}

### Customization option

The following chart series properties are used as customization options for Pyramid chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [FigureBase](https://help.syncfusion.com/windowsforms/chart/chart-series#figurebase)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [GapRatio](https://help.syncfusion.com/windowsforms/chart/chart-series#gapratio)
- [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LabelPlacement](https://help.syncfusion.com/windowsforms/chart/chart-series#labelplacement)
- [LabelStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#labelstyle)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [PyramidMode](https://help.syncfusion.com/windowsforms/chart/chart-series#pyramidmode)
- [ShowDataBindLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#showdatabindlabels)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## Funnel chart

A Funnel Chart is a single-series chart that represents data as portions of 100% and does not use axes. It is commonly used to visualize stages in a process, such as a sales pipeline, and can be displayed in 2D or 3D mode.

You can also customize the following feature:

* **Chart 3-D Mode**: A chart can be rendered in 3-D mode by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Any other chart types.

The following code example demonstrates how to create a Funnel chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Funnel chart", ChartSeriesType.Funnel);
series.Points.Add(0, 25);
series.Points.Add(1, 25);
series.Points.Add(2, 25);
series.Points.Add(3, 25);
series.Points.Add(4, 25);
chartControl.Series.Add(series);

series.Styles[0].Text = "Oats\n4.15%";
series.Styles[1].Text = "Barley\n12.89%";
series.Styles[2].Text = "Maize\n21.62%";
series.Styles[3].Text = " Rice\n23.75%";
series.Styles[4].Text = "Wheat\n37.5%";

series.Style.DisplayText = true;
series.Style.TextColor = Color.Black;

series.ConfigItems.FunnelItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn;
series.ConfigItems.FunnelItem.LabelPlacement = ChartAccumulationLabelPlacement.Center;

chartControl.Legend.Visible = false;

{% endhighlight %}
{% highlight vb %}

' Funnel Series
Dim series As New ChartSeries("Funnel chart", ChartSeriesType.Funnel)

series.Points.Add(0, 25)
series.Points.Add(1, 25)
series.Points.Add(2, 25)
series.Points.Add(3, 25)
series.Points.Add(4, 25)

chartControl.Series.Add(series)

' Data Labels
series.Styles(0).Text = "Oats" & vbLf & "4.15%"
series.Styles(1).Text = "Barley" & vbLf & "12.89%"
series.Styles(2).Text = "Maize" & vbLf & "21.62%"
series.Styles(3).Text = "Rice" & vbLf & "23.75%"
series.Styles(4).Text = "Wheat" & vbLf & "37.5%"

' Series Style
series.Style.DisplayText = True
series.Style.TextColor = Color.Black

' Funnel Configuration
series.ConfigItems.FunnelItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn
series.ConfigItems.FunnelItem.LabelPlacement = ChartAccumulationLabelPlacement.Center

' Legend
chartControl.Legend.Visible = False

{% endhighlight %}
{% endtabs %}

![Funnel Chart in Windows Forms](../Chart-Types_images/windowsforms-trapezoid-funnel-chart.png)

### Figure base

The [FigureBase](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_FigureBase) property specifies the shape of the funnel base when the chart is rendered in 3D mode. The supported values are **Circle** and **Square**.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.FigureBase = ChartFigureBase.Circle;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.FigureBase = ChartFigureBase.Circle
{% endhighlight %}
{% endtabs %}

### Funnel mode

The [FunnelMode](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_FunnelMode) property specifies whether the Y-values are used to calculate the height or width of the funnel blocks.

The **FunnelMode** property supports the following values:

- **YIsHeight**: Uses the Y-value to calculate the height of each funnel block.
- **YIsWidth**: Uses the Y-value to calculate the width of each funnel block.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.FunnelMode = ChartFunnelMode.YIsHeight;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.FunnelMode = ChartFunnelMode.YIsHeight
{% endhighlight %}
{% endtabs %}

### Gap ratio

The [GapRatio](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_GapRatio) property controls the spacing between funnel blocks. Increasing the value adds more separation between the blocks, making them easier to distinguish.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.GapRatio = 0.2f;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.GapRatio = 0.2F
{% endhighlight %}
{% endtabs %}

### Label placement

The [LabelPlacement](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_LabelPlacement) property specifies the position of data labels relative to the funnel blocks.

The **LabelPlacement** property supports the following values:

- **Bottom**: Displays the label at the bottom of the block when rendered inside.
- **Center**: Displays the label at the center of the block when rendered inside.
- **Left**: Displays the label to the left of the block when rendered outside.
- **Right**: Displays the label to the right of the block when rendered outside.
- **Top**: Displays the label at the top of the block when rendered inside.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.LabelPlacement = ChartAccumulationLabelPlacement.Right;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.LabelPlacement = ChartAccumulationLabelPlacement.Right
{% endhighlight %}
{% endtabs %}

### Label style

The [LabelStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_LabelStyle) property specifies how data labels are displayed in the funnel chart, including whether they are displayed inside or outside the blocks, within the chart area, in columns, or hidden.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.LabelStyle = ChartAccumulationLabelStyle.Outside;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.LabelStyle = ChartAccumulationLabelStyle.Outside
{% endhighlight %}
{% endtabs %}

### Show databind labels

The [ShowDataBindLabels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_ShowDataBindLabels) property controls whether labels obtained from the bound data source are displayed on the funnel blocks.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.ShowDataBindLabels = true;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.ShowDataBindLabels = True
{% endhighlight %}
{% endtabs %}

### Show sseries title

The [ShowSeriesTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFunnelConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFunnelConfigItem_ShowSeriesTitle) property controls whether the series title is displayed in the funnel chart.

{% tabs %}
{% highlight c# %}
Series[0].ConfigItems.FunnelItem.ShowSeriesTitle = true;
{% endhighlight %}
{% highlight vb %}
Series(0).ConfigItems.FunnelItem.ShowSeriesTitle = True
{% endhighlight %}
{% endtabs %}

### Customization option

The following chart series properties are used as customization options for Funnel chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [FigureBase](https://help.syncfusion.com/windowsforms/chart/chart-series#figurebase)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [FunnelMode](https://help.syncfusion.com/windowsforms/chart/chart-series#funnelmode)
- [GapRatio](https://help.syncfusion.com/windowsforms/chart/chart-series#gapratio)
- [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LabelPlacement](https://help.syncfusion.com/windowsforms/chart/chart-series#labelplacement)
- [LabelStyle](https://help.syncfusion.com/windowsforms/chart/chart-series#labelstyle)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [ShowDataBindLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#showdatabindlabels)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)