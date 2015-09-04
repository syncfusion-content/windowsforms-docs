---
layout: post
title: How-to-get-a-record-index-given-the-rowindex
description: how to get a record index given the rowindex
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to get a record index given the rowindex

This can be done using the following code snippet.

{% highlight c# %}



//Calculates Record index.

Table table = e.TableCellIdentity.Table;

Element el = table.DisplayElements[RowIndex];

Record r = el.ParentRecord;

int RecordIndex= table.UnsortedRecords.IndexOf(r);

{% endhighlight %}

{% highlight vbnet %}



'Calculates Record index.

Dim table As Table = e.TableCellIdentity.Table

Dim el As Element = table.DisplayElements(RowIndex)

Dim r As Record = el.ParentRecord

Dim RecordIndex As Integer = table.UnsortedRecords.IndexOf(r)

{% endhighlight %}

