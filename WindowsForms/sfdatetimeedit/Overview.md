---
layout: post
title: Overview of SfDateTimeEdit control | Windows Forms | Syncfusion
description: SfDateTimeEdit allows user to edit the DateTime in the text with the support of minimum and maximum value validation, watermark, etc.,
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Overview

The `SfDateTimeEdit` is a control that allows you to edit the `DateTime` in the text or mask format with the support of minimum and maximum value validation, watermark, and globalization. It provides flexible options to display the date-time according to the required format.

## Key features

* **Editing mode**: Supports default text editing and mask mode that helps to restrict the date input in formatted values based on a date-time pattern.

* **Date-range support**: Supports maximum and minimum dates to prevent users from setting a date or time within a specified range.

* **Globalization**: Supports different date-time formats and patterns based on cultures.

* **Date validation**: Supports date validation and error messages due to invalid dates or when date range constraints are met.

* **Accessibility**: Touch, keyboard, and mouse support to make applications available to a wide variety of users.

* **Watermark**: Supports to display watermark text when a selected date is null.

* **Testing**: Provides QTP add-in that contains custom libraries, which helps [QTP](https://help.syncfusion.com/windowsforms/testing/uft/supported-controls-and-methods#sfdatetimeedit) to recognize SfDateTimeEdit.


## Choose between different datetime controls

Syncfusion WinForms suite comes up with following different datetime namely,

* [SfDateTimeEdit](https://help.syncfusion.com/windowsforms/sfdatetimeedit/overview)
* [DateTimePickerAdv](https://help.syncfusion.com/windowsforms/datetimepickeradv/overview)

### SfDateTimeEdit

[SfDateTimeEdit](https://help.syncfusion.com/windowsforms/sfdatetimeedit/overview) is a control that allows you to edit the DateTime in the text or mask format with the support of minimum and maximum value validation, watermark and globalization. It provides flexible options to display the date-time according to the required format.

### DateTimePickerAdv

[DateTimePickerAdv](https://help.syncfusion.com/windowsforms/datetimepickeradv/overview) is an advanced DateTimePicker control. It provides an easy way to implement a culture based DateTimePicker in an application. It has support for a string to be displayed when user doesn’t want a specific date selected.

### SfDateTimeEdit vs DateTimePickerAdv

Both SfDateTimeEdit and DateTimePickerAdv controls used for same purpose. But SfDateTimeEdit control offers rich set of features over DateTimePickerAdv. When you want customizes the updown and dropdown buttons, you can use DateTimePickerAdv. When you want date-range support, watermark, navigation, date validation, you can use SfDateTimeEdit.

You can see the list of some of the specific API difference between SfDateTimeEdit and DateTimePickerAdv as follows:
<table>
<tr>
<td>
{{'**SfDateTimeEdit**'| markdownify }}
</td>
<td>
{{'**DateTimePickerAdv**'| markdownify }}
</td>
<td>
{{'**Description**'| markdownify }}
</td>
</tr>
<tr>
<td>
AllowNull
</td>
<td>
EnableNullDate
</td>
<td>
To set the value to null in the mask mode.
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
To Specifies the text visible when there is no date selected.
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
To set the time less than specific date time.
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
To set the time greater than specific date time.
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
To display the format of the datetime.
</td>
</tr>
</table>
Below are the list of features in SfDateTimeEdit over DateTimePickerAdv,
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
DateTimeEditingMode
</td>
<td>
SfDateTimeEdit provides support to free style editing with different {{'[mode](https://help.syncfusion.com/windowsforms/sfdatetimeedit/editing-support)'| markdownify }} (Mask and Default Text edit mode).
</td>
</tr>
<tr>
<td>
Date Validation
</td>
<td>
SfDateTimeEdit supports to shows error messages on invalid dates or when date-range constraints are met. To know more about date validation in SfDateTimeEdit, refer {{'[here](https://help.syncfusion.com/windowsforms/sfdatetimeedit/validation)'| markdownify }}.
</td>
</tr>
<tr>
<td>
Value change by mousewheel
</td>
<td>
SfDateTimeEdit supports to change the value by mousewheel action. To know more about value change by mousewheel in SfDateTimeEdit, refer {{'[here](https://help.syncfusion.com/windowsforms/sfdatetimeedit/navigation#change-value-by-mouse)'| markdownify }}.
</td>
</tr>
</table>