---
layout: post
title: Add Sort Icons in Windows Forms GridControl | Syncfusion®
description: Add sort icons to column headers in Syncfusion® Windows Forms GridControl using GridSortColumnHeaderCellModel and sort direction settings.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Add Sort Icons in Windows Forms GridControl

Add GridSortColumnHeaderCellModel to the GridControl's CellModels collection to include SortColumn HeaderCell. Then assign this as CellType and set tag property to either ListSortDirection.Ascending or ListSortDirection.Descending to show the up and down arrow mark.

{% tabs %}
{% highlight c# %}

//Registers GridSortColumnHeaderCellModel to the GridModel. 
this.gridControl1.CellModels.Add("SortHeader", new GridSortColumnHeaderCellModel(this.gridControl1.Model));

//Sets new cell type to a column header cell.
this.gridControl1[0,1].CellType = "SortHeader";

//Specifies the sort direction in the Tag property of the column header.
this.gridControl1[0,1].Tag = ListSortDirection.Ascending;

{% endhighlight  %}

{% highlight vb %}

'Registers GridSortColumnHeaderCellModel to the GridModel. 
Me.GridControl1.CellModels.Add("SortHeader", New GridSortColumnHeaderCellModel(Me.GridControl1.Model))

'Sets new cell type to a column header cell.
Me.GridControl1(0, 1).CellType = "SortHeader"

'Specifies the sort direction in the Tag property of the column header.
Me.GridControl1(0, 1).Tag = ListSortDirection.Ascending
{% endhighlight  %}
{% endtabs %}

N> This will only display the sort indicator; it does not actually do any sorting.

