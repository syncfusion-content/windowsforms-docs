---
layout: post
title: How can we make the current row Bold | Windows Forms | Syncfusion
description: Learn here all about how can we make the current row bold of Syncfusion Windows Forms GridControl and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How can we make the current row Bold in Windows Forms GridControl

To make the current row bold, use the below code sample.

{% tabs %}
{% highlight c#  %}
//There is no current row at this point, so refresh removes the bold text.
private void gridControl1_CurrentCellDeactivated(object sender, GridCurrentCellDeactivatedEventArgs e)
{
    GridControlBase grid = gridControl1;
    GridCurrentCell cc = gridControl1.CurrentCell;

	//Checks if Deactivate is called stand-alone or called from MoveTo and the row is moving.
    if (!cc.IsInMoveTo || cc.MoveToRowIndex != cc.MoveFromRowIndex)
    {
        grid.RefreshRange(GridRangeInfo.Row(e.RowIndex), GridRangeOptions.MergeAllSpannedCells);
    }
}

//There is a current row at this point, so refresh causes the current row to have bold text.
private void gridControl1_CurrentCellActivated(object sender, System.EventArgs e)
{
    GridControlBase grid = gridControl1;
    GridCurrentCell cc = gridControl1.CurrentCell;

	//Checks if Activate is called stand-alone or called from MoveTo and the row is moving.
    if (!cc.IsInMoveTo || cc.MoveToRowIndex != cc.MoveFromRowIndex
        || !cc.MoveFromActiveState)
    {
        grid.RefreshRange(GridRangeInfo.Row(cc.RowIndex), GridRangeOptions.MergeAllSpannedCells);
    }
}

//Dynamically modifies the style just before it is used in drawing.
private void gridControl1_PrepareViewStyleInfo(object sender, GridPrepareViewStyleInfoEventArgs e)
{
    GridControlBase grid = gridControl1;
    GridCurrentCell cc = gridControl1.CurrentCell;

    if (e.RowIndex > grid.Model.Rows.HeaderCount && e.ColIndex > grid.Model.Cols.HeaderCount 
        && cc.HasCurrentCellAt(e.RowIndex))
    {
        e.Style.Font.Bold = true;
    }
}
{% endhighlight   %}

{% highlight vb  %}
'Adding the handlers...
AddHandler Me.gridControl1.CurrentCellDeactivated, New GridCurrentCellDeactivatedEventHandler(AddressOf gridControl1_CurrentCellDeactivated)
AddHandler Me.gridControl1.PrepareViewStyleInfo, New GridPrepareViewStyleInfoEventHandler(AddressOf gridControl1_PrepareViewStyleInfo)
AddHandler Me.gridControl1.CurrentCellActivated, New EventHandler(AddressOf gridControl1_CurrentCellActivated)

'There is no current row at this point, so refresh removes the bold text.
Private Sub gridControl1_CurrentCellDeactivated(ByVal sender As Object, ByVal e As GridCurrentCellDeactivatedEventArgs)
Dim grid As GridControlBase
grid = gridControl1
Dim cc As GridCurrentCell
cc = gridControl1.CurrentCell

If (Not (cc.IsInMoveTo) _
OrElse (cc.MoveToRowIndex <> cc.MoveFromRowIndex)) Then
grid.RefreshRange(GridRangeInfo.Row(e.RowIndex), GridRangeOptions.MergeAllSpannedCells)
End If
End Sub

'There is a current row at this point, so refresh causes the current row to have bold text.
Private Sub gridControl1_CurrentCellActivated(ByVal sender As Object, ByVal e As EventArgs)
Dim grid As GridControlBase
grid = gridControl1
Dim cc As GridCurrentCell
cc = gridControl1.CurrentCell

If ((Not (cc.IsInMoveTo) _
OrElse (cc.MoveToRowIndex <> cc.MoveFromRowIndex)) _
OrElse Not (cc.MoveFromActiveState)) Then
grid.RefreshRange(GridRangeInfo.Row(cc.RowIndex), GridRangeOptions.MergeAllSpannedCells)
End If
End Sub

'Dynamically modifies the style just before it is used in drawing.
Private Sub gridControl1_PrepareViewStyleInfo(ByVal sender As Object, ByVal e As GridPrepareViewStyleInfoEventArgs)
Dim grid As GridControlBase
grid = gridControl1
Dim cc As GridCurrentCell
cc = gridControl1.CurrentCell

If (((e.RowIndex > grid.Model.Rows.HeaderCount) _
AndAlso (e.ColIndex > grid.Model.Cols.HeaderCount)) _
AndAlso cc.HasCurrentCellAt(e.RowIndex)) Then
e.Style.Font.Bold = True
End If
End Sub
{% endhighlight   %}
{% endtabs %}
