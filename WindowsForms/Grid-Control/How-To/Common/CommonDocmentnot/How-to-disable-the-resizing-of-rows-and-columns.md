---
layout: post
title: Disable the resizing of rows and columns | Syncfusion
description: Learn here all about how to disable the resizing of rows and columns of Syncfusion Windows Forms GridGroupingControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Disable the resizing of rows and columns

This page explains how to disable the resizing of rows and columns in WinForms GridGroupingControl and more details.

## How to disable the resizing of rows and columns in WinForms GridGroupingControl

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