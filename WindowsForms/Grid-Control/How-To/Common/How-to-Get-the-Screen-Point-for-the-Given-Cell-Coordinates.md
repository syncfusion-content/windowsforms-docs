---
layout: post
title: How to get the screen point for the given cell coordinates |Syncfusion
description: Learn here all about how to get the screen point for the given cell coordinates in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to get the screen point for the given cell coordinates

You can get the cell's rectangle in grid coordinates from RangeInfoToRectangle method. Then with the rectangle's coordinates, you can get the screen point using PointToScreen method.

{% tabs %}
{% highlight c# %}

//For a given row and col.
Rectangle rect = this.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col));
Point screenPoint = this.grid.PointToScreen(new Point(rect.Left, rect.Top));

{% endhighlight %}

{% highlight vb %}

'For a given row and col.
Dim rect As Rectangle = Me.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col))
Dim screenPoint As Point = Me.grid.PointToScreen(New Point(rect.Left, rect.Top))

{% endhighlight %}
{% endtabs %}
