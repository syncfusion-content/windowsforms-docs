---
layout: post
title: How to Size Column Widths or Row Heights to Fit the Text | Syncfusion
description: Learn here all about how to size column widths or row heights to fit the text in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to Size Column Widths or Row Heights to Fit the Text

### Introduction

To size columns so that all the text is visible, use grid.Model.ColWidths.ResizeToFit method. This method will take two arguments, GridRangeInfo object that will specify the cells that are to be resized and GridResizeToFitOptions setting that will specify certain behaviors. The second setting controls whether you allow the cell to shrink when it is resized and whether you want to include any header cells in the resizing. There is also grid.Model.RowHeights.ResizeToFit method to size row heights.

{% tabs %}
{% highlight c# %}

//AutoFits RowHeights.
grid.Model.RowHeights.ResizeToFit(GridRangeInfo.Table(), GridResizeToFitOptions.NoShrinkSize);

//AutoFits ColumnWidths.
grid.Model.ColWidths.ResizeToFit(GridRangeInfo.Col(2), GridResizeToFitOptions.NoShrinkSize);

{% endhighlight %}

{% highlight vb %}

'AutoFits RowHeights.
grid.Model.RowHeights.ResizeToFit(GridRangeInfo.Table(), GridResizeToFitOptions.NoShrinkSize)

'AutoFits ColumnWidths. 
grid.Model.ColWidths.ResizeToFit(GridRangeInfo.Col(2), GridResizeToFitOptions.NoShrinkSize)

{% endhighlight %}
{% endtabs %}
N> Resizing the entire grid for very large grids can be time consuming. To only resize the visible area of the grid, you can set the range argument to grid.ViewLayout.VisibleCellsRange.
