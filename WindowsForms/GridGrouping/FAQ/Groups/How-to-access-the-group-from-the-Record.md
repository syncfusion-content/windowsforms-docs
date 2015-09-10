---
layout: post
title: How-to-access-the-group-from-the-Record | WindowsForms | Syncfusion
description: how to access the group from the record
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to access the group from the Record

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

{% highlight vbnet %}



'For all the display elements in the Table.

For Each el As Element In gridGroupingControl1.Table.DisplayElements

'DisplayElementKind.Record or DisplayElementKind.Summary.

    If el.Kind=DisplayElementKind.Record OrElse el.Kind=DisplayElementKind.Summary Then

    Dim g As Group = el.ParentGroup

         System.Diagnostics.Trace.WriteLine(g.Info)

     End If

Next el

{% endhighlight  %}

