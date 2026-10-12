---
layout: post
title: Group from a Record in WinForms GridGroupingControl | Syncfusion®
description: Access the group from a record in Syncfusion® WinForms GridGroupingControl, its records, parent groups, group hierarchy, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access the Group from a Record in GridGroupingControl

To access the group from the record, use the following code snippet.

{% tabs %}
{% highlight c# %}

//For all the display elements in the Table.
foreach(Element el in gridGroupingControl1.Table.DisplayElements)
{
//DisplayElementKind.Record or DisplayElementKind.Summary.
    if(el.Kind==DisplayElementKind.Record || DisplayElementKind.Summary)
    {
        Group g = el.ParentGroup;
        System.Diagnostics.Trace.WriteLine(g.Info);
    }
}

{% endhighlight  %}

{% highlight vb %}

'For all the display elements in the Table.
For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary.
If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then
Dim g As Group = el.ParentGroup
System.Diagnostics.Trace.WriteLine(g.Info)
End If
Next el

{% endhighlight  %}
{% endtabs %}
