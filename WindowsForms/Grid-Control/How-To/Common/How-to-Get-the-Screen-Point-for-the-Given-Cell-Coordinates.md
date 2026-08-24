---
layout: post
title: Get Screen Point in Windows Forms Grid Control | Syncfusion®
description: Get the screen point for given cell coordinates in Syncfusion® Windows Forms Grid Control using RangeInfoToRectangle and PointToScreen methods and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Get Screen Point in Windows Forms Grid Control

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
