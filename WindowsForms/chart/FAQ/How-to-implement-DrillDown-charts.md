---
layout: post
title: How to implement drilldown in Windows Forms Chart | Syncfusion®
description: Learn how to implement drilldown charts in a Windows Forms Chart and navigate between chart levels to view detailed data.
platform: windowsforms
control: chart
documentation: ug
---

# How to implement drilldown in Windows Forms Chart

DrillDown charts can essentially be implemented by listening to the click events in the chart and either replacing the current visible chart with another chart that has drill-down information or reinitializing the chart with new drill-down information.

The ChartRegionClick event will let you listen to the user clicking on the data points in a chart.

The sample at "My Documents\Syncfusion\EssentialStudio\Version Number\Windows\Chart.Windows\Samples\2.0\User Interaction\Chart Drill Down" illustrates the second approach.

