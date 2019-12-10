---
layout: post
title: How to disable the resizing of rows and columns | Windows Forms | Syncfusion
description: how to disable the resizing of rows and columns
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to disable the resizing of rows and columns

This can be done using the below code.

 
{% highlight c# %}

//Code to disable the resizing of rows.
this.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;

//Code to disable the column resizing.
this.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;
{% endhighlight  %}

{% highlight vb %}

'Code to disable the column resizing.
Me.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None

'Code to disable the resizing of rows.
Me.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None
{% endhighlight  %}