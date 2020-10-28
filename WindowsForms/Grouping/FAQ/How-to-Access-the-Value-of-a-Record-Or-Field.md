---
layout: post
title: How to Access the Value of a Record Or Field | WindowsForms | Syncfusion
description: How to Access the Value of a Record Or Field
platform: WindowsForms
control: Grouping
documentation: ug
---



# How to Access the Value of a Record or Field

The groupingEngine.Table.Records property will allow you to access the records (items) in your IList and particular fields (properties) in the records.

{% tabs %}
{% highlight C# %}

// Assumes the datasource is an IList holding objects of type MyObject.
// Retrieves the third object in the list.

MyObject o = this.groupingEngine.Table.Records[2].GetData() as MyObject;
 
// A is a public property of MyObject, so "A" is treated as a field.
object someValue = this.groupingEngine.Table.Records[2].GetValue("A");

{% endhighlight %}

{% highlight vb %}
 
' Assumes the datasource is an IList holding objects of type MyObject.
' Retrieves the third object in the list.
Dim o As MyObject = CType(Me.groupingEngine.Table.Records(2).GetData(), MyObject)
 
' A is a public property of MyObject, so "A" is treated as a field.
Dim someValue As Object = Me.groupingEngine.Table.Records(2).GetValue("A")

{% endhighlight %}
{% endtabs %}

N>1. The groupingEngine.Table.Records collection will give you access to the raw data in your datasource through the GroupingEngine.2. If you have applied filters or have sorted the data and want to access the sorted or filtered data, then you must use the GroupingEngine.Table.FilteredRecords collection.3. This collection reflects the visible state of the data in the GroupingEngine.

