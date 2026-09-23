---
layout: post
title: Access Selected Records in WinForms GridGroupingControl | Syncfusion®
description: Access selected records in Syncfusion® WinForms GridGroupingControl, its selected record collection, record retrieval, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access Selected Records in WinForms GridGroupingControl

The selected records can be accessed using the code snippet below.

{% tabs %}
{% highlight c# %}

//Accesses Selected records in GridGroupingControl.      
foreach(SelectedRecord rec in this.gridGroupingControl1.Table.SelectedRecords)
System.Diagnostics.Trace.WriteLine(rec.Record.Info);

{% endhighlight %}

{% highlight vb %}

'Accesses Selected records in GridGroupingControl.
For Each rec As SelectedRecord In Me.gridGroupingControl1.Table.SelectedRecords
Console.WriteLine(rec.Record.Info)
Next rec

{% endhighlight %}
{% endtabs %}

