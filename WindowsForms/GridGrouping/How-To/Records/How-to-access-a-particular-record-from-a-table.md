---
layout: post
title: How-to-access-a-particular-record-from-a-table
description: how to access a particular record from a table
platform: WindowsForms
control: How To
documentation: ug
---

# How to access a particular record from a table

This can be done using the following code snippet.

{% highlight c# %}



//Uses the record Index to access a particular record from a table.

Record r=this.gridGroupingControl1.Table.Records[RecordIndex];

{% endhighlight %}

{% highlight vbnet %}



'Uses the record Index to access a particular record from a table.

Dim r As Record = Me.gridGroupingControl1.Table.Records(RecordIndex)

{% endhighlight %}

