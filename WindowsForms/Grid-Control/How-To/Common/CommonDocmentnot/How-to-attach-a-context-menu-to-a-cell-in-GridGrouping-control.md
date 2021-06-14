---
layout: post
title: How to attach a context menu to a cell in GridControl | Syncfusion
description: Learn here all about how to attach a context menu to a cell of Syncfusion Windows Forms GridControl control and more.
platform: windowsforms
control: GridGrouping
documentation: ug
---

# How to attach a context menu to a cell in Windows Forms GridControl

By handling TableControlCurrentCellControlGotFocus and assigning context menu to the cell's control, we can attach context menu to a cell when the cell is in the edit mode.


 
{% highlight c# %}

//Subscribes to the events.
this.gridGroupingControl1.TableControlCurrentCellControlGotFocus +=new 
Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventHandler(gridGroupingControl1_TableControlCurrentCellControlGotFocus);

this.gridGroupingControl1.TableControlCurrentCellControlLostFocus +=new 
Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventHandler(gridGroupingControl1_TableControlCurrentCellControlLostFocus);

// Attaches a context menu when the cell is in edit mode.
private void gridGroupingControl1_TableControlCurrentCellControlGotFocus(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs e)
{
e.Inner.Control.ContextMenu = this.contextMenu1;
}

//Resets the context menu when the cell losses focus.
private void gridGroupingControl1_TableControlCurrentCellControlLostFocus(object sender, Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs e)
{
e.Inner.Control.ContextMenu = null;
}
{% endhighlight  %}

{% highlight vb %}

'Attaches a context menu when the cell is in edit mode.
Private Sub gridGroupingControl1_TableControlCurrentCellControlGotFocus(ByVal sender As Object, ByVal e As 
Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs) Handles gridGroupingControl1.TableControlCurrentCellControlGotFocus
    If e.TableControl.CurrentCell.RowIndex = 7 AndAlso e.TableControl.CurrentCell.ColIndex = 2 Then
        e.Inner.Control.ContextMenu = Me.contextMenu1
    End If
End Sub

'Resets the context menu when the cell losses focus.
Private Sub gridGroupingControl1_TableControlCurrentCellControlLostFocus(ByVal sender As Object, ByVal e As 
Syncfusion.Windows.Forms.Grid.Grouping.GridTableControlControlEventArgs) Handles gridGroupingControl1.TableControlCurrentCellControlLostFocus
    e.Inner.Control.ContextMenu = Nothing
End Sub
{% endhighlight  %}