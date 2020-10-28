---
layout: post
title: How-to-hide-the-row-headers-of-a-child-table-in-Gr | Windows Forms | Syncfusion
description: how to hide the row headers of a child table in gridgroupingcontrol
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to Hide the Row Headers of a Child Table in GridGroupingControl

You can do this by accessing the Child Table of GridGroupingControl using GridTableModel. Then handle QueryColWidth event handler of the Child Table and hide the Row Header (which is column zero) by setting the Size property to _Zero_.

{% tabs %}
{% highlight C# %}

GridTableModel tableModel = this.gridGroupingControl1.GetTableModel("ChildTable"); 
tableModel.QueryColWidth += new GridRowColSizeEventHandler(tableModel_QueryColWidth); 
void tableModel_QueryColWidth(object sender, GridRowColSizeEventArgs e) 
{ 
    if (e.Index == 0) 
    {
        e.Size = 0; 
        e.Handled = true; 
    } 
} 

{% endhighlight %}

{% highlight vb %}

Dim tableModel As GridTableModel = Me.GridGroupingControl1.GetTableModel("ChildTable")
AddHandler tableModel.QueryColWidth, AddressOf tableModel_QueryColWidth 
Private Sub tableModel_QueryColWidth(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)
If e.Index = 0 Then
e.Size = 0
e.Handled = True
End If
End Sub 'tableModel_QueryColWidth 

{% endhighlight %}
{% endtabs %}
