---
layout: post
title: Overview of Windows Forms DateTimePicker control | Syncfusion
description: SfDateTimeEdit allows user to edit the DateTime in the text with the support of minimum and maximum value validation, watermark, etc.,
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Windows Forms DateTimePicker (SfDateTimeEdit) Overview

The **SfDateTimeEdit** is a control that allows you to edit DateTime in the text or mask format with the support of minimum and maximum values validation, watermark, and globalization. It provides flexible options to display the date-time according to the required format.

![Overview of SfDateTimeEdit](overview_images/overview.png)

## Key Features

**Editing mode** - Supports the default text editing and mask mode that helps to restrict the date input in formatted values based on a date-time pattern.

**Date-range support** - Supports the maximum and minimum dates to prevent users from setting a date or time within a specified range.

**Globalization** - Supports different date-time formats and patterns based on cultures.

**Date validation** - Supports date validation and error messages due to invalid dates or when date range constraints are met.

**Accessibility** - Provides touch, keyboard, and mouse support to make applications available to a wide variety of users.

**Watermark** - Supports to display watermark text when a selected date is null.

**Testing** - Provides QTP add-in that contains custom libraries, which helps [QTP](https://help.syncfusion.com/windowsforms/testing/uft/supported-controls-and-methods#sfdatetimeedit) to recognize SfDateTimeEdit.


## Choose between different DateTime controls

Syncfusion WinForms suite comes up with the following different DateTime controls:

* [SfDateTimeEdit](https://help.syncfusion.com/windowsforms/datetimepicker/overview)
* [DateTimePickerAdv](https://help.syncfusion.com/windowsforms/classic/datetimepicker/overview)

### SfDateTimeEdit

The [SfDateTimeEdit](https://help.syncfusion.com/windowsforms/datetimepicker/overview) control allows you to edit date-time in the text or mask format with minimum and maximum values validation, watermark, and globalization support. Provides flexible options to display date-time according to the required format.

### DateTimePickerAdv

[DateTimePickerAdv](https://help.syncfusion.com/windowsforms/classic/datetimepicker/overview) is an advanced DateTimePicker control. Provides an easy way to implement a culture based DateTimePicker in an application. Support for a string to be displayed when the user does not want a specific date selected.

### SfDateTimeEdit vs DateTimePickerAdv

Both SfDateTimeEdit and DateTimePickerAdv controls are used for the same purpose. But, the SfDateTimeEdit control offers rich set of features over DateTimePickerAdv. To customize the updown and dropdown buttons, use DateTimePickerAdv. For date range support, watermark, navigation, and date validation, use SfDateTimeEdit.

The list of some of the specific API differences between SfDateTimeEdit and DateTimePickerAdv is as follows.

<table>
<tr>
<th>
SfDateTimeEdit
</th>
<th>
DateTimePickerAdv
</th>
<th>
Description
</th>
</tr>
<tr>
<td>
AllowNull
</td>
<td>
EnableNullDate
</td>
<td>
Sets the value to null in mask mode.
</td>
</tr>
<tr>
<td>
Watermark
</td>
<td>
NullString
</td>
<td>
Specifies the text visible when the date is not selected.
</td>
</tr>
<tr>
<td>
MinDateTime
</td>
<td>
MinValue
</td>
<td>
Sets the time less than specific date-time.
</td>
</tr>
<tr>
<td>
MaxDateTime
</td>
<td>
MaxValue
</td>
<td>
Sets the time greater than specific date-time.
</td>
</tr>
<tr>
<td>
DateTimePattern
</td>
<td>
Format
</td>
<td>
Displays the format of the date-time.
</td>
</tr>
</table>

The list of features in SfDateTimeEdit over DateTimePickerAdv is as follows.

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
DateTimeEditingMode
</td>
<td>
Support for free style editing with different {{'[mode](https://help.syncfusion.com/windowsforms/datetimepicker/editing-support)'| markdownify }} (mask and default text edit modes).
</td>
</tr>
<tr>
<td>
Date validation
</td>
<td>
Shows error messages on the invalid dates or when date-range constraints are met. To learn more about date validation in SfDateTimeEdit, refer to {{'[here](https://help.syncfusion.com/windowsforms/datetimepicker/validation)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Value change by mouse wheel
</td>
<td>
Changes the value by mouse wheel action. To learn more about value changes by mouse wheel in SfDateTimeEdit, refer to {{'[here](https://help.syncfusion.com/windowsforms/datetimepicker/navigation#change-value-by-mouse)'| markdownify }}.
</td>
</tr>
</table>