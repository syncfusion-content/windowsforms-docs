---
layout: post
title: How to group a column programmatically | Windows Forms | Syncfusion
description: Learn here all about how to group a column programmatically of Syncfusion Windows Forms GridGroupingControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to group a column programmatically in WinForms GridGroupingControl

To group a column programmatically, use the following code.

 
{% highlight c# %}

//Shows the GroupDropArea.
this.gridGroupingControl1.ShowGroupDropArea = true;

//Groups by "Col1".
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending);

{% endhighlight  %}

{% highlight vb %}

'Shows the GroupDropArea.
Me.gridGroupingControl1.ShowGroupDropArea = True

'Groups by "Col1".
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1", ListSortDirection.Ascending)
{% endhighlight  %}