---
layout: post
title: Customizing the Calendar | WindowsForms | Syncfusion
description: customizing the calendar
platform: WindowsForms
control: Calendar
documentation: ug
---
# Customizing the Calendar

DateTimePickerAdv control has properties which can improve the look and feel of the popup calendar. This section discusses various appearance settings available for the calendar.

## Background Settings

The background of the Calendar can be customized using below properties.


<table>
<tr>
<th>
DateTimePickerAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
CalendarMonthBackground</td><td>
Sets the background color for the popup calendar.</td></tr>
<tr>
<td>
CalendarTitleBackColor</td><td>
Sets the background of the calendar header.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.CalendarMonthBackground = System.Drawing.Color.OldLace;

this.dateTimePickerAdv1.CalendarTitleBackColor = System.Drawing.Color.Wheat;



{% endhighlight   %}
{% highlight vbnet  %}


Me.dateTimePickerAdv1.CalendarMonthBackground = System.Drawing.Color.OldLace

Me.dateTimePickerAdv1.CalendarTitleBackColor = System.Drawing.Color.Wheat

{% endhighlight  %}

![](Calendar_Images/Overview_img203.jpeg) 



## Foreground Settings

The foreground appearance can be customized using the below properties.


<table>
<tr>
<th>
DateTimePickerAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
CalendarFont</td><td>
Sets font style for the text in the popup calendar.</td></tr>
<tr>
<td>
CalendarForeColor</td><td>
Sets the fore color of the popup calendar.</td></tr>
<tr>
<td>
CalendarTitleForeColor</td><td>
Specifies the fore color of the calendar header.</td></tr>
<tr>
<td>
CalendarTrailingForeColor</td><td>
Specifies the fore color of the inactive month date.</td></tr>
</table>



{% highlight c#  %}


this.dateTimePickerAdv1.CalendarFont = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Italic);

this.dateTimePickerAdv1.CalendarForeColor = System.Drawing.Color.SaddleBrown;

this.dateTimePickerAdv1.CalendarTitleForeColor = System.Drawing.Color.SaddleBrown;

this.dateTimePickerAdv1.CalendarTrailingForeColor = System.Drawing.Color.Blue;

{% endhighlight   %}
{% highlight vbnet  %}





Me.dateTimePickerAdv1.CalendarFont = New System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Italic) 

Me.dateTimePickerAdv1.CalendarForeColor = System.Drawing.Color.SaddleBrown 

Me.dateTimePickerAdv1.CalendarTitleForeColor = System.Drawing.Color.SaddleBrown 

Me.dateTimePickerAdv1.CalendarTrailingForeColor = System.Drawing.Color.Blue

{% endhighlight  %}

![](Calendar_Images/Overview_img204.jpeg) 



_CalendarFont = "Italic"; TrailingForeColor = "Blue"_

## Calendar Size

The default size of the popup calendar can be changed using the below properties.


<table>
<tr>
<th>
DateTimePickerAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
CalendarSize</td><td>
Indicates size of the popup calendar.</td></tr>
<tr>
<td>
CalendarSizeToFit</td><td>
Indicates whether the calendar will size to fit according to the size of the days.</td></tr>
</table>




{% highlight c#  %}

this.dateTimePickerAdv1.CalendarSize = new System.Drawing.Size(250, 200);

this.dateTimePickerAdv1.CalendarSizeToFit = false;


{% endhighlight   %}
{% highlight vbnet  %}




Me.dateTimePickerAdv1.CalendarSize = New System.Drawing.Size(250, 200)

Me.dateTimePickerAdv1.CalendarSizeToFit = False

{% endhighlight  %}

![](Calendar_Images/Overview_img205.jpeg)



{% seealso %}

[Calendar Value](http://docs.syncfusion.com/windowsforms/calendar/calendar-value)

{% endseealso %}