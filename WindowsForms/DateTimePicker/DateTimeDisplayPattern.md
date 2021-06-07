---
layout: post
title: Display Pattern in Windows Forms DateTimePicker | Syncfusion
description: Learn about Display Pattern support in Syncfusion Windows Forms DateTimePicker (SfDateTimeEdit) control, its elements, and more.
platform: WindowsForms
control: SfDateTimeEdit
documentation: ug
---

# Display Pattern in Windows Forms DateTimePicker (SfDateTimeEdit)

The [DateTimePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimePattern) helps you to specify the date-time display pattern for the SfDateTimeEdit. The display format of the date in the `SfDateTimeEdit` control can be customized by the pattern and custom display pattern properties.

## DateTime format

The `SfDateTimeEdit` control supports the following DateTime format: 

* LongDate
* LongTime
* ShortDate
* ShortTime
* FullDateTime
* MonthDay
* Custom
* ShortableDateTime
* UniversalShortableDateTime
* RFC1123
* YearMonth

![date time edit pattern](datetimepattern-images/allpattern.png)

The different display formats of the DateTime can be set by the [DateTimePattern](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_DateTimePattern) property. The following code snippet illustrates how to set the format as LongDate:

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new  Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate;

{% endhighlight  %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.LongDate

{% endhighlight  %}

{% endtabs %} 

![DateTimeEdit pattern](datetimepattern-images/datetimepattern_longdate.png)

## Custom display pattern

The custom pattern can be displayed in the `SfDateTimeEdit` control by using the [Format](https://help.syncfusion.com/cr/windowsforms/Syncfusion.WinForms.Input.SfDateTimeEdit.html#Syncfusion_WinForms_Input_SfDateTimeEdit_Format) property. Refer to the following list to create the custom format for the `SfDateTimeEdit`:

* d: Day of the month.
* ddd: Short name of day of the week.
* dddd: Full name of day of the week.
* M: The month, from 1 to 12.
* MMM: Short name of Month.
* MMMM: Long name of the Month.
* yy: Last two digit of year.
* yyyy: Full Year.
* hh: Hour.
* mm: Minutes.
* ss: Seconds.
* tt: The AM/PM Meridiem.

{% tabs %}

{% highlight C# %}

Syncfusion.WinForms.Input.SfDateTimeEdit dateTimeEdit = new Syncfusion.WinForms.Input.SfDateTimeEdit();

this.Controls.Add(dateTimeEdit);

dateTimeEdit.Value = new DateTime(2017, 07, 05);

dateTimeEdit.DateTimePattern = DateTimePattern.Custom;

//Setting Custom Pattern

dateTimeEdit.Format = "MM/dd/yy hh:mm:ss";

{% endhighlight %}

{% highlight VB %}

Dim dateTimeEdit As Syncfusion.WinForms.Input.SfDateTimeEdit = New Syncfusion.WinForms.Input.SfDateTimeEdit

Me.Controls.Add(dateTimeEdit)

dateTimeEdit.Value = New DateTime(2017, 7, 5)

dateTimeEdit.DateTimePattern = DateTimePattern.Custom

'Setting Custom Pattern

dateTimeEdit.Format = "MM/dd/yy hh:mm:ss"

{% endhighlight %}

{% endtabs %} 


![Custom date time pattern](datetimepattern-images/datetimepattern_custom.png)

N> The CustomPattern support can be enabled by setting the `DateTimePattern` to the `Custom`.
