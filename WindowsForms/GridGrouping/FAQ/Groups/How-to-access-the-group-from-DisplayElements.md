---
layout: post
title: Access the Group in WinForms GridGroupingControl | Syncfusion®
description: Access the group from DisplayElements in Syncfusion® WinForms GridGroupingControl, its display elements, group hierarchy, parent groups, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access the Group in WinForms GridGroupingControl

To access the group from DisplayElements, use the following code snippet.

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

'For all the display elements in the Table
For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary
If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then
Dim g As Group = el.ParentGroup
System.Diagnostics.Trace.WriteLine(g.Info)
End If
Next el

{% endhighlight  %}
{% endtabs %}
