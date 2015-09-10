---
layout: post
title: How-to-make-resizing-possible-in-additional-row-he | WindowsForms | Syncfusion
description: how to make resizing possible in additional row headers of a gridcontrol and griddataboundgrid
platform: WindowsForms
control: Grid
documentation: ug
---

# How to make resizing possible in additional row headers of a GridControl and GridDataBoundGrid



The resizing of additional row headers on the grid can be made possible by setting ResizeColsBahaviour flag to Grid.GridResizeCellsBehavior.InsideGrid.

{% highlight c# %}



grid.ResizeColsBehavior = (((Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.ResizeSingle

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.InsideGrid)

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineHeaders)

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineBounds);


{% endhighlight %}

{% highlight vbnet %}



grid.ResizeColsBehavior = (((Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.ResizeSingle

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.InsideGrid)

| Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineHeaders)

Dim Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.OutlineBounds) As |



{% endhighlight %}
