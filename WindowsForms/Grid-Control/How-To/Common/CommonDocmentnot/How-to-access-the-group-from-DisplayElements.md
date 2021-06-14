---
layout: post
title: Access the group from DisplayElements in GridControl | Syncfusion
description: Learn here all about how to access the group from displayelements of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access the group from DisplayElements in WinForms GridControl

To access the group from DisplayElements, use the following code snippet.

 
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