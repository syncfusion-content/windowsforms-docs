---
layout: post
title: How to Clear a Grouping | WindowsForms | Syncfusion
description: How to Clear a Grouping
platform: WindowsForms
control: Grouping
documentation: ug
---

# How to Clear a Grouping
To clear all grouping, call the groupingEngine.TableDescriptor.GroupedColumns.Clear method.

{% tabs %}
{% highlight C# %}

// Removes the grouping of all the grouped columns.
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Clear(); 
 
// Removes grouping of the column mentioned as an argument.
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Remove(Name); 
 
// Removes grouping of the column mentioned as column index.
this.gridGroupingControl1.TableDescriptor.GroupedColumns.RemoveAt(index);
{% endhighlight %}

{% highlight vb %}

' Removes the grouping of all the grouped columns.
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Clear() 
 
' Removes grouping of the column mentioned as an argument.
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Remove();
 
' Removes grouping of the column mentioned as column index.
Me.gridGroupingControl1.TableDescriptor.GroupedColumns.RemoveAt()

{% endhighlight %}
{% endtabs %}

N> To remove a particular grouping, use groupingEngine.TableDescriptor.GroupedColumns.Remove or groupingEngine.TableDescriptor.SortedColumns.RemoveAt.
