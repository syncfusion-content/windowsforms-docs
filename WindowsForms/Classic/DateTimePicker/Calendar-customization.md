---
layout: post
title: Customizing the Calendar | WindowsForms | Syncfusion
description: Learn here about how to customizing the popup calendar in the Windows Forms DateTimePickerAdv control.
platform: WindowsForms
control: DateTimePickerAdv
documentation: ug
---
# Customizing the Calendar

DateTimePickerAdv control has properties which can improve the look and feel of the popup calendar. This section discusses various appearance settings available for the calendar.

## Overview

DateTimePickerAdv control contains embedded calendar control which pops-up on clicking the dropdown button at the end of the control. The popup calendar is a MonthCalendarAdv control and hence supports all the properties of the MonthCalendarAdv control. These properties of the calendar can be accessed using DateTimePickerAdv.Calendar.TodayButton _(for example)_property. 

![Month Calendar for Windows Forms](Calendar_Images/Overview_img201.jpeg) 

Additionally, the calendar popup can be customized using the DateTimePickerAdv properties. Refer Customizing the Calendar topic.

## Day Names

In the calendar, we can specify whether shortest day names can be used or not using UseShortestDayNames property. By default it is true.

{% tabs %}

{% highlight c# %}

this.dateTimePickerAdv1.UseShortestDayNames = false;

{% endhighlight %}

{% highlight vb %}

Me.dateTimePickerAdv1.UseShortestDayNames = False

{% endhighlight %}

{% endtabs %}

## Buttons in Calendar

We can specify the visibility of the None button using NoneButtonVisible property. Default value is true. 

{% tabs %}

{% highlight c# %}

this.dateTimePickerAdv1.NoneButtonVisible = false;

{% endhighlight %}

{% highlight vb %}

Me.dateTimePickerAdv1.NoneButtonVisible = False

{% endhighlight %}

{% endtabs %}

N> None button will not be visible when EnableNullDate property is set to false. See_ Null Value Settings _to know about EnableNullDate property.

## Background Settings

The background of the Calendar can be customized using the [CalendarMonthBackground]() and [CalendarTitleBackColor]() properties of DateTimePickerAdv.

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.CalendarMonthBackground = System.Drawing.Color.OldLace;
this.dateTimePickerAdv1.CalendarTitleBackColor = System.Drawing.Color.Wheat;

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.CalendarMonthBackground = System.Drawing.Color.OldLace
Me.dateTimePickerAdv1.CalendarTitleBackColor = System.Drawing.Color.Wheat

{% endhighlight %}

{% endtabs %}

![DateTimePickerAdv background customization](Calendar_Images/Overview_img203.jpeg) 

## Foreground Settings

The foreground appearance can be customized using the below properties.

* [CalendarFont](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CalendarFont.html)
* [CalendarForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CalendarForeColor.html)
* [CalendarTitleForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CalendarTitleForeColor.html)
* [CalendarTrailingForeColor](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CalendarTrailingForeColor.html)

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.CalendarFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Italic);
this.dateTimePickerAdv1.CalendarForeColor = System.Drawing.Color.SaddleBrown;
this.dateTimePickerAdv1.CalendarTitleForeColor = System.Drawing.Color.SaddleBrown;
this.dateTimePickerAdv1.CalendarTrailingForeColor = System.Drawing.Color.Blue;

{% endhighlight %}

{% highlight VB %}

Me.dateTimePickerAdv1.CalendarFont = New System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Italic) 
Me.dateTimePickerAdv1.CalendarForeColor = System.Drawing.Color.SaddleBrown 
Me.dateTimePickerAdv1.CalendarTitleForeColor = System.Drawing.Color.SaddleBrown 
Me.dateTimePickerAdv1.CalendarTrailingForeColor = System.Drawing.Color.Blue

{% endhighlight %}

{% endtabs %}

![DateTimePickerAdv foreground customization](Calendar_Images/Overview_img204.jpeg) 
_CalendarFont = "Italic"; TrailingForeColor = "Blue"_

## Calendar Size

The default size of the popup calendar can be changed using the below properties.

* [CalendarSize](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CalendarSize.html)
* [CalendarSizeToFit](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.DateTimePickerAdv~CalendarSizeToFit.html)

{% tabs %}

{% highlight C# %}

this.dateTimePickerAdv1.CalendarSize = new System.Drawing.Size(250, 200);
this.dateTimePickerAdv1.CalendarSizeToFit = false;

{% endhighlight   %}

{% highlight VB  %}

Me.dateTimePickerAdv1.CalendarSize = New System.Drawing.Size(250, 200)
Me.dateTimePickerAdv1.CalendarSizeToFit = False

{% endhighlight  %}

{% endtabs %}

![Calendar size](Calendar_Images/Overview_img205.jpeg)

{% seealso %}

[Calendar Value](http://help.syncfusion.com/windowsforms/calendar/calendar-value)

{% endseealso %}