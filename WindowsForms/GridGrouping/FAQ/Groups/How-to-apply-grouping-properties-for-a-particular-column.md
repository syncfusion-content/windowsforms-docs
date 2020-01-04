---
layout: post
title: How-to-apply-grouping-properties-for-a-particular- | Windows Forms | Syncfusion
description: how to apply grouping properties for a particular column
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Apply Grouping Properties for a Particular Column

Grouping properties for a particular column can be applied using the code snippet below.

{% tabs %}
{% highlight c# %}

//Sets the color of any group cell in column 'Col1'.
this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.AnyGroupCell.BackColor=Color.LightBlue;

//Sets the FilterBar cell appearance to be raised.
this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.FilterBarCell.CellAppearance=GridCellAppearance.Raised;

//Setts the cell type of any record cell.
this.gridGroupingControl1.TableDescriptor.Columns["Col1"].GroupByAppearance.AnyRecordFieldCell.CellType="ComboBox";

{% endhighlight  %}

{% highlight vb %}

'Shows how to apply grouping properties for particular column.

'Sets the color of any record cell in column 'Col1'.
Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.AnyRecordFieldCell.BackColor=Color.LightBlue

'Sets the FilterBar cell appearance to be raised.
Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.FilterBarCell.CellAppearance=GridCellAppearance.Raised

'Sets the cell type of any record cell.
Me.gridGroupingControl1.TableDescriptor.Columns("Col1").GroupByAppearance.AnyRecordFieldCell.CellType="ComboBox"

{% endhighlight  %}
{% endtabs %}
