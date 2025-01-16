---
layout: post
title: ScheduleControl in Windows Forms Scheduler control | Syncfusion
description: Learn about ScheduleControl support in Syncfusion® Windows Forms Scheduler (Schedule) control and more details.
platform: windowsforms
control: Schedule
documentation: ug
---

# ScheduleControl in Windows Forms Scheduler (Schedule)

It is a User Control that provides the basic scheduling functionality.

### Properties

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
Appearance</td><td>
Gets or sets the ScheduleAppearance object that controls the visual aspects of the ScheduleControl.</td></tr>
<tr>
<td>
Calendar</td><td>
Gets the navigation calendar.</td></tr>
<tr>
<td>
CaptionPanel</td><td>
Gets the caption panel that holds the caption above the calendar.</td></tr>
<tr>
<td>
DataSource</td><td>
Gets or sets the data source for the ScheduleControl.</td></tr>
<tr>
<td>
EnableAlerts</td><td>
Indicates whether alerts should be raised as the appointment time approaches or not.</td></tr>
<tr>
<td>
NavigationPanel</td><td>
Gets the navigation panel.</td></tr>
<tr>
<td>
ScheduleType</td><td>
Gets or sets whether a daily, weekly or monthly schedule is displayed or not.</td></tr>
</table>

### Methods

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
AddControlToNavigationPanel</td><td>
Adds the specified control to the navigation panel underneath the navigation calendar.</td></tr>
<tr>
<td>
AddSpanAppointment</td><td>
Adds a multi day span appointment to a data provider.</td></tr>
<tr>
<td>
PerformNewItemClick</td><td>
Displays a dialog box allowing you to add an item.</td></tr>
<tr>
<td>
PerformDeleteItemClick</td><td>
Displays a dialog box allowing you to delete an item.</td></tr>
<tr>
<td>
PerformEditItemClick</td><td>
Displays a dialog box allowing you to edit an item.</td></tr>
<tr>
<td>
PerformSwitchToScheduleViewTypeClick</td><td>
Switches the display to the specified ScheduleView type.</td></tr>
</table>

### Events

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
ItemChanged</td><td>
Notifies when an appointment is modified.</td></tr>
<tr>
<td>
ScheduleAppointmentClick</td><td>
Occurs when an item is clicked or double-clicked.</td></tr>
<tr>
<td>
ScheduleGridCreated</td><td>
Lets you either use a derived ScheduleGridControl or subscribe to the events on the ScheduleGridControl.</td></tr>
</table>

## Caption panel

Displays a caption on the top of the ScheduleControl. The two buttons on this panel will navigate the schedule forward and backward.

## Navigation panel

It is a panel where you can place additional controls and make them appear adjacent to the ScheduleControl.

## Navigation calendar

A GridControl-derived object displays multiple calendars lets you select particular dates or data ranges to be displayed in the ScheduleControl.

### Properties

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
CalendarGrid</td><td>
Gets the grid control to display the calendars.</td></tr>
<tr>
<td>
DateValue</td><td>
Gets or sets the date value for the navigation calendar.</td></tr>
<tr>
<td>
SelectedDates</td><td>
Gets the dates selected in the navigation calendar.</td></tr>
<tr>
<td>
ShowWeekNumbers</td><td>
Indicates whether the week numbers should be displayed in the calendars or not.</td></tr>
<tr>
<td>
Today</td><td>
Gets or sets the DateTime value for the current day.</td></tr>
</table>

### Methods

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
FirstDayOfMonth</td><td>
Returns the date of the first day of the month of the passed-in date.</td></tr>
<tr>
<td>
MondayBeforeDate</td><td>
Returns the Monday before the given date.</td></tr>
<tr>
<td>
SundayAfterDate</td><td>
Returns the Sunday after the given date.</td></tr>
</table>

### Event

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<td>
DateValueChanged</td><td>
Occurs when NavigationCalendar.DateValue property is changed.</td></tr>
</table>
