---
layout: post
title: Context-Menu
description: context menu
platform: windowsform
control: GridGroupingControl
documentation: ug
---

## Context Menu

#### How to attach a context menu to a cell in GridGrouping control

By handling TableControlCurrentCellControlGotFocus and assigning context menu to the cell's control, we can attach context menu to a cell when the cell is in the edit mode.

[C#]



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



[VB]



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

#### How to attach a context menu to the GridGrouping control

This can be done using the code snippet below.



[C#]



//Adds items to context menu.

this.contextMenu1.MenuItems.Add("One");

this.contextMenu1.MenuItems.Add("Two");

this.contextMenu1.MenuItems.Add("Three");



//Assigns it to the GridGroupingControl.

this.gridGroupingControl1.ContextMenu = this.contextMenu1;







[VB]



'Adds items to context menu.

Me.contextMenu1.MenuItems.Add("One")

Me.contextMenu1.MenuItems.Add("Two")

Me.contextMenu1.MenuItems.Add("Three")



'Assigns it to the GridGroupingControl.

Me.gridGroupingControl1.ContextMenu = Me.contextMenu1



