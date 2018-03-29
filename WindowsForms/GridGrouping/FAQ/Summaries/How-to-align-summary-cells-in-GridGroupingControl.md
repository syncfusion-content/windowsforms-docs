---
layout: post
title: How-to-align-summary-cells-in-GridGroupingControl | Windows Forms | Syncfusion
description: how to align summary cells in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Align Summary Cells in GridGroupingControl

You can align summary cells of GridGroupingControl by making use of Horizontal Alignment property, as shown below.

{% tabs %}
{% highlight c# %}

GridSummaryColumnDescriptor sumCol1 = new GridSummaryColumnDescriptor("sumCol1", SummaryType.DoubleAggregate, "Col1", "{Sum}");
sumCol1.Appearance.AnyCell.HorizontalAlignment = GridHorizontalAlignment.Right;

{% endhighlight  %}

{% highlight vb %}

Dim sumCol1 As New GridSummaryColumnDescriptor("sumCol1", SummaryType.DoubleAggregate, "Col1", "{Sum}")
sumCol1.Appearance.AnyCell.HorizontalAlignment = GridHorizontalAlignment.Right 

{% endhighlight  %}
{% endtabs %}
