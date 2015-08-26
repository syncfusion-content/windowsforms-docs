---
layout: post
title: Day Settings
description: day settings
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Day Settings

MonthCalendarAdv has properties to customize the days displayed in the calendar. This section discusses those properties.

## Foreground Settings

The below properties deals with the foreground appearance of the dates.

_Table168: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DayNamesColor</td><td>
Specifies the fore color of the day names.</td></tr>
<tr>
<td>
DayNamesFont</td><td>
Specifies the font style of the day names.</td></tr>
<tr>
<td>
DaysFont</td><td>
Specifies the font style of the days / dates.</td></tr>
<tr>
<td>
DaysColor</td><td>
Specifies the fore color of the day names.</td></tr>
</table>




{% highlight c# %}

this.monthCalendarAdv1.DayNamesFont = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold);

this.monthCalendarAdv1.DaysNamesColor = Color.Black;

this.monthCalendarAdv1.DaysColor = System.Drawing.SystemColors.HotTrack;

this.monthCalendarAdv1.DaysFont = new System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular);

{% endhighlight  %}
{% highlight vbnet %}





Me.monthCalendarAdv1.DayNamesFont = New System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold) 

Me.monthCalendarAdv1.DaysNamesColor = Color.Black

Me.monthCalendarAdv1.DaysColor = System.Drawing.SystemColors.HotTrack 

Me.monthCalendarAdv1.DaysFont = New System.Drawing.Font("Courier New", 8.25F, System.Drawing.FontStyle.Regular) 

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img151.jpeg) 



## Height and Day Names Format

The height of the day header and the day name formats are specified using below properties.

_Table169: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
DayNamesHeight</td><td>
Sets the height of the days header. Default value is 17.</td></tr>
<tr>
<td>
UseShortestDayNames</td><td>
Specifies whether shortest day names are used or not. by default it is true.</td></tr>
</table>




{% highlight c# %}

this.monthCalendarAdv1.DayNamesHeight = 22;

this.monthCalendarAdv1.UseShortestDayNames = false;

{% endhighlight  %}
{% highlight vbnet %}





Me.monthCalendarAdv1.DayNamesHeight = 22

Me.monthCalendarAdv1.UseShortestDayNames = False

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img152.jpeg) 



## Gradient Background for Day Header

By default the day's header has a gradient background. We can change the default background style using DaysHeaderInterior property. 




{% highlight c# %}
this.monthCalendarAdv1.DaysHeaderInterior = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.AntiqueWhite, System.Drawing.Color.SandyBrown);


{% endhighlight  %}


{% highlight vbnet %}

Me.monthCalendarAdv1.DaysHeaderInterior = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.AntiqueWhite, System.Drawing.Color.SandyBrown)
{% endhighlight  %}


![](CalendarDateTime_images/Overview_img153.jpeg) 

