---
layout: post
title: Changing Column Order in Grid Data Bound Grid in Windows Forms xptoolbar control | Syncfusion
description: Learn about Changing Column Order in Grid Data Bound Grid support in Syncfusion Windows Forms GridDataBoundGrid(Classic) control and more details.
platform: windowsforms
control: DataBoundGrid
documentation: ug
---

# Changing Column Order in Grid Data Bound Grid in Windows Forms GridDataBoundGrid(Classic)

The simplest way to change the column order in a Grid Data Bound Grid is to use the GridDataBoundGrid.Model.Cols.MoveRange method. This method will rearrange columns that are based on from and to and counts the parameters passed into it. 

{% tabs %}
{% highlight c# %}
//Moves columns 4 and 5, to column 1.
this.gridDataBoundGrid1.Model.Cols.MoveRange(4, 2, 1);
{% endhighlight  %}
{% highlight vb %}
'Moves columns 4 and 5, to column 1.
Me.GridDataBoundGrid1.Model.Cols.MoveRange(4, 2, 1)
{% endhighlight  %}
{% endtabs %}