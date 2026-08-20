---
layout: post
title: Access All the Groups in WinForms GridGroupingControl | Syncfusion®
description: Access all the groups in Syncfusion® WinForms GridGroupingControl, its group hierarchy, records, group levels, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Access All the Groups in WinForms GridGroupingControl

To access all the groups and records categorized under it, use the following code.

{% tabs %}
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
{% endtabs %}
