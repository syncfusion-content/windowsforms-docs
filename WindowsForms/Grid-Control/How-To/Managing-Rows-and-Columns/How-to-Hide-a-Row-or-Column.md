---
layout: post
title: Hide Rows and Columns in Windows Forms Grid Control | Syncfusion®
description: Hide rows and columns in Syncfusion® Windows Forms Grid Control using row and column hidden collections and range-based visibility settings and more.
platform: windowsforms
control: Grid Control
documentation: ug
---

# How to Hide a Row or Column in Windows Forms Grid Control

You can hide rows and columns using grid.Model.Rows.Hidden collection and grid.Model.Cols.Hidden collection. You can hide or show a range of columns or rows using grid.Model.HideCols.SetRange or grid.Model.HideRows.SetRange.

{% tabs %}
{% highlight c# %}
//Hides row 2.
this.grid.Model.Rows.Hidden[2] = true; 

//Hides column 3.
this.grid.Model.Cols.Hidden[3] = true; 

//Hides cols 1-3.
this.grid.Model.HideCols.SetRange(1, 3, true); 

{% endhighlight %}

{% highlight vb %}

'Hides row 2. 
Me.grid.Model.Rows.Hidden(2) = True 

'Hides column 3.
Me.grid.Model.Cols.Hidden(3) = True 

'Hides cols 1-3.
Me.grid.Model.HideCols.SetRange(1, 3, True) 

{% endhighlight %}
{% endtabs %}
