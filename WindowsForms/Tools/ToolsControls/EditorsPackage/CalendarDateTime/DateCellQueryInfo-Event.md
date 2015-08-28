---
layout: post
title: DateCellQueryInfo Event
description: datecellqueryinfo event
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# DateCellQueryInfo Event

This event is handled to provide custom formatting for calendar cells. 

_Table177: Members Table_

<table>
<tr>
<th>
 Members</th><th>
Description</th></tr>
<tr>
<td>
ColIndex</td><td>
Specifies the column index of GridCell.</td></tr>
<tr>
<td>
DateValue</td><td>
Specifies the date value.</td></tr>
<tr>
<td>
RowIndex</td><td>
Specifies the row index of GridCell.</td></tr>
<tr>
<td>
Style</td><td>
Specifies GridStyleInfo object.</td></tr>
<tr>
<td>
Handled</td><td>
Indicates whether the event is handled. It is a bool value.</td></tr>
<tr>
<td>
IsCurrentCell</td><td>
Returns the current cell at run time.</td></tr>
<tr>
<td>
IsOutsideRange</td><td>
Specifies whether the query is outside the range of a month.</td></tr>
<tr>
<td>
EnableHighlightColor</td><td>
Gets or sets the the value to indicate the highlight color of the selected date.</td></tr>
</table>

## Example

You can use this style parameter to set tooltips for MonthCalendarAdv control as follows. This example uses IsCurrentCell, IsOutsideRange, ColIndex and Handled members.


{% highlight c#  %}


private void monthCalendarAdv1_DateCellQueryInfo(object sender,DateCellQueryInfoEventArgs e)

{

     //To disbale the highlight color of the selected date value

     if (this.monthCalendarAdv1.Value.Date == DateTime.Today)

     { 

         e.EnableHighlightColor = false;

     }



    //Identifies current cell and sets the tooltip text for the calendar

    if (e.IsCurrentCell)

    {

        e.Style.CellTipText = "Syncfusion calendar control";

        e.Style.CellAppearance = Syncfusion.Windows.Forms.Grid.GridCellAppearance.Flat;

        e.Style.BackColor = Color.LightSteelBlue;

    }



    //Sets Tooltip text for the cells outside range

    else if (e.IsOutsideRange)

        e.Style.CellTipText = "Outside range";

    //Sets Cell Appearance to "Raised" for fourth Column

    else if (e.ColIndex == 4)

        e.Style.CellAppearance = Syncfusion.Windows.Forms.Grid.GridCellAppearance.Raised; 

    else

    //event is stopped

    e.Handled = false;

}


{% endhighlight  %}
{% highlight vbnet  %}




Private Sub monthCalendarAdv1_DateCellQueryInfo(ByVal sender As Object, ByVal e AsDateCellQueryInfoEventArgs)



    If Me.monthCalendarAdv1.Value.Date = DateTime.Today Then

        'To disbale the highlight color of the selected date value

        e.EnableHighlightColor = False

    End If



    'Identifies current cell and sets the tooltip text for the calendar

    If e.IsCurrentCell Then

        e.Style.CellTipText = "Syncfusion calendar control"

        e.Style.CellAppearance = Syncfusion.Windows.Forms.Grid.GridCellAppearance.Flat

        e.Style.BackColor = Color.LightSteelBlue

    'Sets Tooltip text for the cells outside range

    ElseIf e.IsOutsideRange Then

        e.Style.CellTipText = "Outside range"

    'Sets Cell Appearance to "Raised" for fourth Column

    ElseIf e.ColIndex = 4 Then

        e.Style.CellAppearance = Syncfusion.Windows.Forms.Grid.GridCellAppearance.Raised

    Else

        e.Handled = False

        'event is stopped

    End If

End Sub

{% endhighlight  %}

> Note: *  In Fig 1, 18th is identified as the current cell and the tooltip is displayed. Also the background of the current cell is painted with LightSteelBlue.*  Edges of the 4th column cells (ColIndex=4), other than the current cell are set to "Raised" and hence shows a raised appearance. *  In Fig 2, user tries to query the cells outside the range, i.e inactive month dates and the respective tooltip is displayed.

![](CalendarDateTime_images/Overview_img174.jpeg) 





![](CalendarDateTime_images/Overview_img175.jpeg) 



See Also

How to customize the appearance of the diagonal columns?
