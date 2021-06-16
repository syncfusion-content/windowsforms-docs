---
layout: post
title: Synchronize the Selection in Windows Forms GridControl | Syncfusion
description: How to synchronize the selection of multiple grids in Syncfusion Windows Forms Grid Control, and more.
platform: windowsforms
control: Grid
documentation: ug
---

# How to synchronize the selection of multiple Grids

This can be achieved by using SelectionChanged Event. In this event, the selection range of the source grids can be copied into the target grid in order to have synchronization between grids. The TopRowChanged event and the LeftColChanged event can be used to synchronize the top row index and the left column index changes, when the grid is scrolled. Refer to the sample for more details. Here is the code snippet, which explains how selection change in one grid affects the other grid.

{% tabs  %}
{% highlight c# %}

void gridControl1_SelectionChanged(object sender, GridSelectionChangedEventArgs e)
{
     Synchronize_SelectionChanged(gridControl2, gridControl1, e);
}

void gridControl2_SelectionChanged(object sender, GridSelectionChangedEventArgs e)
{
     Synchronize_SelectionChanged(gridControl1, gridControl2, e);
}

void Synchronize_SelectionChanged(GridControl targetGrid, GridControl sourceGrid, GridSelectionChangedEventArgs e)
{
     int sourceCount = sourceGrid.Selections.Ranges.Count;
     int targetCount = targetGrid.Selections.Ranges.Count;
     int maxCount = Math.Max(sourceCount, targetCount);

	//Invalidates any range that was changed.
    for (int n = 0; n < maxCount; n++)
	{
        GridRangeInfo newRange = n < sourceCount ? sourceGrid.Selections.Ranges[n] : GridRangeInfo.Empty;
        GridRangeInfo oldRange = n < targetCount ? targetGrid.Selections.Ranges[n] : GridRangeInfo.Empty;
        if (!oldRange.Equals(newRange))
        {
            Console.WriteLine("{0} - {1}", oldRange, newRange);
            targetGrid.InvalidateRange(oldRange);
            targetGrid.InvalidateRange(newRange);
        }
    }

//Updates underlying data structure - does not cause invalidate / paint ...
targetGrid.Selections.Ranges.Clear();
GridRangeInfo[] ranges = new GridRangeInfo[sourceCount];
sourceGrid.Selections.Ranges.CopyTo(ranges, 0);
targetGrid.Selections.Ranges.AddRange(ranges);
}

{% endhighlight  %}
{% highlight vb %}

Sub gridControl1_SelectionChanged(ByVal sender As Object, ByVal e As GridSelectionChangedEventArgs)
	Synchronize_SelectionChanged(gridControl2, gridControl1, e)
End Sub 'gridControl1_SelectionChanged

Sub gridControl2_SelectionChanged(ByVal sender As Object, ByVal e As GridSelectionChangedEventArgs)
	Synchronize_SelectionChanged(gridControl1, gridControl2, e)
End Sub 'gridControl2_SelectionChanged

Sub Synchronize_SelectionChanged(ByVal targetGrid As GridControl, ByVal sourceGrid As GridControl, ByVal e As GridSelectionChangedEventArgs)
	Dim sourceCount As Integer = sourceGrid.Selections.Ranges.Count
	Dim targetCount As Integer = targetGrid.Selections.Ranges.Count
	Dim maxCount As Integer = Math.Max(sourceCount, targetCount)
 
 	'Invalidates any range that was changed.
	Dim n As Integer
	For n = 0 To maxCount - 1
	Dim newRange As GridRangeInfo
	Dim oldRange As GridRangeInfo
	If (n < sourceCount) Then
	newRange = sourceGrid.Selections.Ranges(n)
	Else
	newRange = GridRangeInfo.Empty
	End If
	If (n < targetCount) Then
	oldRange = targetGrid.Selections.Ranges(n)
	Else
	oldRange = GridRangeInfo.Empty
	End If
	If Not oldRange.Equals(newRange) Then
	Console.WriteLine("{0} - {1}", oldRange, newRange)
	targetGrid.InvalidateRange(oldRange)
	targetGrid.InvalidateRange(newRange)
	End If
	Next n

'Updates underlying data structure - does not cause invalidate / paint ...
targetGrid.Selections.Ranges.Clear()
Dim ranges(sourceCount) As GridRangeInfo
sourceGrid.Selections.Ranges.CopyTo(ranges, 0)
targetGrid.Selections.Ranges.AddRange(ranges)
End Sub 'Synchronize_SelectionChanged

{% endhighlight  %}
{% endtabs  %}