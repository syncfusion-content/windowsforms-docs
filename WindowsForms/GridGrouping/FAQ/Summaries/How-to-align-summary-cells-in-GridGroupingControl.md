---
layout: post
title: Align Summary Cells in WinForms GridGroupingControl | Syncfusion®
description: Align summary cells in Syncfusion® WinForms GridGroupingControl, its summary column appearance, horizontal alignment settings, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Align Summary Cells in WinForms GridGroupingControl

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
