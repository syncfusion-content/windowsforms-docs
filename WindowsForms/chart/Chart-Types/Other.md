---
layout: post
title: Other Chart Types in Windows Forms Charts | Syncfusion®
description: Other chart types in the Windows Forms Chart display specialized data patterns for various analytical and data representation scenarios.
platform: windowsforms
control: SfChart
documentation: ug
---

## Gantt chart

A project management chart that displays tasks as horizontal bars along a timeline, showing their start dates, durations, end dates, and progress. It helps track schedules, dependencies, and overall project status at a glance.

The following features are supported in the Gantt chart:

* **Drag and Drop**: Dragging and dropping within a chart can be enabled by handling the appropriate `Chart Region Mouse` events.
* **Chart Custom Points**: Chart custom points are used to set custom points for a series so they can show employee task completion in terms of days.
* **Chart Strip Lines**: Strip lines are used to highlight specific ranges or regions in a chart.

N>
Chart details for gantt chart.
* Number of Y values per point - 2 (1st is beginning value and the 2nd is the ending value).
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar.

The following code example demonstrates how to create a Gantt Chart.

{% tabs %}
{% highlight c# %}

ChartSeries planningPhase = new ChartSeries("Planning Phase", ChartSeriesType.Gantt);

planningPhase.Points.Add(0, 10, 35); // Duration 25
planningPhase.Points.Add(1, 20, 55); // Duration 35
planningPhase.Points.Add(2, 30, 45); // Duration 15
planningPhase.Points.Add(3, 40, 75); // Duration 35
planningPhase.Points.Add(4, 50, 65); // Duration 15

ChartSeries developmentPhase = new ChartSeries("Development Phase", ChartSeriesType.Gantt);

developmentPhase.Points.Add(0, 35, 70); // Duration 35
developmentPhase.Points.Add(1, 55, 90); // Duration 35
developmentPhase.Points.Add(2, 45, 80); // Duration 35
developmentPhase.Points.Add(3, 75, 95); // Duration 20
developmentPhase.Points.Add(4, 65, 85); // Duration 20

chartControl.Series.Add(planningPhase);
chartControl.Series.Add(developmentPhase);

{% endhighlight %}
{% highlight vb %}

' Planning Phase Series
Dim planningPhase As New ChartSeries("Planning Phase", ChartSeriesType.Gantt)

planningPhase.Points.Add(0, 10, 35) ' Duration 25
planningPhase.Points.Add(1, 20, 55) ' Duration 35
planningPhase.Points.Add(2, 30, 45) ' Duration 15
planningPhase.Points.Add(3, 40, 75) ' Duration 35
planningPhase.Points.Add(4, 50, 65) ' Duration 15

' Development Phase Series
Dim developmentPhase As New ChartSeries("Development Phase", ChartSeriesType.Gantt)

developmentPhase.Points.Add(0, 35, 70) ' Duration 35
developmentPhase.Points.Add(1, 55, 90) ' Duration 35
developmentPhase.Points.Add(2, 45, 80) ' Duration 35
developmentPhase.Points.Add(3, 75, 95) ' Duration 20
developmentPhase.Points.Add(4, 65, 85) ' Duration 20

' Add Series to Chart
chartControl.Series.Add(planningPhase)
chartControl.Series.Add(developmentPhase)

{% endhighlight %}
{% endtabs %}

![Gantt Chart in Windows Forms](../Chart-Types_images/windowsforms-gantt-chart.png)

### Customization option

The following chart series properties are used as customization options for Gantt chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [ColumnDrawMode](https://help.syncfusion.com/windowsforms/chart/chart-series#columndrawmode)
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
- [ZOrder](https://help.syncfusion.com/windowsforms/chart/chart-series#zorder)

## HeatMap chart

Heat map chart is a graphical representation of data where the values taken by a variable in two-dimensional map are represented as colors.

N>
Chart Details
* Number of Y values per point - 2.
* Number of Series - One.
* Cannot be Combined with - Any other chart types.

The following code example demonstrates how to create a HeatMap chart.

{% tabs %}
{% highlight c# %}

chartControl.Text = "Stocks - Sales and Expense details";

ChartTitle title = new ChartTitle() { Text = "Cell Size as Sales, Cell Color as Expense" };

chartControl.Titles.Add(title);
chartControl.Title.Font = new System.Drawing.Font("Segoe UI", 16F);
chartControl.Title.ForeColor = System.Drawing.Color.MidnightBlue;
chartControl.Title.Name = "Default";

title.Font = new System.Drawing.Font("Segoe UI", 8.5F, System.Drawing.FontStyle.Bold);
title.ForeColor = System.Drawing.Color.Black;

ChartSeries Stocks = new ChartSeries("Stocks", ChartSeriesType.HeatMap);
Stocks.Points.Add(7, 4, 10000);
Stocks.Points.Add(6, 3, 5541);
Stocks.Points.Add(5, 2, 6007);
Stocks.Points.Add(4, 2, 5022);
Stocks.Points.Add(3, 2.5, 6882);
Stocks.Points.Add(2, 1.5, 6584);
Stocks.Points.Add(1, 1, 2799);

Stocks.Styles[0].Text = "US";
Stocks.Styles[1].Text = "South Carolina";
Stocks.Styles[2].Text = "Florida";
Stocks.Styles[3].Text = "Mexico";
Stocks.Styles[4].Text = "Arizona";
Stocks.Styles[5].Text = "North Carolina";
Stocks.Styles[6].Text = "Utah";

Stocks.Style.DisplayText = true;
Stocks.Style.Font.Size = 9f;
chartControl.Series.Add(Stocks);
chartControl.ShowLegend = false;

Stocks.ConfigItems.HeatMapItem.DisplayTitle = true;
Stocks.ConfigItems.HeatMapItem.LowestValueColor = Color.FromArgb(255, 23, 0);
Stocks.ConfigItems.HeatMapItem.HighestValueColor = Color.FromArgb(81, 168, 0);
Stocks.ConfigItems.HeatMapItem.MiddleValueColor = Color.Gold;
Stocks.ConfigItems.HeatMapItem.StartText = "US";
Stocks.ConfigItems.HeatMapItem.EndText = "Utah";

{% endhighlight %}
{% highlight vb %}

' Chart Text
chartControl.Text = "Stocks - Sales and Expense details"

' Chart Title
Dim title As New ChartTitle() With {
.Text = "Cell Size as Sales, Cell Color as Expense"
}

chartControl.Titles.Add(title)

chartControl.Title.Font = New Font("Segoe UI", 16.0F)
chartControl.Title.ForeColor = Color.MidnightBlue
chartControl.Title.Name = "Default"

title.Font = New Font("Segoe UI", 8.5F, FontStyle.Bold)
title.ForeColor = Color.Black

' HeatMap Series
Dim Stocks As New ChartSeries("Stocks", ChartSeriesType.HeatMap)

Stocks.Points.Add(7, 4, 10000)
Stocks.Points.Add(6, 3, 5541)
Stocks.Points.Add(5, 2, 6007)
Stocks.Points.Add(4, 2, 5022)
Stocks.Points.Add(3, 2.5, 6882)
Stocks.Points.Add(2, 1.5, 6584)
Stocks.Points.Add(1, 1, 2799)

' Data Labels
Stocks.Styles(0).Text = "US"
Stocks.Styles(1).Text = "South Carolina"
Stocks.Styles(2).Text = "Florida"
Stocks.Styles(3).Text = "Mexico"
Stocks.Styles(4).Text = "Arizona"
Stocks.Styles(5).Text = "North Carolina"
Stocks.Styles(6).Text = "Utah"

Stocks.Style.DisplayText = True
Stocks.Style.Font.Size = 9.0F

chartControl.Series.Add(Stocks)

chartControl.ShowLegend = False

' HeatMap Settings
Stocks.ConfigItems.HeatMapItem.DisplayTitle = True
Stocks.ConfigItems.HeatMapItem.LowestValueColor = Color.FromArgb(255, 23, 0)
Stocks.ConfigItems.HeatMapItem.HighestValueColor = Color.FromArgb(81, 168, 0)
Stocks.ConfigItems.HeatMapItem.MiddleValueColor = Color.Gold

Stocks.ConfigItems.HeatMapItem.StartText = "US"
Stocks.ConfigItems.HeatMapItem.EndText = "Utah"

{% endhighlight %}
{% endtabs %}

![HeatMap Chart in Windows Forms](../Chart-Types_images/windowsforms-heat-map-charts.png)

### Heat map style

The [HeatMapStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_HeatMapStyle) property specifies the layout style of the Heat Map chart, with **Rectangular** as its default value.

The supported values are:

- [Rectangular](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapLayoutStyle.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapLayoutStyle_Rectangular): Arranges the Heat Map cells in a rectangular layout.
- [Vertical](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapLayoutStyle.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapLayoutStyle_Vertical): Arranges the Heat Map cells in a vertical layout.
- [Horizontal](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapLayoutStyle.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapLayoutStyle_Horizontal): Arranges the Heat Map cells in a horizontal layout.

The following code applies the **Vertical** layout style to the Heat Map chart.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.HeatMapStyle =
    ChartHeatMapLayoutStyle.Vertical;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.HeatMapStyle =
    ChartHeatMapLayoutStyle.Vertical
{% endhighlight %}
{% endtabs %}

![HeatMap Style in Windows Forms](../Chart-Types_images/windowsforms-heat-map-style.png)

### Display color swatch

The [DisplayColorSwatch](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_DisplayColorSwatch) property specifies whether the color swatch is displayed in the Heat Map chart, with **true** as its default value.

The following code hides the color swatch.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.DisplayColorSwatch =
    false;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.DisplayColorSwatch =
    False
{% endhighlight %}
{% endtabs %}

![HeatMap Color Swatch in Windows Forms](../Chart-Types_images/windowsforms-heat-map-color-swatch.png)

### Display title

The [DisplayTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_DisplayTitle) property specifies whether the series title is displayed in the color swatch, with **true** as its default value.

The following code hides the series title from the color swatch.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.DisplayTitle =
    false;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.DisplayTitle =
    False
{% endhighlight %}
{% endtabs %}

![HeatMap Display Title in Windows Forms](../Chart-Types_images/windowsforms-heat-map-display-title.png)

### Start text

The [StartText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_StartText) property specifies the text displayed at the start of the color swatch, with an empty string as its default value.

The following code displays **Low** at the start of the color swatch.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.StartText =
    "US";
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.StartText =
    "US"
{% endhighlight %}
{% endtabs %}

![HeatMap Start Text in Windows Forms](../Chart-Types_images/windowsforms-heat-map-charts.png)

### End text

The [EndText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_EndText) property specifies the text displayed at the end of the color swatch, with an empty string as its default value.

The following code displays **High** at the end of the color swatch.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.EndText =
    "Utah";
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.EndText =
    "Utah"
{% endhighlight %}
{% endtabs %}

![HeatMap End Text in Windows Forms](../Chart-Types_images/windowsforms-heat-map-charts.png)

### Lowest value color

The [LowestValueColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_LowestValueColor) property specifies the color used to represent the lowest value in the Heat Map chart, with **Red** as its default value.

The following code sets the lowest-value color to **Green**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.LowestValueColor =
    Color.Green;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.LowestValueColor =
    Color.Green
{% endhighlight %}
{% endtabs %}

![HeatMap Lowest Value Color in Windows Forms](../Chart-Types_images/windowsforms-heat-map-color.png)

### Middle value color

The [MiddleValueColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_MiddleValueColor) property specifies the color used to represent the middle value in the Heat Map chart, with **Yellow** as its default value.

The following code sets the middle-value color to **Orange**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.MiddleValueColor =
    Color.Orange;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.MiddleValueColor =
    Color.Orange
{% endhighlight %}
{% endtabs %}

![HeatMap Middle Value Color in Windows Forms](../Chart-Types_images/windowsforms-heat-map-color.png)

### Highest value color

The [HighestValueColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_HighestValueColor) property specifies the color used to represent the highest value in the Heat Map chart, with **Blue** as its default value.

The following code sets the highest-value color to **Purple**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.HighestValueColor =
    Color.Purple;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.HighestValueColor =
    Color.Purple
{% endhighlight %}
{% endtabs %}

![HeatMap Highest Value Color in Windows Forms](../Chart-Types_images/windowsforms-heat-map-color.png)

### Label margins

The [LabelMargins](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_LabelMargins) property specifies the margin applied to the start and end labels of the color swatch, with **2f** as its default value.

The following code sets the label margin to **15f**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.LabelMargins =
    15f;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.LabelMargins =
    15.0F
{% endhighlight %}
{% endtabs %}

![HeatMap Label Margin in Windows Forms](../Chart-Types_images/windowsforms-heat-map-label-margin.png)

### Allow labels auto fit

The [AllowLabelsAutoFit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_AllowLabelsAutoFit) property specifies whether Heat Map labels are automatically resized to fit within the available space, with **true** as its default value.

The following code disables automatic label resizing.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.AllowLabelsAutoFit =
    false;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.AllowLabelsAutoFit =
    False
{% endhighlight %}
{% endtabs %}


### Enable label rotation

The [EnableLabelRotation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_EnableLabelRotation) property specifies whether Heat Map labels can be rotated to fit within the available space, with **true** as its default value.

The following code disables label rotation.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.EnableLabelRotation =
    false;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.EnableLabelRotation =
    False
{% endhighlight %}
{% endtabs %}

### Enable labels truncation

The [EnableLabelsTruncation](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_EnableLabelsTruncation) property specifies whether labels are truncated when they exceed the available display space, with **false** as its default value.

The following code enables label truncation.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.EnableLabelsTruncation =
    true;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.EnableLabelsTruncation =
    True
{% endhighlight %}
{% endtabs %}

### Maximum characters

The [MaximumCharacters](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_MaximumCharacters) property specifies the maximum number of characters displayed in a Heat Map label, with **-1** as its default value, indicating that no character limit is applied.

The following code limits each Heat Map label to **10** characters.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.MaximumCharacters =
    10;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.MaximumCharacters =
    10
{% endhighlight %}
{% endtabs %}

### Minimum font size

The [MinimumFontSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_MinimumFontSize) property specifies the minimum font size used when Heat Map labels are automatically resized, with **6f** as its default value.

The following code sets the minimum label font size to **8f**.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.MinimumFontSize =
    8f;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.MinimumFontSize =
    8.0F
{% endhighlight %}
{% endtabs %}

### Show large labels

The [ShowLargeLabels](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_ShowLargeLabels) property specifies whether labels that exceed the available display area are displayed, with **false** as its default value.

The following code displays labels that exceed the available display area.

{% tabs %}
{% highlight c# %}
chartControl.Series[0].ConfigItems.HeatMapItem.ShowLargeLabels =
    true;
{% endhighlight %}
{% highlight vb %}
chartControl.Series(0).ConfigItems.HeatMapItem.ShowLargeLabels =
    True
{% endhighlight %}
{% endtabs %}

## Kagi chart

A Kagi Chart shows price trends using connected vertical lines. The line continues when the closing price moves in the same direction and reverses when the price reaches a predefined [ReversalAmount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_ReversalAmount). Breaking a previous high or low changes the line color to indicate a bullish or bearish pattern. The [PriceUpColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceUpColor) and [PriceDownColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceDownColor) properties control these colors, while the column width represents trend strength.

The following feature are supported in the Kagi chart:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Kagi Chart.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Stock", ChartSeriesType.Kagi);

series.Points.Add(1, 25);
series.Points.Add(2, 28);
series.Points.Add(3, 26);
series.Points.Add(4, 30);
series.Points.Add(5, 42); 
series.Points.Add(6, 35);
series.Points.Add(7, 29);
series.Points.Add(8, 36);
series.Points.Add(9, 27);
series.Points.Add(10, 31);

series.Style.Border.Width = 3;
chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim series As New ChartSeries("Stock", ChartSeriesType.Kagi)

series.Points.Add(1, 25)
series.Points.Add(2, 28)
series.Points.Add(3, 26)
series.Points.Add(4, 30)
series.Points.Add(5, 42) 
series.Points.Add(6, 35)
series.Points.Add(7, 29)
series.Points.Add(8, 36)
series.Points.Add(9, 27)
series.Points.Add(10, 31)

' Increase line thickness
series.Style.Border.Width = 3

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![kagi Chart in Windows Forms](../Chart-Types_images/windowsforms-kagi-chart.png)

### Customization option

The following chart series properties are used as customization options for Kagi chart:

- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [PriceDownColor](https://help.syncfusion.com/windowsforms/chart/chart-series#pricedowncolor)
- [PriceUpColor](https://help.syncfusion.com/windowsforms/chart/chart-series#priceupcolor)
- [ReversalAmount](https://help.syncfusion.com/windowsforms/chart/chart-series#reversalamount)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## Point and figure

A Point and Figure Chart tracks price movements while ignoring time. It uses X’s for upward trends and O’s for downward trends to identify support, resistance, and price patterns.

Use the [PriceUpColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceUpColor) property for X’s and the [PriceDownColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceDownColor) property for O’s. The default [ReversalAmount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_ReversalAmount) is 1, and the chart requires high and low Y-values for each period.

The following feature are supported in the Point and Figure chart:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 2.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Point and Figure Chart.

{% tabs %}
{% highlight c# %}

double[] points = {
    35.25, 37.75, 39.0, 38.275, 37.75, 37.75, 37.275, 36.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 35.625, 35.5, 36.625, 36.275, 36.25, 36.875, 37.25,
    36.875, 36.5, 37.125, 36.275, 35.875, 36.625, 27.125, 26.25, 27.0, 27.25,
    37.5, 38.5, 39.5, 38.875, 38.5, 39.0, 38.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
};

double[] pointsOne = {
    25.0, 27.5, 28.75, 28.025, 27.5, 27.5, 27.025, 26.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
    26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
    27.5, 38.5, 39.5, 38.875, 38.5, 39.0, 28.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
};

DateTime current = new DateTime(2026, 1, 1);
int numpointsOne = points.Length;

ChartSeries series = new ChartSeries("Series 1");

for (int j = 0; j < numpointsOne; j++)
{
    series.Points.Add(current.AddDays(j), new double[] { points[j], pointsOne[j] });
}

series.Type = ChartSeriesType.PointAndFigure;
series.Text = series.Name;
series.ReversalAmount = 0.0;

chartControl.Series.Add(series);

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.RangeType = ChartAxisRangeType.Set;

chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(
    current,
    current.AddDays(30),
    10,
    ChartDateTimeIntervalType.Days);

chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";

{% endhighlight %}
{% highlight vb %}

Dim points() As Double = {
    35.25, 37.75, 39.0, 38.275, 37.75, 37.75, 37.275, 36.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 35.625, 35.5, 36.625, 36.275, 36.25, 36.875, 37.25,
    36.875, 36.5, 37.125, 36.275, 35.875, 36.625, 27.125, 26.25, 27.0, 27.25,
    37.5, 38.5, 39.5, 38.875, 38.5, 39.0, 38.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
}

Dim pointsOne() As Double = {
    25.0, 27.5, 28.75, 28.025, 27.5, 27.5, 27.025, 26.25, 35.75, 35.25,
    36.25, 35.25, 34.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
    26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
    27.5, 38.5, 39.5, 38.875, 38.5, 39.0, 28.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
}

Dim current As New DateTime(2026, 1, 1)
Dim numpointsOne As Integer = points.Length

Dim series As New ChartSeries("Series 1")

For j As Integer = 0 To numpointsOne - 1
    series.Points.Add(current.AddDays(j), New Double() {points(j), pointsOne(j)})
Next

series.Type = ChartSeriesType.PointAndFigure
series.Text = series.Name
series.ReversalAmount = 0.0

chartControl.Series.Add(series)

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.RangeType = ChartAxisRangeType.Set

chartControl.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange(
    current,
    current.AddDays(30),
    10,
    ChartDateTimeIntervalType.Days)

chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd"

{% endhighlight %}
{% endtabs %}

![Point And Figure Chart in Windows Forms](../Chart-Types_images/windowsforms-point-and-figure-chart.png)

### Customization option

The following chart series properties are used as customization options for Point and Figure chart:

- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [HeightBox](https://help.syncfusion.com/windowsforms/chart/chart-series#heightbox)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [PriceDownColor](https://help.syncfusion.com/windowsforms/chart/chart-series#pricedowncolor)
- [PriceUpColor](https://help.syncfusion.com/windowsforms/chart/chart-series#priceupcolor)
- [ReversalAmount](https://help.syncfusion.com/windowsforms/chart/chart-series#reversalamount)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## Renko chart

A Renko Chart tracks price movements using equal-sized bricks while filtering out minor price changes. A new brick is added only when the price moves by the specified [ReversalAmount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_ReversalAmount), which defaults to 1.

The brick color changes when the trend reverses, showing the new trend direction. Use the [PriceUpColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceUpColor) property for bullish trends and the [PriceDownColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceDownColor) property for bearish trends. Renko Charts help identify trends, support levels, and resistance levels.

The following feature are supported in the Renko charts:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the `[Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Renko Chart.

{% tabs %}
{% highlight c# %}

double[] points = {   25.250,27.750,29.000,28.275,27.750,27.750,27.275,26.250,25.750,25.250,26.250,25.250,24.500,
                            25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                            27.125,26.250,27.000,27.250,27.500,28.500,29.500,28.875,28.500,29.000,28.500,28.500,29.000,
                            29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                            28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

DateTime date = new DateTime(2004, 1, 1);

ChartSeries series = new ChartSeries("Series");

for (int day = 0; day < points.Length; day++)
{
    series.Points.Add(date.AddDays(day), points[day]);
}

series.Type = ChartSeriesType.Renko;
series.ReversalAmount = 1;
chartControl.Series.Add(series);

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(date, date.AddDays(60), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryYAxis.Format = "$ #";

{% endhighlight %}
{% highlight vb %}

Dim points() As Double = {
    25.25, 27.75, 29.0, 28.275, 27.75, 27.75, 27.275, 26.25, 25.75, 25.25,
    26.25, 25.25, 24.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
    26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
    27.5, 28.5, 29.5, 28.875, 28.5, 29.0, 28.5, 28.5, 29.0, 29.0,
    40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
    29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
    25.875, 25.0, 25.25, 25.125, 25.05
}

Dim date As New DateTime(2004, 1, 1)

Dim series As New ChartSeries("Series")

For day As Integer = 0 To points.Length - 1
    series.Points.Add(date.AddDays(day), points(day))
Next

series.Type = ChartSeriesType.Renko
series.ReversalAmount = 1

chartControl.Series.Add(series)

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd"

chartControl.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange( _
    date, _
    date.AddDays(60), _
    10, _
    ChartDateTimeIntervalType.Days)

chartControl.PrimaryYAxis.Format = "$ #"

{% endhighlight %}
{% endtabs %}

![Renko Chart in Windows Forms](../Chart-Types_images/windowsforms-renko-chart.png)

### Customization option

The following chart series properties are used as customization options for Renko chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [ColorsMode](https://help.syncfusion.com/windowsforms/chart/chart-series#colorsmode)
- [DarkLightPower](https://help.syncfusion.com/windowsforms/chart/chart-series#darklightpower)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [PriceDownColor](https://help.syncfusion.com/windowsforms/chart/chart-series#pricedowncolor)
- [PriceUpColor](https://help.syncfusion.com/windowsforms/chart/chart-series#priceupcolor)
- [ReversalAmount](https://help.syncfusion.com/windowsforms/chart/chart-series#reversalamount)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## Three line break

A Three Line Break Chart tracks price movements using vertical boxes while ignoring time. A rising box is added when the price exceeds the previous high, while a falling box is added when the price reaches a new low.

The box color changes to indicate a trend reversal. Use the [PriceUpColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceUpColor) property for bullish trends and the [PriceDownColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartFinancialConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartFinancialConfigItem_PriceDownColor) property for bearish trends. The [ReversalAmount](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartSeries.html#Syncfusion_Windows_Forms_Chart_ChartSeries_ReversalAmount) property defines the price change required to draw a new box.

The following feature are supported in the Three Line Break chart:

* **Chart 3-D Mode**: A chart can be rendered in 3D by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Pie, Bar.

The following code example demonstrates how to create a Three Line Break Chart.

{% tabs %}
{% highlight c# %}

double[] points = {   25.250,27.750,29.000,28.275,27.750,27.750,27.275,26.250,25.750,25.250,26.250,25.250,24.500,
                  25.625,25.500,26.625,26.275,26.250,26.875,27.250,26.875,26.500,27.125,26.275,25.875,26.625,
                  27.125,26.250,27.000,27.250,27.500,28.500,29.500,28.875,28.500,29.000,28.500,28.500,29.000,
                  29.000,40.000,29.875,29.875,28.875,28.500,28.250,28.875,29.275,29.275,29.750,29.500,29.275,
                  28.500,27.750,27.625,27.500,26.500,25.000,26.625,26.000,25.875,25.000,25.250,25.125,25.050};

DateTime dates = new DateTime(2026, 9, 4).AddDays(-points.Length);

ChartSeries series = new ChartSeries("Series");

for (int day = 0; day < points.Length; day++)
{
    series.Points.Add(dates.AddDays(day), points[day]);
}

series.Type = ChartSeriesType.ThreeLineBreak;
series.ReversalAmount = 3.0;

chartControl.PrimaryYAxis.Format = "$ #";
chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime;
chartControl.PrimaryXAxis.DateTimeRange = new ChartDateTimeRange(dates, dates.AddDays(60), 10, ChartDateTimeIntervalType.Days);
chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd";
chartControl.Series.Add(series);

{% endhighlight %}
{% highlight vb %}

Dim points() As Double = {
25.25, 27.75, 29.0, 28.275, 27.75, 27.75, 27.275, 26.25, 25.75, 25.25,
26.25, 25.25, 24.5, 25.625, 25.5, 26.625, 26.275, 26.25, 26.875, 27.25,
26.875, 26.5, 27.125, 26.275, 25.875, 26.625, 27.125, 26.25, 27.0, 27.25,
27.5, 28.5, 29.5, 28.875, 28.5, 29.0, 28.5, 28.5, 29.0, 29.0,
40.0, 29.875, 29.875, 28.875, 28.5, 28.25, 28.875, 29.275, 29.275, 29.75,
29.5, 29.275, 28.5, 27.75, 27.625, 27.5, 26.5, 25.0, 26.625, 26.0,
25.875, 25.0, 25.25, 25.125, 25.05
}

Dim dates As DateTime = New DateTime(2026, 9, 4).AddDays(-points.Length)

Dim series As New ChartSeries("Series")

For day As Integer = 0 To points.Length - 1
    series.Points.Add(dates.AddDays(day), points(day))
Next

series.Type = ChartSeriesType.ThreeLineBreak
series.ReversalAmount = 3.0

chartControl.PrimaryYAxis.Format = "$ #"

chartControl.PrimaryXAxis.ValueType = ChartValueType.DateTime
chartControl.PrimaryXAxis.DateTimeRange = New ChartDateTimeRange(
dates,
dates.AddDays(60),
10,
ChartDateTimeIntervalType.Days)

chartControl.PrimaryXAxis.DateTimeFormat = "MMM/dd"

chartControl.Series.Add(series)

{% endhighlight %}
{% endtabs %}

![Three Line Break Chart in Windows Forms](../Chart-Types_images/windowsforms-three-line-break-chart.png)

### Customization option

The following chart series properties are used as customization options for Three Line Break chart:

- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [PriceDownColor](https://help.syncfusion.com/windowsforms/chart/chart-series#pricedowncolor)
- [PriceUpColor](https://help.syncfusion.com/windowsforms/chart/chart-series#priceupcolor)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)

## Tornado chart

A Tornado chart is a bar chart that illustrates how changes in different input variables affect an outcome. It is commonly used in sensitivity analysis to compare the impact of multiple factors and identify which variables have the greatest influence on the final result.

The following feature is supported in the Tornado chart:

* **Chart Axis Labels**: The axis labels of a chart can be set by handling the `ChartFormatAxisLabel` event.

N>
Chart details for tornado chart.
* Number of Y values per point - 2.
* Number of Series - One or more.
* Cannot be combined with - Pie, Bar, Polar, Radar.

The following code example demonstrates how to create a Tornado Chart.

{% tabs %}
{% highlight c# %}

ChartSeries positiveImpact = new ChartSeries("Positive Impact", ChartSeriesType.Tornado);
positiveImpact.Points.Add(1, 0, 48);
positiveImpact.Points.Add(2, 0, 42);
positiveImpact.Points.Add(3, 0, 27);
positiveImpact.Points.Add(4, 0, 20);
positiveImpact.Points.Add(5, 0, 9);

ChartSeries negativeImpact = new ChartSeries("Negative Impact", ChartSeriesType.Tornado);

negativeImpact.Points.Add(1, 0, -45);
negativeImpact.Points.Add(2, 0, -39);
negativeImpact.Points.Add(3, 0, -31);
negativeImpact.Points.Add(4, 0, -20);
negativeImpact.Points.Add(5, 0, -11);

chartControl.Series.Add(positiveImpact);
chartControl.Series.Add(negativeImpact);

{% endhighlight %}
{% highlight vb %}

' Positive Impact Series
Dim positiveImpact As New ChartSeries("Positive Impact", ChartSeriesType.Tornado)

positiveImpact.Points.Add(1, 0, 48)
positiveImpact.Points.Add(2, 0, 42)
positiveImpact.Points.Add(3, 0, 27)
positiveImpact.Points.Add(4, 0, 20)
positiveImpact.Points.Add(5, 0, 9)

' Negative Impact Series
Dim negativeImpact As New ChartSeries("Negative Impact", ChartSeriesType.Tornado)

negativeImpact.Points.Add(1, 0, -45)
negativeImpact.Points.Add(2, 0, -39)
negativeImpact.Points.Add(3, 0, -31)
negativeImpact.Points.Add(4, 0, -20)
negativeImpact.Points.Add(5, 0, -11)

' Add Series to Chart
chartControl.Series.Add(positiveImpact)
chartControl.Series.Add(negativeImpact)

{% endhighlight %}
{% endtabs %}

![Tornado Chart in Windows Forms](../Chart-Types_images/windowsforms-tornado-chart.png)

### Customization option

The following chart series properties are used as customization options for Tornado chart types:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
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