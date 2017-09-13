---
layout: post
title: How-to-hide-the-row-headers-of-a-child-table-in-Gr | Windows Forms | Syncfusion
description: how to hide the row headers of a child table in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to hide the row headers of a child table in GridGroupingControl

You can do this by accessing the Child Table of GridGroupingControl using GridTableModel. Then handle QueryColWidth event handler of the Child Table and hide the Row Header (which is column zero) by setting the Size property to _Zero_.



{% highlight C# %}


GridTableModel tbd = this.gridGroupingControl1.GetTableModel("ChildTable"); 

tbd.QueryColWidth += new GridRowColSizeEventHandler(tbd_QueryColWidth); 



void tbd_QueryColWidth(object sender, GridRowColSizeEventArgs e) 

{ 

if (e.Index == 0) 

{ 

e.Size = 0; 

e.Handled = true; 

} 

} 

{% endhighlight %}



{% highlight vbnet %}




Dim tbd As GridTableModel = Me.GridGroupingControl1.GetTableModel("ChildTable")

AddHandler tbd.QueryColWidth, AddressOf tbd_QueryColWidth 



Private Sub tbd_QueryColWidth(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)

If e.Index = 0 Then

e.Size = 0

e.Handled = True

End If

End Sub 'tbd_QueryColWidth 

{% endhighlight %}

