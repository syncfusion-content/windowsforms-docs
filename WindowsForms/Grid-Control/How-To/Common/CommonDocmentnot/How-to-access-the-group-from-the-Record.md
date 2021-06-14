---
layout: post
title: How to access the group from the Record | Windows Forms | Syncfusion
description: Learn here all about how to access the group from the record of Syncfusion Windows Forms GridGroupingControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Access the group from the Record in Windows Forms GridGroupingControl

This page explains how to access the group from the Record in Windows Forms GridGroupingControl and more details.

## How to access the group from the Record in Windows Forms GridGroupingControl

To access the group from the record, use the following code snippet.

 
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