---
layout: post
title: How-to-access-the-group-from-DisplayElements | Windows Forms | Syncfusion
description: how to access the group from displayelements
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Access the Group from DisplayElements

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
