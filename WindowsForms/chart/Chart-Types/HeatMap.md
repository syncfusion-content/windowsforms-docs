---
layout: post
title: HeatMap Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Heatmap chart in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# HeatMap chart in windows forms chart

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

## Support features

The following table lists the properties of heat map chart with descriptions.

<table>
<tr>
<th>
Property</th><th>
Description</th></tr>
<tr>
<td>

{{'[HeatMapStyle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_HeatMapStyle)'| markdownify }}
</td><td>
Specifies styles of heat maps. The types are Rectangular, Vertical and Horizontal styles.</td></tr>
<tr>
<td>
{{'[DisplayColorSwatch](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_DisplayColorSwatch)'| markdownify }}
</td><td>
Enables the color swatch of the heat map.</td></tr>
<tr>
<td>
{{'[DisplayTitle](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_DisplayTitle)'| markdownify }}
</td><td>
Enables or disables the series title in the left corner of the swatch.</td></tr>
<tr>
<td>
{{'[StartText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_StartText)'| markdownify }}
</td><td>
Sets the text for the left label in the color swatch.</td></tr>
<tr>
<td>
{{'[EndText](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_EndText)'| markdownify }}
</td><td>
Sets the text for the right label in the color swatch.</td></tr>
<tr>
<td>
{{'[LowestValueColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_LowestValueColor)'| markdownify }}
</td><td>
Sets the lowest value color of the heat map chart.</td></tr>
<tr>
<td>
{{'[HighestValueColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_HighestValueColor)'| markdownify }}
</td><td>
Sets the highest value color of the heat map chart.</td></tr>
<tr>
<td>
{{'[MiddleValueColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_MiddleValueColor)'| markdownify }}
</td><td>
Sets the middle value color of the heat map chart.</td></tr>
<tr>
<td>
{{'[LabelMargins](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Chart.ChartHeatMapConfigItem.html#Syncfusion_Windows_Forms_Chart_ChartHeatMapConfigItem_LabelMargins)'| markdownify }}
</td><td>
Sets the margin for the left and right side labels.</td></tr>
</table>

{% tabs %}

{% highlight c# %}

//Sets the Heat map style.

this.chartControl.Series[0].ConfigItems.HeatMapItem.HeatMapStyle = ChartHeatMapLayoutStyle.Rectangular;

//Display color swatch.

this.chartControl.Series[0].ConfigItems.HeatMapItem.DisplayColorSwatch = true;

//Sets the Series Title.

this.chartControl.Series[0].ConfigItems.HeatMapItem.DisplayTitle = true;

//Sets the left and right label text.

this.chartControl.Series[0].ConfigItems.HeatMapItem.StartText = "US";

this.chartControl.Series[0].ConfigItems.HeatMapItem.EndText = "Utah";

//Sets the lowest, highest and middle value color.

this.chartControl.Series[0].ConfigItems.HeatMapItem.LowestValueColor = Color.Red;

this.chartControl.Series[0].ConfigItems.HeatMapItem.HighestValueColor = Color.Blue;

this.chartControl.Series[0].ConfigItems.HeatMapItem.MiddleValueColor = Color.Yellow;

//Sets the value for label margin.

this.chartControl.Series[0].ConfigItems.HeatMapItem.LabelMargins = 15;

{% endhighlight %}

{% highlight vb %}

'Sets the Heat map style.

Me.chartControl.Series(0).ConfigItems.HeatMapItem.HeatMapStyle =ChartHeatMapLayoutStyle.Rectangular

'Display color swatch.

Me.chartControl.Series(0).ConfigItems.HeatMapItem.DisplayColorSwatch = True

'Sets the display title.

Me.chartControl.Series(0).ConfigItems.HeatMapItem.DisplayTitle = True

'Sets the start and end text.

series.ConfigItems.HeatMapItem.StartText = "US"

series.ConfigItems.HeatMapItem.EndText = "Utah"

'Sets the lowest, highest and middle value color.

series.ConfigItems.HeatMapItem.LowestValueColor = Color.FromArgb(255, 23, 0)

series.ConfigItems.HeatMapItem.HighestValueColor = Color.FromArgb(81, 168, 0)

series.ConfigItems.HeatMapItem.MiddleValueColor = Color.Gold

'Sets the margin for the left and right labels.

series.ConfigItems.HeatMapItem.LabelMargins = 15

{% endhighlight %}
{% endtabs %}