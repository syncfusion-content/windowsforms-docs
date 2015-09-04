---
layout: post
title: How to Hide or Unhide the Columns in a Grouping Grid
description: how to hide or unhide the columns in a grouping grid
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Hide or Unhide the Columns in a Grouping Grid

The TableDescriptor object has VisibleColumns collection that you can use to control the columns that are visible. You can hide or unhide columns using the following code.

## Example


{% highlight c# %}


//Hides.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1");



//Unhides.

this.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1");

{% endhighlight  %}
{% highlight vbnet %}




'Hides.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1")



'Unhides.

Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1")
{% endhighlight  %}