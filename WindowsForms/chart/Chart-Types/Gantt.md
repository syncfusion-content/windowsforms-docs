---
layout: post
title: Gantt Chart in Windows Forms Chart control | Syncfusion
description: Learn here all about the Gantt chart in Syncfusion Essential Studio® Windows Forms Chart control and more details.
platform: windowsforms
control: Chart
documentation: ug
---

# Gantt chart in windows forms chart

A project management chart that displays tasks as horizontal bars along a timeline, showing their start dates, durations, end dates, and progress. It helps track schedules, dependencies, and overall project status at a glance.

The following features are supported in the Gantt chart:

* **Drag and Drop**: Dragging and dropping within a chart can be enabled by handling the appropriate `Chart Region Mouse` events.
* **Chart Custom Points**: Chart custom points are used to set custom points for a series so they can show employee task completion in terms of days.
* **Chart Strip Lines**: Strip lines are used to highlight the weekends on a calendar.

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

## Customization option

The following chart series properties are used as customization options for Gantt chart:

- [Border](https://help.syncfusion.com/windowsforms/chart/chart-series#border)
- [ColumnDrawMode](https://help.syncfusion.com/windowsforms/chart/chart-series#columndrawmode)
- [DisplayText](https://help.syncfusion.com/windowsforms/chart/chart-series#displaytext)
- [DrawSeriesNameInDepth](https://help.syncfusion.com/windowsforms/chart/chart-series#drawseriesnameindepth)
- [ElementBorders](https://help.syncfusion.com/windowsforms/chart/chart-series#elementborders)
- [HighlightInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#highlightinterior)
- [ImageIndex](https://help.syncfusion.com/windowsforms/chart/chart-series#imageindex)
- [Images](https://help.syncfusion.com/windowsforms/chart/chart-series#images)
- [LightAngle](https://help.syncfusion.com/windowsforms/chart/chart-series#lightangle)
- [LightColor](https://help.syncfusion.com/windowsforms/chart/chart-series#lightcolor)
- [Rotate](https://help.syncfusion.com/windowsforms/chart/chart-series#rotate)
- [Spacing](https://help.syncfusion.com/windowsforms/chart/chart-series#spacing)
- [Spacing Between Series](https://help.syncfusion.com/windowsforms/chart/chart-series#spacingbetweenseries)
- [ShadingMode](https://help.syncfusion.com/windowsforms/chart/chart-series#shadingmode)
- [ShadowInterior](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowinterior)
- [ShadowOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#shadowoffset)
- [ZOrder](https://help.syncfusion.com/windowsforms/chart/chart-series#zorder)
- [FancyToolTip](https://help.syncfusion.com/windowsforms/chart/chart-series#fancytooltip)
- [Font](https://help.syncfusion.com/windowsforms/chart/chart-series#font)
- [Interior](https://help.syncfusion.com/windowsforms/chart/chart-series#interior)
- [LegendItem](https://help.syncfusion.com/windowsforms/chart/chart-series#legenditem)
- [Name](https://help.syncfusion.com/windowsforms/chart/chart-series#name)
- [PointsToolTipFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#pointstooltipformat)
- [SmartLabels](https://help.syncfusion.com/windowsforms/chart/chart-series#smartlabels)
- [Summary](https://help.syncfusion.com/windowsforms/chart/chart-series#summary)
- [Text](https://help.syncfusion.com/windowsforms/chart/chart-series#text-series)
- [TextColor](https://help.syncfusion.com/windowsforms/chart/chart-series#textcolor)
- [TextFormat](https://help.syncfusion.com/windowsforms/chart/chart-series#textformat)
- [TextOffset](https://help.syncfusion.com/windowsforms/chart/chart-series#textoffset)
- [TextOrientation](https://help.syncfusion.com/windowsforms/chart/chart-series#textorientation)
- [Visible](https://help.syncfusion.com/windowsforms/chart/chart-series#visible)