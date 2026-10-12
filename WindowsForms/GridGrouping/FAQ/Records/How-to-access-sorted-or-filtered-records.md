---
layout: post
title: Sorted, Filtered Records in WinForms GridGroupingControl | Syncfusion®
description: Access sorted or filtered records in Syncfusion® WinForms GridGroupingControl, its filtered record collection, record retrieval, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access Sorted, Filtered Records in WinForms GridGroupingControl

This can be done using the following code snippet.

{% tabs %}
{% highlight c# %}

//Loops through the filtered records.
foreach(Record fr in this.gridGroupingControl1.Table.FilteredRecords)
{
    Console.WriteLine(fr.Info);
}

{% endhighlight %}

{% highlight vb %}

'Loops through the filtered records.
For Each fr As Record In Me.gridGroupingControl1.Table.FilteredRecords
    Console.WriteLine(fr.Info)
Next fr

{% endhighlight %}
{% endtabs %}
