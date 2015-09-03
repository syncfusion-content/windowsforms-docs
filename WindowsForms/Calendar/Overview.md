---
layout: post
title: Overview
description: Overview
platform: windowsforms
control: Calendar
documentation: ug
---
# Overview

DateTimePickerAdv control contains embedded calendar control which pops-up on clicking the dropdown button at the end of the control. The popup calendar is a MonthCalendarAdv control and hence supports all the properties of the MonthCalendarAdv control. These properties of the calendar can be accessed using DateTimePickerAdv.Calendar.TodayButton _(for example)_property. 

![](Calendar_Images/Overview_img201.jpeg) 





Additionally, the calendar popup can be customized using the DateTimePickerAdv properties. Refer Customizing the Calendar topic.

## Day Names

In the calendar, we can specify whether shortest day names can be used or not using UseShortestDayNames property. By default it is true.



{% highlight c#  %}

this.dateTimePickerAdv1.UseShortestDayNames = false;


{% endhighlight   %}


{% highlight vbnet  %}

Me.dateTimePickerAdv1.UseShortestDayNames = False
{% endhighlight   %}

## Buttons in Calendar

We can specify the visibility of the None button using NoneButtonVisible property. Default value is true. 



{% highlight c#  %}

this.dateTimePickerAdv1.NoneButtonVisible = false;

{% endhighlight  %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.NoneButtonVisible = False

{% endhighlight  %}
> Note: None button will not be visible when EnableNullDate property is set to false. See_ Null Value Settings _to know about EnableNullDate property.
