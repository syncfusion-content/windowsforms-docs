---
layout: post
title: Child Table Row Headers in WinForms GridGroupingControl | Syncfusion®
description: Hide row headers of a child table in Syncfusion® WinForms GridGroupingControl, its child table customization, column sizing, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Hide Child Table Row Headers in WinForms GridGroupingControl

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
