---
layout: post
title: How-to-access-unfiltered-records
description: how to access unfiltered records
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to access unfiltered records

This can be done using the following code snippet.

{% highlight c# %}



foreach(Record r in this.gridGroupingControl1.Table.Records)

{

foreach(Record fr in this.gridGroupingControl1.Table.FilteredRecords)

{

if(r!=fr)

{

Console.WriteLine(r.Info);

}

}

}

{% endhighlight %}

{% highlight vbnet %}



For Each r As Record In Me.gridGroupingControl1.Table.Records

    For Each fr As Record In Me.gridGroupingControl1.Table.FilteredRecords

        If Not r Is fr Then

            Console.WriteLine(r.Info)

        End If

    Next fr

Next r

{% endhighlight %}

