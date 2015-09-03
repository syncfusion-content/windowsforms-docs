---
layout: post
title: How-to-align-summary-cells-in-GridGroupingControl
description: how to align summary cells in gridgroupingcontrol
platform: windowsforms
control: How To
documentation: ug
---

# How to align summary cells in GridGroupingControl

You can align summary cells of GridGroupingControl by making use of Horizontal Alignment property, as shown below.

{% highlight c# %}



GridSummaryColumnDescriptor sumCol1 = new GridSummaryColumnDescriptor("sumCol1", SummaryType.DoubleAggregate, "Col1", "{Sum}");

sumCol1.Appearance.AnyCell.HorizontalAlignment = GridHorizontalAlignment.Right;

{% endhighlight  %}

{% highlight vbnet %}



Dim sumCol1 As New GridSummaryColumnDescriptor("sumCol1", SummaryType.DoubleAggregate, "Col1", "{Sum}")

sumCol1.Appearance.AnyCell.HorizontalAlignment = GridHorizontalAlignment.Right 

{% endhighlight  %}

