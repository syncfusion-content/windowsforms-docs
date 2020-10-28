---
layout: post
title: How to Clear a Sort | WindowsForms | Syncfusion
description: How to Clear a Sort
platform: WindowsForms
control: Grouping
documentation: ug
---

# How to Clear Sorting

To clear all sorts, call the groupingEngine.TableDescriptor.SortedColumns.Clear method.

{% tabs %}
{% highlight C# %}

// Removes all the sorting associated with the table.
this.gridGroupingControl1.TableDescriptor.SortedColumns.Clear();
 
// Removes the sorting of the column mentioned as argument.
this.gridGroupingControl1.TableDescriptor.SortedColumns.Remove(Name of the column);  

// Removes the sorting of the column mentioned as column index.
this.gridGroupingControl1.TableDescriptor.SortedColumns.RemoveAt(index);

{% endhighlight %}

{% highlight vb %}

 ' Removes all the sorting associated.
Me.gridGroupingControl1.TableDescriptor.SortedColumns.Clear()
 
' Removes the sorting of the column mentioned as argument.
Me.gridGroupingControl1.TableDescriptor.SortedColumns.Remove()
 
' Removes the sorting of the column mentioned as column index.
Me.gridGroupingControl1.TableDescriptor.SortedColumns.RemoveAt()

{% endhighlight %}
{% endtabs %}

N> To remove a particular sort, use groupingEngine.TableDescriptor.SortedColumns.Remove or groupingEngine.TableDescriptor.SortedColumns.RemoveAt.
