---
layout: post
title: DateHover Event
description: datehover event
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# DateHover Event

This event is handled when mouse hover on the calendar cells and to assign SuperToolTip for calender cells.

_Table178: Members Table_

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
Gets or sets a value indicating whether the event should be cancelled.</td></tr>
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


{% highlight c#  %}



//This event triggers once mouse hover on date

this.monthCalendarAdv1.DateHover += new Syncfusion.Windows.Forms.Tools.DateHoverEventHandler(monthCalendarAdv1_DateHover);



void monthCalendarAdv1_DateHover(object sender, Syncfusion.Windows.Forms.Tools.DateHoverEventArgs e)

{

    e.ToolTip.Body.Text = e.DateValue.ToString();

    e.ToolTipStyle = Syncfusion.Windows.Forms.Tools.ToolTipStyle.Ballon;

}

{% endhighlight   %}
{% highlight vbnet  %}







AddHandler monthCalendarAdv1.DateHover, AddressOf monthCalendarAdv1_DateHover



'This event triggers once mouse hover on date

Private Sub monthCalendarAdv1_DateHover(ByVal sender As Object, ByVal e As Syncfusion.Windows.Forms.Tools.DateHoverEventArgs)

e.ToolTip.Body.Text = e.DateValue.ToString()

e.ToolTipStyle = Syncfusion.Windows.Forms.Tools.ToolTipStyle.Ballon

End Sub

{% endhighlight  %}

The following screenshot illustrates the SuperToolTip when mouse hover on the respective date value by using DateHover event.

![](CalendarDateTime_images/Overview_img176.png) 
