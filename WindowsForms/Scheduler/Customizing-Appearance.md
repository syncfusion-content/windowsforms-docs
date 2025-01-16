---
layout: post
title: Customizing Appearance in Windows Forms Scheduler control | Syncfusion
description: Learn about Customizing Appearance support in Syncfusion® Windows Forms Scheduler (Event Calendar) control and more details.
platform: windowsforms
control: Schedule
documentation: ug
---

# Customizing Appearance in Windows Forms Scheduler (Event Calendar)

Appearance of any region of the ScheduleControl can be customized by using the [WinForms Scheduler](https://www.syncfusion.com/winforms-ui-controls/scheduler). Appearance property.

This property gains access to the ScheduleAppearance object that controls various appearance attributes of different WinForms Scheduler regions. 

The following table describes the appearance options available in the customized WinForms Scheduler control.

<table>
<tr>
<th>
Name</th><th>
Description</th></tr>
<tr>
<th colspan = "2">
Border</th></tr>
<tr>
<td>
ClickItemBorderColor</td><td>
Gets or sets border color of a clicked item.</td></tr>
<tr>
<td>
DragColor</td><td>
Gets or sets color of the dragged item.</td></tr>
<tr>
<td>
SolidBorderColor</td><td>
Gets or sets color of the solid lines in the calendar.</td></tr>
<tr>
<th colspan = "2">
Caption</th></tr>
<tr>
<td>
CaptionBackColor</td><td>
Gets or sets color of the caption area above the calendar.</td></tr>
<tr>
<td>
ShowCaption</td><td>
Specifies whether the caption panel above the calendar is visible or not.</td></tr>
<tr>
<td>
ShowCaptionButtons</td><td>
Specifies whether the navigation buttons are shown on the caption panel or not.</td></tr>
<tr>
<th colspan = "2">
DisplayItemFormat</th></tr>
<tr>
<td>
AllDayItemFormat</td><td>
Gets or sets the display format of an all-day item.</td></tr>
<tr>
<td>
DateFormat</td><td>
Gets or sets format string used when formatting any token from DisplayItemFormatStrings that represents a date only value.</td></tr>
<tr>
<td>
DateTimeFormat</td><td>
Gets or sets format string used when formatting any token from DisplayItemFormatStrings that represents combined date and time values.</td></tr>
<tr>
<td>
DayItemFormat</td><td>
Gets or sets display format of a schedule item displayed in a day or workweek view.</td></tr>
<tr>
<td>
FullWeekHeaderFormat</td><td>
Specifies display format of the header of a day in week view.</td></tr>
<tr>
<td>
LongHeaderFormat</td><td>
Specifies display format of the header in a day view.</td></tr>
<tr>
<td>
SpanItemFormatLeftText</td><td>
Specifies display format of text displayed on the interior left side of a multi day span.</td></tr>
<tr>
<td>
SpanItemFormatMiddleText</td><td>
Specifies display format of the text displayed in the middle of a multi day span.</td></tr>
<tr>
<td>
SpanItemFormatRightText</td><td>
Specifies display format of the text displayed on the interior right side of a multi day span.</td></tr>
<tr>
<td>
SpanItemFormatTerminalLeftText</td><td>
Specifies display format of the text displayed on the open left side of a multi day span.</td></tr>
<tr>
<td>
SpanItemFormatTerminalRightText</td><td>
Specifies display format of text displayed on the open right side of a multi day span.</td></tr>
<tr>
<td>
TimeFormat</td><td>
Gets or sets format string used when formatting any token from DisplayItemFormatStrings that represents a time only value.</td></tr>
<tr>
<td>
WeekHeaderFormat</td><td>
Specifies display format of the header label in a workweek view.</td></tr>
<tr>
<td>
WeekMonthItemFormat</td><td>
Specifies display format of a schedule item shown in a week or month view.</td></tr>
<tr>
<td>
WorkWeekHeaderFormat</td><td>
Determines display format of the header of a day in a workweek view.</td></tr>
<tr>
<th colspan = "2">
Header</th></tr>
<tr>
<td>
AllDayBackColor</td><td>
Gets or sets back color of the all day row in the calendar.</td></tr>
<tr>
<td>
MonthWeekHeaderBackColor</td><td>
Specifies back color of the header cells in a month or week view.</td></tr>
<tr>
<td>
MonthWeekHeaderForeColor</td><td>
Specifies fore color of the header cells in a month or week view.</td></tr>
<tr>
<td>
WorkWeekHeaderBackColor</td><td>
Specifies back color of header cells in a workweek view.</td></tr>
<tr>
<td>
WorkWeekHeaderForeColor</td><td>
Specifies fore color of header cells in a workweek view.</td></tr>
<tr>
<th colspan = "2">
Navigation Calendar</th></tr>
<tr>
<td>
NavigationCalendarArrowColor</td><td>
Specifies color of arrows in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarBackColor</td><td>
Specifies back color of the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarDisabledTextColor</td><td>
Specifies color of disabled text in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarHeaderColor</td><td>
Gets or sets color of the header in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarSelectionColor</td><td>
Gets or sets selection color in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarStartDayOfWeek </td><td>
Specifies the DayOfWeek shown in the left-most column of the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarTextColor</td><td>
Specifies text color of the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarTodayColor</td><td>
Specifies color of today's text in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarWeekNumberColor</td><td>
Specifies color of week numbers in the navigation calendar.</td></tr>
<tr>
<th colspan = "2">
Prime time</th></tr>
<tr>
<td>
NonPrimeTimeCellColor</td><td>
Gets or sets color of non-prime time cells in the calendar.</td></tr>
<tr>
<td>
PrimeTimeCellColor</td><td>
Gets or sets color of prime time cells in the calendar.</td></tr>
<tr>
<td>
PrimeTimeEnd</td><td>
Specifies the time when the prime time color stops being used in the display.</td></tr>
<tr>
<td>
PrimeTimeStart</td><td>
Specifies the time when the prime time color starts being used in the display.</td></tr>
<tr>
<th colspan = "2">
Time Column</th></tr>
<tr>
<td>
Hours24</td><td>
Determines whether the time column is displayed using a 24-hour format or not.</td></tr>
<tr>
<td>
MarkColumnColor</td><td>
Gets or sets the color of the thick solid line next to the time column in a day view.</td></tr>
<tr>
<td>
ShowTime</td><td>
Indicates whether the time column should appear or not.</td></tr>
<tr>
<td>
TimeBackColor</td><td>
Specifies the back color of the time column or not.</td></tr>
<tr>
<td>
TimeBigFontSize</td><td>
Determines size of the larger font used in the time column.</td></tr>
<tr>
<td>
TimeLittleFontSize</td><td>
Determines size of the smaller font used in the time column.</td></tr>
<tr>
<td>
TimeTextColor</td><td>
Specifies color of the text in the time column.</td></tr>
<tr>
<td colspan = "2">
Visual Style</td></tr>
<tr>
<th>
VisualStyle</th><th>
Specifies visual style for the ScheduleControl.</th></tr>
<tr>
<td>
Miscellaneous</td><td>
</td></tr>
<tr>
<td>
DayMonthCutOff</td><td>
Gets or sets maximum number of days appear side-by-side in a day style calendar.</td></tr>
<tr>
<td>
DivisionsPerHour</td><td>
Gets or sets number of time divisions appear in a day, custom, or workweek view.</td></tr>
<tr>
<td>
MonthCalendarStartDayOfWeek</td><td>
Gets or sets the DayOfWeek shown in the left-most column of the month calendar.</td></tr>
<tr>
<td>
MonthShowFullWeek</td><td>
Specifies whether the month view shows 7 columns or 6 columns with Saturday or Sunday stacked or not.</td></tr>
<tr>
<td>
ScheduleAppointmentTipFormat </td><td>
Defines the text displayed for schedule item tips.</td></tr>
<tr>
<td>
ScheduleAppointmentTipsEnabled</td><td>
Determines whether to show item tips or not.</td></tr>
<tr>
<td>
SplitterBackColor</td><td>
Specifies back color of the two splitters in the the ScheduleControl.</td></tr>
<tr>
<td>
TextColor</td><td>
Specifies color of basic text shown in the calendar.</td></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether the themes are enabled or not.</td></tr>
<tr>
<td>
WeekCalendarStartDayOfWeek</td><td>
Specifies the DayOfWeek shown in the first column of the week calendar.</td></tr>
</table>
