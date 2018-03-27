---
layout: post
title: How to Clear a Filter | WindowsForms | Syncfusion
description: How to Clear a Filter
platform: WindowsForms
control: Grouping
documentation: ug
---
# How to Clear Filtering
To clear all filters, call the groupingEngine.TableDescriptor.RecordFilters.Clear method.

{% tabs %}
{% highlight C# %}

// Removes all the filters associated with the table.
this.gridGroupingControl1.TableDescriptor.RecordFilters.Clear(); 
 
// Removes the Filter associated by sending the argument as RecordFilterDescriptor.name
this.gridGroupingControl1.TableDescriptor.RecordFilters.Remove(RecordFilterDescriptor.Name); 
 
// Removes the RecordFilter associated by mentioning as index.
this.gridGroupingControl1.TableDescriptor.RecordFilters.RemoveAt();
{% endhighlight %}

{% highlight vb %}

' Removes all the filters associated with the table.
Me.gridGroupingControl1.TableDescriptor.RecordFilters.Clear()
 
' Removes the Filter associated by sending the argument as RecordFilterDescriptor.name
Me.gridGroupingControl1.TableDescriptor.RecordFilters.Remove()
 
' Removes the RecordFilter associated by mentioning as index.
Me.gridGroupingControl1.TableDescriptor.RecordFilters.RemoveAt()

{% endhighlight %}
{% endtabs %}

N> To remove a particular filter, use the groupingEngine.TableDescriptor.RecordFilters.Remove or groupingEngine.TableDescriptor.RecordFilters.RemoveAt. To use Remove, you will need a reference to the RecordFilterDescriptor object that you want to delete or your RecordFilterDescriptor object would have to be named (setting the RecordFilterDescriptor.Name property or by passing a name string into its overloaded constructor).
