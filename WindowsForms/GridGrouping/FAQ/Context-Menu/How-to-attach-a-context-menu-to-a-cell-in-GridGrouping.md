---
layout: post
title: Attach ContextMenu in Windows Forms GridGroupingControl | Syncfusion®
description: Attach a ContextMenu in Syncfusion® Windows Forms GridGroupingControl, its cells, focus events, editing behavior, and more.
platform: windowsforms
control: GridGroupingControl
documentation: ug
---

# How to Attach a ContextMenu in Windows Forms GridGroupingControl

By handling TableControlCurrentCellControlGotFocus and assigning context menu to the cell's control, we can attach context menu to a cell when the cell is in the edit mode.

{% tabs %}
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
{% endhighlight %}

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

{% endhighlight %}
{% endtabs %}
