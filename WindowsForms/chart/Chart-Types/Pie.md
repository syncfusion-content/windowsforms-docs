---
layout: post
title: Pie Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the pie chart in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Pie Charts in Windows Forms Chart

## Pie Chart

A Pie Chart is used to display how different categories contribute to a whole. Each category is shown as a slice of a circle, and the size of each slice is proportional to its value. Pie charts are useful for comparing percentages or proportions of categories within a dataset. 

The X-values represent categories, while the Y-values determine the size of the slices. A Pie Chart can display only one data series at a time.

You can also customize the following features for pie chart:

* **Chart 3-D Mode**: A pie or doughnut chart can be rendered in 3-D mode by enabling the [Series3D](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartControl.html#Syncfusion_Windows_Forms_Chart_ChartControl_Series3D) property.
* **Optimize Pie Point Positions**: Small pie slices can be arranged more effectively for better readability using the [OptimizePiePointPositions](https://help.syncfusion.com/windowsforms/chart/chart-series#optimizepiepointpositions) property.
* **Show Ticks**: Connector lines between slices and labels can be displayed using the [ShowTicks](https://help.syncfusion.com/windowsforms/chart/chart-series#showticks) property.
* **Explode Slices**: Pie and doughnut slices can be separated from the chart to emphasize specific data points using the [ExplodedAll](https://help.syncfusion.com/windowsforms/chart/chart-series#explodedall), [ExplodedIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#explodedindex), and [ExplosionOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#explosionoffset) properties.
* **Chart Rotation**: The starting angle of a pie or doughnut chart can be adjusted using the [AngleOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#angleoffset) property.

N>
Chart Details
* Number of Y values per point - 1.
* Number of Series - One.
* Cannot be combined with - Any other chart types.

Pie series can be added to the chart using the following code.

{% tabs %}
{% highlight c# %}

ChartSeries series = new ChartSeries("Market", ChartSeriesType.Pie);
series.Points.Add(0, 20);
series.Points.Add(1, 28);
series.Points.Add(2, 23);
series.Points.Add(3, 10);
series.Points.Add(4, 12);
series.Points.Add(5, 3);
series.Points.Add(6, 2);

series.Styles[0].Text = string.Format("Production {0}%", series.Points[0].YValues[0]);
series.Styles[1].Text = string.Format("Labor {0}%", series.Points[1].YValues[0]);
series.Styles[2].Text = string.Format("Facilities {0}%", series.Points[2].YValues[0]);
series.Styles[3].Text = string.Format("Taxes {0}%", series.Points[3].YValues[0]);
series.Styles[4].Text = string.Format("Insurance {0}%", series.Points[4].YValues[0]);
series.Styles[5].Text = string.Format("Licenses {0}%", series.Points[5].YValues[0]);
series.Styles[6].Text = string.Format("Legal {0}%", series.Points[6].YValues[0]);
series.Style.DisplayText = true;

series.ConfigItems.PieItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn;
series.ConfigItems.PieItem.AngleOffset = 60;

series.ExplodedIndex = 3;
series.ConfigItems.PieItem.PieRadius = 100;
series.Style.Font.Size = 8.0f;

chartControl.Series.Add(series);
chartControl.Legend.Visible = false;

{% endhighlight %}
{% highlight vb %}

' Pie Series
Dim series As New ChartSeries("Market", ChartSeriesType.Pie)

series.Points.Add(0, 20)
series.Points.Add(1, 28)
series.Points.Add(2, 23)
series.Points.Add(3, 10)
series.Points.Add(4, 12)
series.Points.Add(5, 3)
series.Points.Add(6, 2)

' Data Labels
series.Styles(0).Text = String.Format("Production {0}%", series.Points(0).YValues(0))
series.Styles(1).Text = String.Format("Labor {0}%", series.Points(1).YValues(0))
series.Styles(2).Text = String.Format("Facilities {0}%", series.Points(2).YValues(0))
series.Styles(3).Text = String.Format("Taxes {0}%", series.Points(3).YValues(0))
series.Styles(4).Text = String.Format("Insurance {0}%", series.Points(4).YValues(0))
series.Styles(5).Text = String.Format("Licenses {0}%", series.Points(5).YValues(0))
series.Styles(6).Text = String.Format("Legal {0}%", series.Points(6).YValues(0))

series.Style.DisplayText = True

' Pie Settings
series.ConfigItems.PieItem.LabelStyle = ChartAccumulationLabelStyle.OutsideInColumn
series.ConfigItems.PieItem.AngleOffset = 60

series.ExplodedIndex = 3
series.ConfigItems.PieItem.PieRadius = 100

series.Style.Font.Size = 8.0F

chartControl.Series.Add(series)

' Hide Legend
chartControl.Legend.Visible = False

{% endhighlight %}
{% endtabs %}

![Pie Chart in WindowsForms](../Chart-Types_images/windowsforms-pie-chart.png)

## Doughnut Chart

A Doughnut Chart is a variation of a Pie Chart that displays data as slices in a ring-shaped circle with a hollow center. It is used to show the proportion or percentage contribution of categories to the whole dataset.

### DoughnutCoefficient

The [DoughnutCoefficient](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPieConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPieConfigItem_DoughnutCoeficient) property is used to render a Pie Chart as a Doughnut Chart. It specifies the size of the hollow center as a fraction of the chart's radius. By default, the value is 0.0, which renders the chart as a full Pie Chart. Valid values range from 0.0 to 0.9.

{% tabs %}
{% highlight c# %}

series.ConfigItems.PieItem.DoughnutCoeficient = 0.5f;

{% endhighlight %}
{% highlight vb %}

series.ConfigItems.PieItem.DoughnutCoeficient = 0.5F

{% endhighlight %}
{% endtabs %}

![Doughnut Coefficient in WindowsForms](../Chart-Types_images/windowsforms-chart-doughnut-coefficient.png)

## HeightCoefficient

When the chart is displayed in 3D mode, the [HeightCoefficient](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPieConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPieConfigItem_HeightCoeficient) property controls the relative height of the Doughnut Chart. For this property to take effect, [HeightByAreaDepth](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPieConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartPieConfigItem_HeightByAreaDepth) must be set to false. Valid values range from 0.1f to 0.5f, and the default value is 0.2f.

{% tabs %}
{% highlight c# %}

series.ConfigItems.PieItem.HeightByAreaDepth = false;

series.ConfigItems.PieItem.HeightCoeficient = 0.1f;

{% endhighlight %}
{% highlight vb %}

series.ConfigItems.PieItem.HeightByAreaDepth = False

series.ConfigItems.PieItem.HeightCoeficient = 0.1F

{% endhighlight %}
{% endtabs %}

![Height Coefficient in WindowsForms](../Chart-Types_images/windowsforms-chart-height-coefficient.png)

## PieType

The [PieType](https://help.syncfusion.com/windowsforms/chart/chart-series#pietype) property specifies the painting style used to render a Pie Chart.

The following values are supported by the [ChartPieType](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartPieType.html) enumeration:

* **None**: No painting style is applied.
* **Outside**: Applies the painting style to the outer surface of the pie chart.
* **Inside**: Applies the painting style to the inner surface of the pie chart.
* **Round**: Applies a rounded painting style to the pie chart.
* **Bevel**: Applies the painting style to a sloping edge or surface of the pie chart.
* **Custom**: Applies a custom painting style to the pie chart.

## Customization option

The following chart series properties are used as customization options for all pie chart types.

[AngleOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#angleoffset), [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow), [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DoughnutCoefficient](https://help.syncfusion.com/windowsforms/chart/chart-series#doughnutcoefficient), [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth), [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders), [ExplodedAll](https://help.syncfusion.com/windowsforms/chart/chart-series#explodedall), [ExplodedIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#explodedindex), [ExplosionOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#explosionoffset), [FillMode](https://help.syncfusion.com/windowsforms/chart/chart-series#fillmode), [Gradient](https://help.syncfusion.com/windowsforms/chart/chart-series#gradient), [HeightByAreaDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#heightbyareadepth), [HeightCoefficient](https://help.syncfusion.com/windowsforms/chart/chart-series#heightcoefficient), [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior), [InSideRadius](https://help.syncfusion.com/windowsforms/chart/chart-series#insideradius), [OptimizePiePointPositions](https://help.syncfusion.com/windowsforms/chart/chart-series#optimizepiepointpositions), [PieType](https://help.syncfusion.com/windowsforms/chart/chart-series#pietype), [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior), [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset), [ShowTicks](https://help.syncfusion.com/windowsforms/chart/chart-series#showticks), [VisibleAllPies](https://help.syncfusion.com/windowsforms/chart/chart-series#visibleallpies), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem), [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels), [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible), [ShowDataBindLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#showdatabindlabels).