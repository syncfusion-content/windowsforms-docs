---
layout: post
title: How-to-hide-the-row-headers-of-a-child-table-in-Gr
description: how to hide the row headers of a child table in gridgroupingcontrol
platform: WindowsForms
control: GridGrouping
documentation: ug
---

# How to hide the row headers of a child table in GridGroupingControl

You can do this by accessing the Child Table of GridGroupingControl using GridTableModel. Then handle QueryColWidth event handler of the Child Table and hide the Row Header (which is column zero) by setting the Size property to _Zero_.



{% highlight C# %}


GridTableModel tbl = this.gridGroupingControl1.GetTableModel("ChildTable"); 

tbl.QueryColWidth += new GridRowColSizeEventHandler(tbl_QueryColWidth); 



void tbl_QueryColWidth(object sender, GridRowColSizeEventArgs e) 

{ 

if (e.Index == 0) 

{ 

e.Size = 0; 

e.Handled = true; 

} 

} 

{% endhighlight %}



{% highlight vbnet %}




Dim tbl As GridTableModel = Me.GridGroupingControl1.GetTableModel("ChildTable")

AddHandler tbl.QueryColWidth, AddressOf tbl_QueryColWidth 



Private Sub tbl_QueryColWidth(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)

If e.Index = 0 Then

e.Size = 0

e.Handled = True

End If

End Sub 'tbl_QueryColWidth 

{% endhighlight %}

