---
layout: post
title: Optional-Events
description: optional events
platform: windowsform
control: Grid
documentation: ug
---

# Optional Events

Optional events can be used to extend the functionality of the basic Read-only virtual grid that you get by handling these three required events. One event lets you save information back into your external datasource while other events let you dynamically specify row heights and column widths. You can also dynamically provide covered cell ranges. 

##SaveCellInfo Event

This event is used to store data back into your data source when it has been changed by the user. Here is a sample handler. 

{% highlight c# %}



void GridSaveCellInfo(object sender, GridSaveCellInfoEventArgs e)

{

    if( e.ColIndex > 0 && e.RowIndex > 0)

    {

//Stores data back to the data source from the grid cell.

        this._extData[e.RowIndex - 1, e.ColIndex - 1] = int.Parse(e.Style.CellValue.ToString());

        e.Handled = true;

    }

}
{% endhighlight %}


{% highlight vbnet %}



Private Sub GridSaveCellInfo(ByVal sender As Object, ByVal e As GridSaveCellInfoEventArgs)

If ((e.ColIndex > 0) AndAlso (e.RowIndex > 0)) Then



'Stores data back to the data source from the grid cell.

Me._extData((e.RowIndex - 1), (e.ColIndex - 1)) = System.Int32.Parse(e.Style.CellValue.ToString())

e.Handled = True

End If

End Sub
{% endhighlight %}

QueryRowHeight

This event is used to return row heights that are in demand. 

{% highlight c# %}



void GridQueryRowHeight(object sender, GridRowColSizeEventArgs e)

{

    if( e.Index % 2 == 0)

    {

//Determines Row Height.

        e.Size = 20;

        e.Handled = true;

    }

}
{% endhighlight %}


{% highlight vbnet %}



Private Sub GridQueryRowHeight(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)

If ((e.Index Mod 2) = 0) Then



'Determines Row Height.

e.Size = 20

e.Handled = True

End If

End Sub
{% endhighlight %}

##QueryColWidth

This event is used to return column widths that are in demand. Here is a sample handler. 



{% highlight c# %}



void GridQueryColWidth(object sender, GridRowColSizeEventArgs e)

{

if( e.Index % 3 == 0)

{

//Assigns Column Width.

e.Size = 40;

e.Handled = true;

}

}
{% endhighlight %}


{% highlight vbnet %}



Private Sub GridQueryColWidth(ByVal sender As Object, ByVal e As GridRowColSizeEventArgs)

If ((e.Index Mod 3) = 0) Then



'Assigns Column Width.

e.Size = 40

e.Handled = True

End If

End Sub
{% endhighlight %}

##QueryCoveredRange

This event is used to provide covered ranges on demand. If you have a pattern of cells covered, then you can use this event to provide the ranges.

{% highlight c# %}



void GridQueryCoveredRange(object sender, GridQueryCoveredRangeEventArgs e) 

{

//Covers odd rows, columns 1 through 3.

    if (e.RowIndex % 2 == 1 && e.ColIndex >= 1 && e.ColIndex <= 3)

    {

        e.Range = GridRangeInfo.Cells(e.RowIndex, 1, e.RowIndex, 3);

        e.Handled = true;

    }

//Covers column 6 with odd-even row pairs.

    if (e.RowIndex > 0 && e.ColIndex == 6)

    {

        int row = (e.RowIndex-1)/2 * 2 + 1;

        int col = e.ColIndex;

        e.Range = GridRangeInfo.Cells(row, col, row+1, col);

        e.Handled = true;

    }

}
{% endhighlight %}


{% highlight vbnet %}



Private Sub GridQueryCoveredRange(ByVal sender As Object, ByVal e As GridQueryCoveredRangeEventArgs)



'Covers odd rows, columns 1 through 3.

If ((((e.RowIndex Mod 2) = 1) AndAlso (e.ColIndex >= 1)) _

AndAlso (e.ColIndex <= 3)) Then

e.Range = GridRangeInfo.Cells(e.RowIndex, 1, e.RowIndex, 3)

e.Handled = True

End If

'Covers column 6 with odd-even row pairs.

If ((e.RowIndex > 0) AndAlso (e.ColIndex = 6)) Then

Dim row As Integer

row = ((((e.RowIndex - 1) / 2) * 2) + 1)

Dim col As Integer

col = e.ColIndex

e.Range = GridRangeInfo.Cells(row, col, (row + 1), col)

e.Handled = True

End If

End Sub
{% endhighlight %}



