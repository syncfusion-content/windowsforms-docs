---
layout: post
title: How-to-access-sorted-or-filtered-records | Windows Forms | Syncfusion
description: how to access sorted or filtered records
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Access Sorted or Filtered Records

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
