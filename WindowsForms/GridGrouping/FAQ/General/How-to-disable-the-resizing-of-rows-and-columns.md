---
layout: post
title: Disable Row and Column Resizing in GridGroupingControl | Syncfusion®
description: Disable row and column resizing in Syncfusion® Windows Forms GridGroupingControl, its resizing behavior, table model options, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Disable Row and Column Resizing in WinForms GridGroupingControl

This can be done using the below code.

{% tabs %}
{% highlight C# %}

//Code to disable the resizing of rows.
this.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;

//Code to disable the column resizing.
this.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;


{% endhighlight %}

{% highlight vb %}

'Code to disable the column resizing.
Me.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None

'Code to disable the resizing of rows.
Me.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None

{% endhighlight %}
{% endtabs %}

