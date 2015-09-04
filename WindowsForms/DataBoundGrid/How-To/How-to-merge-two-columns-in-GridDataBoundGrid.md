---
layout: post
title: How-to-merge-two-columns-in-GridDataBoundGrid
description: how to merge two columns in griddataboundgrid
platform: WindowsForms
control: DataBoundGrid
documentation: ug
---

# How to merge two columns in GridDataBoundGrid

You can make use of CoveredRanges property to merge two or more columns in GridDataBoundGrid.



{% highlight c# %}



this.gridDataBoundGrid1.Model.CoveredRanges.Add(GridRangeInfo.Cells(0,3,0,4));



Private void gridDataBoundGrid1_CellClick(object sender, GridCellClickEventArgs e)

{

if (e.RowIndex == 0 && e.ColIndex > 0)

{

GridRangeInfo range;

bool check = this.gridDataBoundGrid1.Model.CoveredRanges.Find(e.RowIndex, e.ColIndex, out range);

if (check)

this.gridDataBoundGrid1.Model.Selections.Add(GridRangeInfo.Cols(range.Left, range.Right));

}

}

//On Mouse down, select both the columns to be merged.

Private void gridDataBoundGrid1_MouseDown(object sender, MouseEventArgs e)

{

int row, col;

this.gridDataBoundGrid1.PointToRowCol(new Point(e.X, e.Y), out row, out col);

if (row == 0 && col > 0)

{

GridRangeInfo range;

bool check = this.gridDataBoundGrid1.Model.CoveredRanges.Find(row, col, out range);

if (check)

this.gridDataBoundGrid1.Model.Selections.Add(GridRangeInfo.Cols(range.Left, range.Right));

}

}

{% endhighlight %}

{% highlight vbnet %}



Me.gridDataBoundGrid1.Model.CoveredRanges.Add(GridRangeInfo.Cells(0,3,0,4));



Private Sub GridDataBoundGrid1_CellClick(ByVal sender As System.Object, ByVal e As Syncfusion.Windows.Forms.Grid.GridCellClickEventArgs) Handles GridDataBoundGrid1.CellClick

If e.RowIndex = 0 AndAlso e.ColIndex > 0 Then

Dim range As GridRangeInfo

Dim check As Boolean = Me.gridDataBoundGrid1.Model.CoveredRanges.Find(e.RowIndex, e.ColIndex, range)

If check Then

Me.gridDataBoundGrid1.Model.Selections.Add(GridRangeInfo.Cols(range.Left, range.Right))

End If

End If

'On Mouse down, select both the columns to be merged.

Private Sub GridDataBoundGrid1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles GridDataBoundGrid1.MouseDown

Dim row, col As Integer

Me.gridDataBoundGrid1.PointToRowCol(New Point(e.X, e.Y), row, col)

If row = 0 AndAlso col > 0 Then

Dim range As GridRangeInfo

Dim check As Boolean = Me.gridDataBoundGrid1.Model.CoveredRanges.Find(row, col, range)

If check Then

Me.gridDataBoundGrid1.Model.Selections.Add(GridRangeInfo.Cols(range.Left, range.Right))

End If

End If


{% endhighlight %}
