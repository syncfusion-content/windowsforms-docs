---
layout: post
title: How to Hide or Unhide the Columns in a Grouping Grid | Syncfusion
description: Learn here all about how to hide or unhide the columns in a grouping grid of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Hide or Unhide the Columns in a Grouping Grid

The TableDescriptor object has VisibleColumns collection that you can use to control the columns that are visible. You can hide or unhide columns using the following code.

 
{% highlight c# %}
//Hides.
this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1");

//Unhide.
this.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1");

{% endhighlight  %}
{% highlight vb %}

'Hides.
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Col1")

'Unhide.
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Add("Col1")
{% endhighlight  %}