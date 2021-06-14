---
layout: post
title: How to disable the resizing of rows and columns | Syncfusion
description: Learn here all about how to disable the resizing of rows and columns of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to disable resizing of rows and columns in WinForms GridControl

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