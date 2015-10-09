---
layout: post
title: Customizing-Appearance | WindowsForms | Syncfusion
description: customizing appearance
platform: WindowsForms
control: Schedule
documentation: ug
---

# Customizing Appearance

The appearance of any region of the ScheduleControl can be customized by using the ScheduleControl.Appearance property.

This property gains access to the ScheduleAppearance object which controls the various appearance attributes of different scheduler regions. 

The following table describes the appearance options available in the ScheduleControl.

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
Gets or sets the border color of a clicked item.</td></tr>
<tr>
<td>
DragColor</td><td>
Gets or sets the color of the item that is dragged.</td></tr>
<tr>
<td>
SolidBorderColor</td><td>
Gets or sets the color of the solid lines in the calendar.</td></tr>
<tr>
<th colspan = "2">
Caption</th></tr>
<tr>
<td>
CaptionBackColor</td><td>
Gets or sets the color of the caption area above the calendar.</td></tr>
<tr>
<td>
ShowCaption</td><td>
Specifies whether the caption panel above the calendar is visible.</td></tr>
<tr>
<td>
ShowCaptionButtons</td><td>
Specifies whether the navigation buttons are shown on the caption panel.</td></tr>
<tr>
<th colspan = "2">
DisplayItemFormat</th></tr>
<tr>
<td>
AllDayItemFormat</td><td>
Gets or sets the display format of an allday item.</td></tr>
<tr>
<td>
DateFormat</td><td>
Gets or sets the format string used when formatting any token from DisplayItemFormatStrings that represents a date only value.</td></tr>
<tr>
<td>
DateTimeFormat</td><td>
Gets or sets the format string used when formatting any token from DisplayItemFormatStrings that represents the combined date and time values.</td></tr>
<tr>
<td>
DayItemFormat</td><td>
Gets or sets the display format of a schedule item displayed in a day or workweek view.</td></tr>
<tr>
<td>
FullWeekHeaderFormat</td><td>
Specifies the display format of the header of a day in a week view.</td></tr>
<tr>
<td>
LongHeaderFormat</td><td>
Specifies the display format of the header in a day view.</td></tr>
<tr>
<td>
SpanItemFormatLeftText</td><td>
Specifies the display format of text displayed on the interior left side of a multiday span.</td></tr>
<tr>
<td>
SpanItemFormatMiddleText</td><td>
Specifies the display format of text displayed in the middle of a multiday span.</td></tr>
<tr>
<td>
SpanItemFormatRightText</td><td>
Specifies the display format of text displayed on the interior right side of a multiday span.</td></tr>
<tr>
<td>
SpanItemFormatTerminalLeftText</td><td>
Specifies the display format of text displayed on the open left side of a multiday span.</td></tr>
<tr>
<td>
SpanItemFormatTerminalRightText</td><td>
Specifies the display format of text displayed on the open right side of a multiday span.</td></tr>
<tr>
<td>
TimeFormat</td><td>
Gets or sets the format string used when formatting any token from DisplayItemFormatStrings that represents a time only value.</td></tr>
<tr>
<td>
WeekHeaderFormat</td><td>
Specifies the display format of the header label in a workweek view.</td></tr>
<tr>
<td>
WeekMonthItemFormat</td><td>
Specifies the display format of a schedule item shown in a week or month view.</td></tr>
<tr>
<td>
WorkWeekHeaderFormat</td><td>
Determines the display format of the header of a day in a workweek view.</td></tr>
<tr>
<th colspan = "2">
Header</th></tr>
<tr>
<td>
AllDayBackColor</td><td>
Gets or sets the back color of the allday row in the calendar.</td></tr>
<tr>
<td>
MonthWeekHeaderBackColor</td><td>
Specifies the back color of the header cells in a month or week view.</td></tr>
<tr>
<td>
MonthWeekHeaderForeColor</td><td>
Specifies the fore color of the header cells in a month or week view.</td></tr>
<tr>
<td>
WorkWeekHeaderBackColor</td><td>
Specifies the back color of header cells in a workweek view.</td></tr>
<tr>
<td>
WorkWeekHeaderForeColor</td><td>
Specifies the fore color of header cells in a workweek view.</td></tr>
<tr>
<th colspan = "2">
Navigation Calendar</th></tr>
<tr>
<td>
NavigationCalendarArrowColor</td><td>
Specifies the color of arrows in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarBackColor</td><td>
Specifies the back color of the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarDisabledTextColor</td><td>
Specifies the color of disabled text in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarHeaderColor</td><td>
Gets or sets the color of the header in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarSelectionColor</td><td>
Gets or sets the selection color in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarStartDayOfWeek </td><td>
Specifies the DayOfWeek that is shown in the left-most column of the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarTextColor</td><td>
Specifies the text color of the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarTodayColor</td><td>
Specifies the color of today's text in the navigation calendar.</td></tr>
<tr>
<td>
NavigationCalendarWeekNumberColor</td><td>
Specifies the color of week numbers in the navigation calendar.</td></tr>
<tr>
<th colspan = "2">
Prime Time</th></tr>
<tr>
<td>
NonPrimeTimeCellColor</td><td>
Gets or sets the color of non-prime time cells in the calendar.</td></tr>
<tr>
<td>
PrimeTimeCellColor</td><td>
Gets or sets the color of prime time cells in the calendar.</td></tr>
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
Determines whether the time column is displayed using a 24-hour format.</td></tr>
<tr>
<td>
MarkColumnColor</td><td>
Gets or sets the color of the thick solid line next to the time column in a day view.</td></tr>
<tr>
<td>
ShowTime</td><td>
Indicates whether the time column should appear.</td></tr>
<tr>
<td>
TimeBackColor</td><td>
Specifies the back color of the time column.</td></tr>
<tr>
<td>
TimeBigFontSize</td><td>
Determines the size of larger font used in the time column.</td></tr>
<tr>
<td>
TimeLittleFontSize</td><td>
Determines the size of smaller font used in the time column.</td></tr>
<tr>
<td>
TimeTextColor</td><td>
Specifies the color of text in the time column.</td></tr>
<tr>
<td colspan = "2">
Visual Style</td></tr>
<tr>
<th>
VisualStyle</th><th>
Specifies the visual style for the ScheduleControl.</th></tr>
<tr>
<td>
Miscellaneous</td><td>
</td></tr>
<tr>
<td>
DayMonthCutOff</td><td>
Gets or sets the maximum number of days that can appear side-by-side in a day style calendar.</td></tr>
<tr>
<td>
DivisionsPerHour</td><td>
Gets or sets the number of time divisions that appear in a day, custom or workweek view.</td></tr>
<tr>
<td>
MonthCalendarStartDayOfWeek</td><td>
Gets or sets the DayOfWeek that is shown in the left-most column of the month calendar.</td></tr>
<tr>
<td>
MonthShowFullWeek</td><td>
Specifies whether the month view shows 7 columns or 6 columns with saturday or sunday stacked.</td></tr>
<tr>
<td>
ScheduleAppointmentTipFormat </td><td>
Defines the text that is displayed for schedule item tips.</td></tr>
<tr>
<td>
ScheduleAppointmentTipsEnabled</td><td>
Determines whether to show item tips.</td></tr>
<tr>
<td>
SplitterBackColor</td><td>
Specifies the back color of the two splitters in the ScheduleControl.</td></tr>
<tr>
<td>
TextColor</td><td>
Specifies the color of basic text shown in the calendar.</td></tr>
<tr>
<td>
ThemesEnabled</td><td>
Specifies whether the themes are enabled.</td></tr>
<tr>
<td>
WeekCalendarStartDayOfWeek</td><td>
Specifies the DayOfWeek that is shown in the first column of the week calendar.</td></tr>
</table>