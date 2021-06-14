---
layout: post
title: How to access a particular group in WinForms GridControl | Syncfusion
description: Learn here all about how to access a particular group and the records categorized under it of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to access a particular group in Windows Forms GridControl

To access a particular group and the records categorized under it, use the following code.
 
{% highlight c# %}

//Accesses a particular group and the categorized records under it
this.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1");

//Uses category.
this.iterate(this.gridGroupingControl1.Table.TopLevelGroup.Groups["row6 col1"]);

//Or uses index.
//this.iterate(this.gridGroupingControl1.Table.TopLevelGroup.Groups[6]);

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

'Accesses a particular group and the categorized records under it.  
    Me.gridGroupingControl1.TableDescriptor.GroupedColumns.Add("Col1")
' Uses category.
    Me.iterate(Me.gridGroupingControl1.Table.TopLevelGroup.Groups("row6 col1"))

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