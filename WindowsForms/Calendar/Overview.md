---
layout: post
title: About Windows Forms Calendar control | Syncfusion
description: Learn here all about introduction of Syncfusion Windows Forms Calendar (SfCalendar) control and more details.
platform: WindowsForms
control: SfCalendar
documentation: ug
---

# Windows Forms Calendar (SfCalendar) Overview

The **SfCalendar** is a control that allows you to select a date from calendar, and it provides various customization options for the calendar. This provides multiple views of the month, year, decade, and century, so that dates can be selected easily. The **SfCalendar** supports multiple selection and provides complete customization options to the control.

![Overview of SfCalendar](overview_images/overview.png)

## Key features

**Different views** - Supports month, year, decade, and century views to quickly select a date.

**Date-range support** - Provides maximum and minimum dates support to prevent users from selecting dates within a specified range.

**Globalization and localization** - Supports localizing the first day of a week, localizing static text, and day names based on the culture.

**Special dates** - Supports highlighting special dates with icons and descriptions.

**Blackout dates** - Supports blocking a certain dates from selection and user interaction. Separate styles can be applied to blackout dates.

**Accessibility** - Provides touch, keyboard, and mouse supports to make applications available to a wide variety of users.

**Testing** - Provides QTP add-in that contains custom libraries, which helps [QTP](https://help.syncfusion.com/windowsforms/testing/uft/supported-controls-and-methods#sfcalendar) to recognize SfCalendar.

## Choose between different calendar controls

Syncfusion WinForms suite comes up with following different calendars namely:

* [SfCalendar](https://www.syncfusion.com/products/windows-forms/calendar)
* [MonthCalendarAdv](https://help.syncfusion.com/windowsforms/classic/month-calendar/overview)

### SfCalendar

The [SfCalendar](https://help.syncfusion.com/windowsforms/calendar/overview) control provides multiple views of month, year, decade, and century: the dates will be selected easily. This provides easy date selection using keyboard, mouse, and touch interactions. This also supports selecting multiple date, highlighting special dates, and complete customization options.

### MonthCalendarAdv 

The [MonthCalendarAdv](https://help.syncfusion.com/windowsforms/classic/month-calendar/overview) control allows selecting the date at runtime and various customization options for the calendar. This also supports user interface options such as multiple selection, context menu, globalization, and more.

### SfCalendar vs MonthCalendarAdv

Both SfCalendar and MonthCalendarAdv controls are used for the same purposes. But, the SfCalendar control offers rich set of features over MonthCalendarAdv. When cell customization and easy navigation through year, decade, and century views are needed, use SfCalendar.

You can see some of the specific API differences between SfCalendar and MonthCalendarAdv as follows.

<table>
<tr>
<th>
SfCalendar
</th>
<th>
MonthCalendarAdv
</th>
<th>
Description
</th>
</tr>
<tr>
<td>
SelectedDate
</td>
<td>
Value
</td>
<td>
Indicates the current date of calendar.
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
Specifies the maximum selectable date by the calendar.
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
Specifies the minimum selectable date by the calendar.
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

The following list of features in SfCalendar over MonthCalendarAdv are as follows.

<table>
<tr>
<th>
Feature
</th>
<th>
Description
</th>
</tr>
<tr>
<td>
Special dates
</td>
<td>
Highlights the {{'[special date](https://help.syncfusion.com/windowsforms/sfcalendar/cell-customization#special-dates)'| markdownify }} with icons and descriptions. Customizes the position of icon and text.

</td>
</tr>
<tr>
<td>
Blackout dates
</td>
<td>
Blocks certain dates from selection and user interaction. Applies separate style for {{'[Blackout dates](https://help.syncfusion.com/windowsforms/sfcalendar/selection#disable-selection)'| markdownify }}.

</td>
</tr>
<tr>
<td>
Cell customization
</td>
<td>
Each individual cell appearance in SfCalendar can be {{'[customized](https://help.syncfusion.com/windowsforms/sfcalendar/cell-customization)'| markdownify }} by changing font, background, foreground, and border color.

</td>
</tr>
<tr>
<td>
Appearance customization
</td>
<td>
Customizes each individual cell {{'[appearance](https://help.syncfusion.com/windowsforms/sfcalendar/appearance)'| markdownify }}. Changes the text and appearance of a date cell on-demand.

</td>
</tr>
<tr>
<td>
Navigation
</td>
<td>
SfCalendar provides {{'[navigation](https://help.syncfusion.com/windowsforms/sfcalendar/navigation)'| markdownify }} support for different set of dates and different views through scrolling, clicking or touching the calendar header.

</td>
</tr>
</table>
