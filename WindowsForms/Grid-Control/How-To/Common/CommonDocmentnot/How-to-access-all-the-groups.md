---
layout: post
title: How to access all the groups | Windows Forms | Syncfusion
description: Learn here all about how to access all the groups of Syncfusion Windows Forms GridGroupingControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# Access all the groups in Windows Forms GridGroupingControl

This page explains how to access all the groups in Windows Forms GridGroupingControl and more details.

## How to access all the groups and records categorized under it in Windows Forms GridGroupingControl

To access all the groups and records categorized under it, use the following code.

 
{% highlight c# %}

this.iterate(this.gridGroupingControl1.Table.TopLevelGroup);
public void iterate(Group g)
{
System.Diagnostics.Trace.WriteLine("GroupLevel = "+g.GroupLevel);
System.Diagnostics.Trace.WriteLine(g.Info);
foreach(Record r in g.Records)
{
System.Diagnostics.Trace.WriteLine(r.Info);
}
foreach(Group gr in g.Groups)
{
iterate(gr);
}
}

{% endhighlight  %}

{% highlight vb %}

Me.iterate(Me.gridGroupingControl1.Table.TopLevelGroup)
Public Sub iterate(ByVal g As Group)
    System.Diagnostics.Trace.WriteLine("GroupLevel = " + g.GroupLevel.toString())
    System.Diagnostics.Trace.WriteLine(g.Info)
    For Each r As Record In g.Records
        System.Diagnostics.Trace.WriteLine(r.Info)
    Next r
    For Each gr As Group In g.Groups
        iterate(gr)
    Next gr
End Sub
{% endhighlight  %}