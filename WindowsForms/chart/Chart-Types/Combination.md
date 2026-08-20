---
layout: post
title: Combination Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Combination chart and its type in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Combination Charts in Windows Forms Chart

## Combination Chart

Combination Chart displays multiple data series in a single chart using different chart types. It is commonly used to compare related data sets by combining chart types such as Line and Column while sharing the same X-axis.

N>
Chart Details
* Number of Series - One or More.
* Cannot be combined with - Pie, Bar, Polar, Radar.

{% tabs %}
{% highlight c# %}

ChartTitle title = new ChartTitle() { Text = "Beijing 2008 Olympics" };
chartControl.Titles.Add(title);
chartControl.PrimaryXAxis.Title = "Country";
chartControl.PrimaryYAxis.Title = "Number of Medals Won";

for (int i = 0; i < 3; i++)
{
    ChartSeries Combination = new ChartSeries("Gold");
    if (i == 0)
    {
        Combination.Text = "Bronze";
        Combination.Points.Add(1, 36);
        Combination.Points.Add(2, 28);
        Combination.Points.Add(3, 28);
        Combination.Points.Add(4, 15);
        Combination.Points.Add(5, 15);
        Combination.Points.Add(6, 17);
        Combination.Type = ChartSeriesType.Spline;
    }
    else if (i == 1)
    {
        Combination.Text = "Silver";
        Combination.Points.Add(1, 38);
        Combination.Points.Add(2, 21);
        Combination.Points.Add(3, 21);
        Combination.Points.Add(4, 13);
        Combination.Points.Add(5, 10);
        Combination.Points.Add(6, 15);
        Combination.Type = ChartSeriesType.Line;
    }
    else
    {
        Combination.Points.Add(1, 36);
        Combination.Points.Add(2, 51);
        Combination.Points.Add(3, 23);
        Combination.Points.Add(4, 19);
        Combination.Points.Add(5, 16);
        Combination.Points.Add(6, 14);
        Combination.Type = ChartSeriesType.Column;

    }
  chartControl.Series.Add(Combination);
}

chartControl.Series[1].Style.Symbol.Shape = ChartSymbolShape.Diamond;
chartControl.Series[0].Style.Symbol.Shape = ChartSymbolShape.Diamond;

chartControl.Legend.Visible = true;
chartControl.Legend.Position = ChartDock.Top;
chartControl.LegendAlignment = ChartAlignment.Center;
chartControl.LegendsPlacement = ChartPlacement.Outside;

{% endhighlight %}
{% highlight vb %}

chartControl.Titles.Add(New ChartTitle() With {.Text = "Beijing 2008 Olympics"})

chartControl.PrimaryXAxis.Title = "Country"
chartControl.PrimaryYAxis.Title = "Number of Medals Won"

For i As Integer = 0 To 2

    Dim Combination As New ChartSeries("Gold")

    If i = 0 Then

        Combination.Text = "Bronze"
        Combination.Points.Add(1, 36)
        Combination.Points.Add(2, 28)
        Combination.Points.Add(3, 28)
        Combination.Points.Add(4, 15)
        Combination.Points.Add(5, 15)
        Combination.Points.Add(6, 17)
        Combination.Type = ChartSeriesType.Spline

    ElseIf i = 1 Then

        Combination.Text = "Silver"
        Combination.Points.Add(1, 38)
        Combination.Points.Add(2, 21)
        Combination.Points.Add(3, 21)
        Combination.Points.Add(4, 13)
        Combination.Points.Add(5, 10)
        Combination.Points.Add(6, 15)
        Combination.Type = ChartSeriesType.Line

    Else

        Combination.Text = "Gold"
        Combination.Points.Add(1, 36)
        Combination.Points.Add(2, 51)
        Combination.Points.Add(3, 23)
        Combination.Points.Add(4, 19)
        Combination.Points.Add(5, 16)
        Combination.Points.Add(6, 14)
        Combination.Type = ChartSeriesType.Column

    End If

    chartControl.Series.Add(Combination)

Next

chartControl.Series(1).Style.Symbol.Shape = ChartSymbolShape.Diamond
chartControl.Series(0).Style.Symbol.Shape = ChartSymbolShape.Diamond

chartControl.Legend.Visible = True
chartControl.Legend.Position = ChartDock.Top
chartControl.LegendAlignment = ChartAlignment.Center
chartControl.LegendsPlacement = ChartPlacement.Outside

{% endhighlight %}
{% endtabs %}

## Customization option
The following chart series properties are used as customization options for combination chart types.

## Customization option

The following chart series properties are used as customization options for chart types.

[Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border), [DisplayShadow](https://help.syncfusion.com/windowsforms/chart/chart-series#displayshadow), [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext), [DrawColumnSeparatingLines](https://help.syncfusion.com/windowsforms/chart/chart-series#drawcolumnseparatinglines), [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders), [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex), [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images), [LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle), [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor), [PhongAlpha](https://help.syncfusion.com/windowsforms/chart/chart-series#phongalpha), [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries), [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior), [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset), [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip), [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font), [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior), [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem),[Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name), [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat), [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels),[Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary), [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series), [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor), [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat), [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset), [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation), [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible).