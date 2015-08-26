---
layout: post
title: Month Settings
description: month settings
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Month Settings

## Navigation at RunTime

At run time, you have options to move to the next month or previous month using the left or right scroll buttons and also using the context menu displayed, when you click on the month of the calendar. To specify images for individual months in the menu, use MonthImageList property.

![](CalendarDateTime_images/Overview_img165.jpeg) 






{% highlight c#  %}
this.monthCalendarAdv1.MonthImageList = this.imageList1;


{% endhighlight  %}
{% highlight vbnet %}




Me.monthCalendarAdv1.MonthImageList = Me.imageList1
{% endhighlight   %}


![](CalendarDateTime_images/Overview_img166.jpeg) 



## Foreground Color for Inactive Months

The below property sets the color for the inactive months.

_Table175: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
InactiveMonthColor</td><td>
The previous or next month dates of the current month will be inactive in the MonthCalendarAdv control. This property specifies color of those inactive month dates.</td></tr>
</table>




{% highlight c#  %}

this.monthCalendarAdv1.InactiveMonthColor = System.Drawing.Color.InactiveCaptionText;


{% endhighlight   %}
{% highlight vbnet  %}




Me.monthCalendarAdv1.InactiveMonthColor = System.Drawing.Color.InactiveCaptionText
{% endhighlight   %}


![](CalendarDateTime_images/Overview_img167.jpeg) 



## First Day of the Week

MonthCalendarAdv lets you specify the first day to be displayed in a week using FirstDayOfWeek property. Default will be Sunday.


{% highlight c#  %}


this.monthCalendarAdv1.FirstDayOfWeek = Day.Monday;


{% endhighlight  %}


{% highlight vbnet %}

Me.monthCalendarAdv1.FirstDayOfWeek = Day.Monday

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img168.jpeg) 

