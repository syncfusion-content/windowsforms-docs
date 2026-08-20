---
layout: post
title: Access Particular Record in WinForms GridGroupingControl | Syncfusion®
description: Access a particular record from a table in Syncfusion® WinForms GridGroupingControl, its record collection, record indexing, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access a Particular Record in WinForms GridGroupingControl

This can be done using the following code snippet.

{% tabs %}
{% highlight c# %}

//Uses the record Index to access a particular record from a table.
Record r=this.gridGroupingControl1.Table.Records[RecordIndex];

{% endhighlight %}

{% highlight vb %}

'Uses the record Index to access a particular record from a table.
Dim r As Record = Me.gridGroupingControl1.Table.Records(RecordIndex)

{% endhighlight %}
{% endtabs %}
