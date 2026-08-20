---
layout: post
title: Hide WinForms GridGroupingControl Field Chooser Columns | Syncfusion®
description: Remove hidden columns from the Field Chooser in Syncfusion® WinForms GridGroupingControl, its column collections, visible columns, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Remove HiddenColumns from FieldChooser in WinForms GridGrouping

To remove hidden columns from Grid Grouping Field Chooser, you need to bypass original column collection in the Field Chooser with a cloned GridColumnDescriptorCollection. The following steps illustrate how to do this:

1. Get the collection of the visible columns, which are removed from the column collection.
2. Create a cloned column collection GridColumnDescriptorCollection from theTable Descriptor.
3. Pass the cloned collection object as an argument to the Field Chooser to ensure that changes are made correctly to the Field Chooser.

The following code example illustrates this.

{% tabs %}
{% highlight c# %}

//Removes Visible Columns.
this.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Name3");

//Creates GridColumnDescriptorCollection column collection.
GridColumnDescriptorCollection collection = 
this.gridGroupingControl1.TableDescriptor.Columns.Clone();

//Detaches visible column, which is likely to be removed from this cloned collection also.
collection.Remove("Name3");

//Passes the collection as an argument to the Field Chooser object.
FieldChooser fChooser = new FieldChooser(this.gridGroupingControl1, collection);

{% endhighlight %}

{% highlight vb %}

'Removes Visible Columns.
Me.gridGroupingControl1.TableDescriptor.VisibleColumns.Remove("Name3")

'Creates a GridColumnDescriptorCollection column collection.
Dim collection As GridColumnDescriptorCollection = 
Me.gridGroupingControl1.TableDescriptor.Columns.Clone()

'Detaches the visible column, which is likely to be removed from this cloned collection also.
collection.Remove("Name3")

'Passes the collection as an argument to the Field Chooser object.
Dim fChooser As New FieldChooser(Me.gridGroupingControl1, collection)

{% endhighlight %}
{% endtabs %}
