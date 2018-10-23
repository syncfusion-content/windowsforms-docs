---
layout: post
title: Overview of SfCalendar control | Windows Forms | Syncfusion
description: SfCalendar control allows user to select a date from the calendar and also provide various customization options.
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Overview

The `SfCalendar` is a control that allows you to select a date from the calendar and various customization options for the calendar. This provides multiple views of the month, year, decade, and century, so that dates can be selected easily. The `SfCalendar` supports multiple selection and complete customization option for the control.

## Key features

* **Different views**: Supports for month, year, decade, and century views to quickly select dates.

* **Date-range support**: Provides maximum and minimum date support to prevent users from selecting dates within a specified range.

* **Globalization and localization**: Supports for localized first day of the week, localized static text, and day names based on the culture.

* **Special dates**: Supports for highlighting special dates with icons and descriptions.

* **Blackout dates**: Supports for blocking certain dates from selection and user interaction. Separate styles can be applied to blackout dates. 

* **Accessibility**: Touch, keyboard, and mouse support to make applications available to a wide variety of users.

* **Testing**: Provides QTP add-in that contains custom libraries, which helps [QTP](https://help.syncfusion.com/windowsforms/testing/uft/supported-controls-and-methods#sfcalendar) to recognize SfCalendar.


## Choose between different calendar controls

Syncfusion WF suite comes up with following different calendar’s namely,

* [SfCalendar](https://www.syncfusion.com/products/windows-forms/calendar)
* [MonthCalendarAdv](https://help.syncfusion.com/windowsforms/monthcalendaradv/overview)

### SfCalendar

[SfCalendar](https://help.syncfusion.com/windowsforms/sfcalendar/overview) control provides multiple views of month, year, decade and century that dates can be selected easily. The SfCalendar control provides easy date selection by using keyboard, mouse and touch interaction. It also supports for multiple date selection and highlighting special dates and complete customization option.

### MonthCalendarAdv 

[MonthCalendarAdv](https://help.syncfusion.com/windowsforms/monthcalendaradv/overview) is a control that allows selecting the date at runtime and various customization option for the calendar. It also supports the user interface options such as multiple selection, context menu, globalization and more.

### SfCalendar vs MonthCalendarAdv

Both SfCalendar and MonthCalendarAdv controls used for same purpose. But SfCalendar control offers rich set of features over MonthCalendarAdv. When you want customize the cell and easy navigation through year, decade, century view, you can use SfCalendar.

You can see the list of some of the specific API difference between SfCalendar and MonthCalendarAdv as follows:
<table>
<tr>
<td>
{{'**SfCalendar**'| markdownify }}
</td>
<td>
{{'**MonthCalendarAdv**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
SelectedDate
</td>
<td>
Value
</td>
<td>
To indicates the current date of calendar.
</td>
</tr>
<tr>
<td>
MaxDate
</td>
<td>
MaxValue
</td>
<td>
To specifies the maximum date selectable by the calendar.
</td>
</tr>
<tr>
<td>
MinDate
</td>
<td>
MinValue
</td>
<td>
To specifies the minimum date selectable by the calendar.
</td>
</tr>
<tr>
<td>
ShowHorizontalSplitter,
ShowVerticalSplitter
</td>
<td>
GridLines
</td>
<td>
To change the border style of calendar.
</td>
</tr>
<tr>
<td>
DrawCell
</td>
<td>
DateCellQueryInfo
</td>
<td>
To highlight or customize dates to mention the special date on-demand.
</td>
</tr>
</table>
Below are the list of features in SfCalendar over MonthCalendarAdv as follows,
<table>
<tr>
<td>
{{'**Feature**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
Special dates
</td>
<td>
SfCalendar provides supports to highlight the {{'[special date](https://help.syncfusion.com/windowsforms/sfcalendar/cell-customization#special-dates)'| markdownify }} with icons and descriptions. It also supports to customize the position of icon and text.

</td>
</tr>
<tr>
<td>
Blackout dates
</td>
<td>
SfCalendar provides support to block the certain dates from selection and user interaction. It also provides support to apply separate style for {{'[Blackout dates](https://help.syncfusion.com/windowsforms/sfcalendar/selection#disable-selection)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Cell customization
</td>
<td>
Each individual cell appearance in SfCalendar can be {{'[customized](https://help.syncfusion.com/windowsforms/sfcalendar/cell-customization)'| markdownify }} by changing the font, background, foreground, and border color.

</td>
</tr>
<tr>
<td>
Appearance customization
</td>
<td>
SfCalendar provides support to customize each individual cell {{'[appearance](https://help.syncfusion.com/windowsforms/sfcalendar/appearance)'| markdownify }}. It also allows to change the text and appearance of a date cell on demand.

</td>
</tr>
<tr>
<td>
Navigation
</td>
<td>
SfCalendar provides {{'[navigation](https://help.syncfusion.com/windowsforms/sfcalendar/navigation)'| markdownify }} support to different set of dates and different views through scrolling, clicking or touching the calendar header.

</td>
</tr>
</table>
