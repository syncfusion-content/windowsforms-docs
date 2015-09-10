---
layout: post
title: How-to-format-summary-rows | WindowsForms | Syncfusion
description: how to format summary rows
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to format summary rows

The following code shows how to format summary rows.

{% highlight c# %}



//sd is GridSummaryColumnDescriptor. 

//Changes the backcolor of the SummaryFieldCell.

sd.Appearance.SummaryFieldCell.BackColor = Color.LightBlue;

//Changes the type of SummaryFieldCell.

sd.Appearance.SummaryFieldCell.CellType = "ComboBox";

{% endhighlight  %}

{% highlight vbnet %}



'sd is GridSummaryColumnDescriptor. 

'Changes the backcolor of the SummaryFieldCell.

sd.Appearance.SummaryFieldCell.BackColor = Color.LightBlue

'Changes the type of SummaryFieldCell.

sd.Appearance.SummaryFieldCell.CellType = "ComboBox"

{% endhighlight  %}

