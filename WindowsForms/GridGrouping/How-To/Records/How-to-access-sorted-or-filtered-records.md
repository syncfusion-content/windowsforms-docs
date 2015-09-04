---
layout: post
title: How-to-access-sorted-or-filtered-records
description: how to access sorted or filtered records
platform: windowsforms
control: How To
documentation: ug
---

# How to access sorted or filtered records

This can be done using the following code snippet.

{% highlight c# %}



//Loops through the filtered records.

foreach(Record fr in this.gridGroupingControl1.Table.FilteredRecords)

{

Console.WriteLine(fr.Info);

}

{% endhighlight %}

{% highlight vbnet %}



'Loops through the filtered records.

For Each fr As Record In Me.gridGroupingControl1.Table.FilteredRecords

    Console.WriteLine(fr.Info)

Next fr

{% endhighlight %}

