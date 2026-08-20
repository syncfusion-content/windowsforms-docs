---
layout: post
title: RecordIndex by RowIndex in WinForms GridGroupingControl | Syncfusion®
description: Get a record index by row index in Syncfusion® WinForms GridGroupingControl, its display elements, records, row mapping, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Get RecordIndex by RowIndex in WinForms GridGroupingControl

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
