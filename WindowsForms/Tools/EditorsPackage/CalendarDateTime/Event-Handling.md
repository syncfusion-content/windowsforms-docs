---
layout: post
title: Event Handling
description: event handling
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Event Handling

MonthCalendarAdv triggers events whenever the date is selected and changed. The most widely used events are discussed as follows.

_Table176: Events Table_

<table>
<tr>
<th>
 MonthCalendarAdv Events</th><th>
Description</th></tr>
<tr>
<td>
Border3DStyleChanged</td><td>
Event is raised when Border3DStyle property is changed.</td></tr>
<tr>
<td>
BorderColorChanged</td><td>
Event is raised when BorderColor property is changed.</td></tr>
<tr>
<td>
BorderSidesChanged</td><td>
Event is raised when BorderSides property is changed.</td></tr>
<tr>
<td>
BorderStyleChanged</td><td>
Event is raised when BorderStyle property is changed.</td></tr>
<tr>
<td>
DateCellQueryInfo</td><td>
It can be handled to provide custom formatting for calendar cells. The event handler receives an argument of type DateCellQueryInfoEventArgs. The following are the event properties associated with DateCellQueryInfoEventArgs argument.</td></tr>
<tr>
<td>
DateSelected</td><td>
It occurs when a date is selected from the calendar. It can be handled to retrieve the selected date of the MonthCalendarAdv. The event handler receives an argument of type EventArgs.</td></tr>
<tr>
<td>
DateChanged</td><td>
Handled when a selected date is changed.</td></tr>
<tr>
<td>
FirstDayOfWeekChanged</td><td>
Handled when the first day of the week is changed by using FirstDayOfWeek property.</td></tr>
<tr>
<td>
NoneButtonClick </td><td>
Handled when the None button is clicked.</td></tr>
<tr>
<td>
ShowWeekNumbersChanged</td><td>
Handled when ShowWeekNumbers property is changed. You can customize the appearance of the week numbers within this handler.</td></tr>
<tr>
<td>
StretchScrollImageChanged</td><td>
Handled when StretchScrollImage property is changed.</td></tr>
<tr>
<td>
ThemedBorderChanged</td><td>
Handles when ThemedBorder property is changed.</td></tr>
<tr>
<td>
DateHover</td><td>
This event is triggered when mouse hover on the date and to assign SuperToolTip for calender cells.</td></tr>
</table>
