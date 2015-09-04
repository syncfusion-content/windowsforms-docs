---
layout: post
title: How-to-access-selected-records
description: how to access selected records
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access selected records

The selected records can be accessed using the code snippet below.

{% highlight c# %}



//Accesses Selected records in GridGroupingcontrol.      

foreach(SelectedRecord rec in this.gridGroupingControl1.Table.SelectedRecords)

System.Diagnostics.Trace.WriteLine(rec.Record.Info);

{% endhighlight %}

{% highlight vbnet %}



'Accesses Selected records in GridGroupingControl.

For Each rec As SelectedRecord In Me.gridGroupingControl1.Table.SelectedRecords

Console.WriteLine(rec.Record.Info)

Next rec
{% endhighlight %}


