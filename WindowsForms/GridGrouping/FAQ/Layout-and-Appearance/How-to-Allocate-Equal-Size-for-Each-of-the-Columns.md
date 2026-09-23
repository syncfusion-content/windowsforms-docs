---
layout: post
title: Equal Column Size in WinForms GridGroupingControl | Syncfusion®
description: Allocate equal column sizes in Syncfusion® WinForms GridGroupingControl, its parent and child tables, column width calculation, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Allocate Equal Column Size in WinForms GridGroupingControl

The parent and child table columns’ width can be set equally in proportion to the grid control's client width by dynamically setting the columns width in TableModel.QueryColWidth event handler. When it deals with a nested table, QueryColWidth event of the entire nested table must be handled to set the respective nested table columns width. In QueryColWidth event handler, the available width for the columns can be calculated as follows,

availableArea = groupingGrid.ClientSize.Width - gridModel.ColWidths.GetTotal(0, girdModel.Cols.HeaderCount) - indentColsTotalWidth;

and the proportional columns width can be calculated as follows,

{% tabs %}
{% highlight c# %}

Size = (int) availableArea / (grid.TableDescriptor.VisibleColumns.Count);

{% endhighlight %}
{% endtabs %}