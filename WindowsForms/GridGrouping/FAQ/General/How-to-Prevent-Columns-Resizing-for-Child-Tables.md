---
layout: post
title: Prevent Column Resizing in WinForms GridGroupingControl | Syncfusion®
description: Prevent column resizing for child tables in Syncfusion® WinForms GridGroupingControl, its child table customization, resizing behavior, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Prevent Child Column Resizing in WinForms GridGroupingControl

To prevent GridGroupingControl's child table or grandchild table's columns from getting resized, you must handle TableControlResizingColumns event of the grid. In the event handler, check for the e.TableDescriptor.Name and cancel the event by setting e.Cancel to true. The following code snippet cancels resizing the Child table.

{% tabs %}
{% highlight C# %}

//Prevents resizing columns for all child tables.

private void gridGroupingControl1_TableControlResizingColumns(object sender,Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs e)
{
    if(this.gridGroupingControl1.TableDescriptor.Name != e.TableControl.TableDescriptor.Name)
    {
        e.Inner.Cancel = true;
    }
}

//Prevents resizing columns for any particular child table.
private void gridGroupingControl1_TableControlResizingColumns(object sender,Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs e)
{
    if(e.TableControl.TableDescriptor.Name = "ChildTable")
    {
        e.Inner.Cancel = true;
    }
}

{% endhighlight %}

{% highlight vb %}

'Prevents resizing columns for all child tables.
Private Sub gridGroupingControl1_TableControlResizingColumns(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs) Handles gridGroupingControl1.TableControlResizingColumns
    If Me.gridGroupingControl1.TableDescriptor.Name &lt;&gt; e.TableControl.TableDescriptor.Name Then
         e.Inner.Cancel = True
    End If
End Sub

'Prevent re sizing columns for any particular child table.
Private Sub gridGroupingControl1_TableControlResizingColumns(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlResizingColumnsEventArgs)
    If e.TableControl.TableDescriptor.Name = "ChildTable" Then
        e.Inner.Cancel = True
    End If

End Sub
{% endhighlight %}
{% endtabs %}

