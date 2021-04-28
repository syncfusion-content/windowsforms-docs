---
layout: post
title: Event Handling in Windows Forms xptoolbar control | Syncfusion
description: Learn about Event Handling support in Syncfusion Windows Forms MonthCalendarAdv(Classic) control and more details.
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# Event Handling in Windows Forms MonthCalendarAdv(Classic)

MonthCalendarAdv triggers events whenever the date is selected and changed. The most widely used events are discussed as follows.

* [Border3DStyleChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [BorderColorChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [BorderSidesChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [BorderStyleChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [DateCellQueryInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [DateChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [FirstDayOfWeekChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [NoneButtonClick](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [ShowWeekNumbersChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [StretchScrollImageChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [ThemedBorderChanged](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)
* [DateHover](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html)

## DateCellQueryInfo event

The [DateCellQueryInfo](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html) event is handled to provide custom formatting for calendar cells.

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

### Example

You can use this style parameter to set tooltips for MonthCalendarAdv control as follows. This example uses IsCurrentCell, IsOutsideRange, ColIndex and Handled members.

{% tabs %}

{% highlight C# %}


private void monthCalendarAdv1_DateCellQueryInfo(object sender,DateCellQueryInfoEventArgs e)

{

     //To disable the highlight color of the selected date value

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


{% endhighlight %}

{% highlight VB %}




Private Sub monthCalendarAdv1_DateCellQueryInfo(ByVal sender As Object, ByVal e AsDateCellQueryInfoEventArgs)



    If Me.monthCalendarAdv1.Value.Date = DateTime.Today Then

        'To disable the highlight color of the selected date value

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

{% endhighlight %}

{% endtabs %}

N> *  In Fig 1, 18th is identified as the current cell and the tooltip is displayed. Also the background of the current cell is painted with LightSteelBlue.*  Edges of the 4th column cells (ColIndex=4), other than the current cell are set to "Raised" and hence shows a raised appearance. *  In Fig 2, user tries to query the cells outside the range, i.e inactive month dates and the respective tooltip is displayed.

![DateCellQueryInfo event](CalendarDateTime_images/Overview_img174.jpeg)





![DateCellQueryInfo event](CalendarDateTime_images/Overview_img175.jpeg)


## DateHover event

The [DateHover](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html) event is handled when mouse hover on the calendar cells and to assign SuperToolTip for calender cells.



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
Cancel</td><td>
Gets or sets a value indicating whether the event should be canceled.</td></tr>
<tr>
<td>
CellButton</td><td>
Gets the cell button that is the target of the current mouse operation or NULL when the cell itself is the target.</td></tr>
<tr>
<td>
ToolTip</td><td>
Gets or sets the TooltipInfo for the SuperToolTip.</td></tr>
<tr>
<td>
ToolTipStyle</td><td>
Gets or sets the ToolTipStyle of the SuperToolTip.</td></tr>
<tr>
<td>
Model</td><td>
Gets the Calendar model.</td></tr>
</table>

{% tabs %}

{% highlight C# %}



//This event triggers once mouse hover on date

this.monthCalendarAdv1.DateHover += new Syncfusion.Windows.Forms.Tools.DateHoverEventHandler(monthCalendarAdv1_DateHover);



void monthCalendarAdv1_DateHover(object sender, Syncfusion.Windows.Forms.Tools.DateHoverEventArgs e)

{

    e.ToolTip.Body.Text = e.DateValue.ToString();

    e.ToolTipStyle = Syncfusion.Windows.Forms.Tools.ToolTipStyle.Ballon;

}

{% endhighlight %}

{% highlight VB %}







AddHandler monthCalendarAdv1.DateHover, AddressOf monthCalendarAdv1_DateHover



'This event triggers once mouse hover on date

Private Sub monthCalendarAdv1_DateHover(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.DateHoverEventArgs)

e.ToolTip.Body.Text = e.DateValue.ToString()

e.ToolTipStyle = Syncfusion.Windows.Forms.Tools.ToolTipStyle.Ballon

End Sub

{% endhighlight %}

{% endtabs %}

The following screenshot illustrates the SuperToolTip when mouse hover on the respective date value by using [DateHover](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html) event.

![DateHover event](CalendarDateTime_images/Overview_img176.png)
