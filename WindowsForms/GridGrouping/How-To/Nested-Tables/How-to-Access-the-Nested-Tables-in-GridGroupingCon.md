---
layout: post
title: How-to-Access-the-Nested-Tables-in-GridGroupingCon
description: how to access the nested tables in gridgroupingcontrol
platform: windowsforms
control: How To
documentation: ug
---

# How to Access the Nested Tables in GridGroupingControl

You can get access to a nested table inside a record using the following code.

## Example



{% highlight C# %}


//Accesses a nested table.

NestedTable nt = groupingGrid.Table.Records[n].NestedTables[0];

{% endhighlight %}



{% highlight vbnet %}


'Accesses a nested table.

Dim nt As NestedTable = groupingGrid.Table.Records(n).NestedTables(0)

Whereas n is the specific record that owns the nested table.

The NestedTable has a ChildTable property.

{% endhighlight %}

{% highlight C# %}



//Gets the child of the nested table.

ChildTable ct = nt.ChildTable;

{% endhighlight %}



{% highlight vbnet %}




'Gets the child of the nested table.

Dim ct As ChildTable = nt.ChildTable
{% endhighlight %}
To get access to a specific record in that child table, use the code snippet given below.



{% highlight vbnet %}


'Accesses the first record.

Dim recordInNestedTable As Record = ct.Records(0)
or 
Dim recordInNestedTable As Record = ct.FilteredRecords(0)
{% endhighlight %}

If you need access to the TableDescriptor for a nested relation, use the code snippet given below.



{% highlight C# %}


//Accesses the ChildTableDescriptor.

GridTableDescriptor td = this.gridGroupingControl1.TableDescriptor.Relations[0].ChildTableDescriptor;
{% endhighlight %}




{% highlight vbnet %}




'Accesses the ChildTableDescriptor.

Dim td As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations(0).ChildTableDescriptor

{% endhighlight %}

