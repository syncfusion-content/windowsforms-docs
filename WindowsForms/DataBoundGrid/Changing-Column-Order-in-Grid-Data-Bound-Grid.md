---
layout: post
title: Changing-Column-Order-in-Grid-Data-Bound-Grid | WindowsForms | Syncfusion
description: changing column order in grid data bound grid
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# Changing Column Order in Grid Data Bound Grid

The simplest way to change the column order in a Grid Data Bound Grid is to use the GridDataBoundGrid.Model.Cols.MoveRange method. This method will rearrange columns that are based on from and to and counts the parameters passed into it. 
{% highlight c# %}




//Moves columns 4 and 5, to column 1.

this.gridDataBoundGrid1.Model.Cols.MoveRange(4, 2, 1);

{% endhighlight  %}
{% highlight vbnet %}




'Moves columns 4 and 5, to column 1.

Me.GridDataBoundGrid1.Model.Cols.MoveRange(4, 2, 1)



{% endhighlight  %}