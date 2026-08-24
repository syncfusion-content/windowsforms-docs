---
layout: post
title: Unfiltered Records in WinForms GridGroupingControl | Syncfusion®
description: Access unfiltered records in Syncfusion® WinForms GridGroupingControl, its record collections, filtered records comparison, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access Unfiltered Records in WinForms GridGroupingControl

This can be done using the following code snippet.

{% tabs %}
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

{% highlight vb %}

For Each r As Record In Me.gridGroupingControl1.Table.Records
For Each fr As Record In Me.gridGroupingControl1.Table.FilteredRecords
If Not r Is fr Then
    Console.WriteLine(r.Info)
End If
Next fr
Next r

{% endhighlight %}
{% endtabs %}
