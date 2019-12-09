---
layout: post
title: How-to-get-a-record-index-given-the-rowindex | Windows Forms | Syncfusion
description: how to get a record index given the rowindex
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Get a Record Index Given the Row Index

This can be done using the following code snippet.

{% tabs %}
{% highlight c# %}

//Calculates Record index.
Table table = e.TableCellIdentity.Table;
Element el = table.DisplayElements[RowIndex];
Record r = el.ParentRecord;
int RecordIndex= table.UnsortedRecords.IndexOf(r);

{% endhighlight %}

{% highlight vb %}

'Calculates Record index.
Dim table As Table = e.TableCellIdentity.Table
Dim el As Element = table.DisplayElements(RowIndex)
Dim r As Record = el.ParentRecord
Dim RecordIndex As Integer = table.UnsortedRecords.IndexOf(r)

{% endhighlight %}
{% endtabs %}
