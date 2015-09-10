---
layout: post
title: How-to-Add-a-Sort-Icon-Up-and-Down-Arrow-in-a-Grid | WindowsForms | Syncfusion
description: how to add a sort icon (up and down arrow) in a gridcontrol's column header
platform: WindowsForms
control: Grid
documentation: ug
---

# How to Add a Sort Icon (Up and Down Arrow) in a GridControl's Column Header

## Introduction

Add GridSortColumnHeaderCellModel to the GridControl's CellModels collection to include SortColumn HeaderCell. Then assign this as CellType and set tag property to either ListSortDirection.Ascending or ListSortDirection.Descending to show the up and down arrow mark.

## Example

{% highlight c# %}



//Registers GridSortColumnHeaderCellModel to the GridModel. 

this.gridControl1.CellModels.Add("SortHeader", new GridSortColumnHeaderCellModel(this.gridControl1.Model));



//Sets new celltype to a column header cell.

this.gridControl1[0,1].CellType = "SortHeader";



//Specifies the sort direction in the Tag property of the column header.

this.gridControl1[0,1].Tag = ListSortDirection.Ascending;

{% endhighlight  %}

{% highlight vbnet %}



'Registers GridSortColumnHeaderCellModel to the GridModel. 

Me.GridControl1.CellModels.Add("SortHeader", New GridSortColumnHeaderCellModel(Me.GridControl1.Model))



'Sets new celltype to a column header cell.

Me.GridControl1(0, 1).CellType = "SortHeader"



'Specifies the sort direction in the Tag property of the column header.

Me.GridControl1(0, 1).Tag = ListSortDirection.Ascending
{% endhighlight  %}

N> This will only display the sort indicator; it does not actually do any sorting.

