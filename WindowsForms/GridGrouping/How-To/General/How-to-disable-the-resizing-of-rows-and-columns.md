---
layout: post
title: How-to-disable-the-resizing-of-rows-and-columns
description: how to disable the resizing of rows and columns
platform: windowsforms
control: How To
documentation: ug
---

# How to disable the resizing of rows and columns

This can be done using the below code.



{% highlight C# %}



//Code to disable the resizing of rows.

this.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;



//Code to disable the column resizing.

this.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None;


{% endhighlight %}


{% highlight vbnet %}

'Code to disable the column resizing.

Me.gridGroupingControl1.TableModel.Options.ResizeColsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None



'Code to disable the resizing of rows.

Me.gridGroupingControl1.TableModel.Options.ResizeRowsBehavior = Syncfusion.Windows.Forms.Grid.GridResizeCellsBehavior.None

{% endhighlight %}


