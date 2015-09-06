---
layout: post
title: How-to-Remove-Hidden-Columns-from-Field-Chooser
description: how to remove hidden columns from field chooser
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to Remove Hidden Columns from Field Chooser

To remove hidden columns from Grid Grouping Field Chooser, you need to bypass original column collection in the Field Chooser with a cloned GridColumnDescriptorCollection. The following steps illustrate how to do this:

1. Get the collection of the visible columns, which are removed from the column collection.
2. Create a cloned column collection GridColumnDescriptorCollection from theTable Descriptor.
3. Pass the cloned collection object as an argument to the Field Chooser to ensure that changes are made correctly to the Field Chooser.

The following code example illustrates this.

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

{% highlight vbnet %}



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

