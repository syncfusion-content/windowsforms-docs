---
layout: post
title: Format Summary Rows in WinForms GridGroupingControl | Syncfusion®
description: Format summary rows in Syncfusion® WinForms GridGroupingControl, its summary field appearance, cell styling, customization options, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Format Summary Rows in WinForms GridGroupingControl

The following code shows how to format summary rows.

{% tabs %}
{% highlight c# %}

//summaryColumnDescriptor is GridSummaryColumnDescriptor. 

//Changes the backcolor of the SummaryFieldCell.
summaryColumnDescriptor.Appearance.SummaryFieldCell.BackColor = Color.LightBlue;

//Changes the type of SummaryFieldCell.
summaryColumnDescriptor.Appearance.SummaryFieldCell.CellType = "ComboBox";

{% endhighlight  %}

{% highlight vb %}

'summaryColumnDescriptor is GridSummaryColumnDescriptor. 

'Changes the backcolor of the SummaryFieldCell.
summaryColumnDescriptor.Appearance.SummaryFieldCell.BackColor = Color.LightBlue

'Changes the type of SummaryFieldCell.
summaryColumnDescriptor.Appearance.SummaryFieldCell.CellType = "ComboBox"

{% endhighlight  %}
{% endtabs %}