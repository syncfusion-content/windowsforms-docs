---
layout: post
title: How to get cell coordinates under a given point | Syncfusion
description: Learn here all about how to get cell coordinates under a given point in Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to get cell coordinates under a given point WinForms GridControl

If the point is given as part of one of the grids mouse event arguments, e.X and e.Y members of the event args should give the point in the grids coordinates. If the point is obtained in some other manner, you will have to first change it to the grid's coordinates. Once you have the point in grid coordinates, you can call Grid.PointToRowCol method to get row and column under the point.

{% tabs %}
{% highlight c# %}

//In a mouse event you might have code such as this to get the point.      
Point pt = new Point(e.X, e.Y);      

//In other situations, you could use static Cursor.Position method to get the current mouse point in screen coordinates.      
Point pt = this.gridControl1.PointToClient(Cursor.Position);        

//Then get the row and col.
int row, col; 
this.grid.PointToRowCol(pt, out row, out col);  

//From the row, col, you can get the cell rectangle. 
Rectangle cellRect = this.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col));

{% endhighlight %}

{% highlight vb %}

'In a mouse event you might have code such as this to get the point.   
Dim pt As New Point(e.X, e.Y)

'In other situations, you could use the static Cursor.Position method to get the current mouse point in screen coordinates. 
Dim pt As Point = Me.GridControl1.PointToClient(Cursor.Position)

'Then get the row and col.        
Dim row, col As Integer
Me.grid.PointToRowCol(pt, row, col)

'From the row, col, you can get the cell rectangle.
Dim cellRect As Rectangle = Me.grid.RangeInfoToRectangle(GridRangeInfo.Cell(row, col))

{% endhighlight %}
{% endtabs %}
