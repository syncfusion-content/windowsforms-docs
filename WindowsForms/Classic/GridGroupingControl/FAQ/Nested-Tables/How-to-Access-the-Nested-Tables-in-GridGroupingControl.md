---
layout: post
title: How-to-Access-the-Nested-Tables-in-GridGroupingCon | Windows Forms | Syncfusion
description: how to access the nested tables in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Access the Nested Tables in GridGroupingControl

You can get access to a nested table inside a record using the following code.

{% tabs %}
{% highlight C# %}

//Accesses a nested table.
NestedTable nestedTable = groupingGrid.Table.Records[n].NestedTables[0];

//Whereas n is the specific record that owns the nested table.

{% endhighlight %}

{% highlight vb %}

'Accesses a nested table.
Dim nestedTable As NestedTable = groupingGrid.Table.Records(n).NestedTables(0)

'Whereas n is the specific record that owns the nested table.

{% endhighlight %}
{% endtabs %}

The NestedTable has a ChildTable property.

{% tabs %}
{% highlight C# %}

//Gets the child of the nested table.
ChildTable ct = nestedTable.ChildTable;

{% endhighlight %}

{% highlight vb %}

'Gets the child of the nested table.
Dim ct As ChildTable = nestedTable.ChildTable

{% endhighlight %}
{% endtabs %}

To get access to a specific record in that child table, use the code snippet given below.

{% tabs %}
{% highlight c# %}

Record recordInNestedTable = ct.Records[0];
 
//or
Record recordInNestedTable = ct.FilteredRecords[0]
{% endhighlight %}

{% highlight vb %}

'Accesses the first record.
Dim recordInNestedTable As Record = ct.Records(0)

'or 
Dim recordInNestedTable As Record = ct.FilteredRecords(0)

{% endhighlight %}
{% endtabs %}

If you need access to the TableDescriptor for a nested relation, use the code snippet given below.

{% tabs %}
{% highlight C# %}

//Accesses the ChildTableDescriptor.
GridTableDescriptor td = this.gridGroupingControl1.TableDescriptor.Relations[0].ChildTableDescriptor;

{% endhighlight %}

{% highlight vb %}

'Accesses the ChildTableDescriptor.
Dim td As GridTableDescriptor = Me.gridGroupingControl1.TableDescriptor.Relations(0).ChildTableDescriptor

{% endhighlight %}
{% endtabs %}
