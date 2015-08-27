---
layout: post
title: Required-Events
description: required events
platform: windowsform
control: Grid
documentation: ug
---

# Required Events

These are the three events that you should handle in order to implement a virtual grid. They provide the basic information about the number of rows, columns, and the values for your data. 

##QueryRowCount Event

This event is used to return the row count on demand. Here is a sample handler. 

{% highlight c# %}



private void GridQueryRowCount(object sender, GridRowColCountEventArgs e)

{

//Determines number of rows.

    e.Count = this.numArrayRows;

    e.Handled = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub GridQueryRowCount(ByVal sender As Object, ByVal e As GridRowColCountEventArgs)



'Determines number of rows.

e.Count = Me.numArrayRows

e.Handled = True

End Sub

QueryColCount Event

{% endhighlight %}

QueryColCount event is used to return column count on demand. Note that when you handle the event by assigning e.Count, you are setting the e.Handled property to true. 

{% highlight c# %}



private void GridQueryColCount(object sender, GridRowColCountEventArgs e)

{

//Determines the number of columns.

    e.Count = this.numArrayCols;

    e.Handled = true;

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub GridQueryColCount(ByVal sender As Object, ByVal e As GridRowColCountEventArgs)



'Determines the number of columns.

e.Count = Me.numArrayCols

e.Handled = True

End Sub
{% endhighlight %}

##QueryCellInfo Event

QueryCellInfo is the workhorse event. It is used to provide GridStyleInfo object for a given cell. In your handler for this event, you would normally set CellValue for GridStyleInfo object passed in with event arguments. But, you can also set other members of this GridStyleInfo object. For example, you can set BackColor to change the cell background. All of this is done on a demand basis. BackColor value is not stored in any grid storage. There is another event, PrepareViewStyleInfo that you can handle to make transient adjustment to a style just before it is displayed. This event is discussed in more detail later in this section. 

GridQueryCellInfoEventArgs members, e.ColIndex and e.RowIndex, specify the column and row of the requested style. The e.Style member holds GridStyleInfo object whose value this event should set provided it is a cell that you want to populate. It is possible that e.ColIndex and / or e.RowIndex may have the value of -1. A -1 indicating that rowstyle or columnstyle is being requested. So, e.ColIndex = -1 and e.RowIndex = 4 indicates that the rowstyle for row 4 is being requested (GridControl.RowStyles[4]). Similarly, positive column value with row value = -1 would be a request for that particular columnstyle. If both values are -1, then TableStyle property is being requested. 

One last comment before we look at the code. Header rows and columns in an Essential Grid are treated the same as other rows and columns with respect to QueryCellInfo. If you have a single header row, then anytime e.ColIndex is 0, a row header is being requested. Similarly, if you have a single column header row, e.RowIndex = 0 is a request for the column header.

{% highlight c# %}



private void GridQueryCellInfo(object sender, GridQueryCellInfoEventArgs e)

{

    if(e.ColIndex > 0 && e.RowIndex > 0)

    {

//By using indexers, pass value to a cell from a given data source.

        e.Style.CellValue = this.intArray[e.RowIndex - 1, e.ColIndex - 1];

        e.Handled = true;

    }

}

{% endhighlight %}

{% highlight vbnet %}



Private Sub GridQueryCellInfo(ByVal sender As Object, ByVal e As GridQueryCellInfoEventArgs)

If ((e.ColIndex > 0) AndAlso (e.RowIndex > 0)) Then



'By using indexers indexers, pass value to a cell from a given data source.

e.Style.CellValue = Me.intArray(e.RowIndex - 1, e.ColIndex - 1)

e.Handled = True

End If

End Sub
{% endhighlight %}



