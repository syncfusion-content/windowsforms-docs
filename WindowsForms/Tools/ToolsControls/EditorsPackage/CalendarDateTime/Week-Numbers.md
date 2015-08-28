---
layout: post
title: Week Numbers
description: week numbers
platform: windowsforms
control: CalendarDateTime 
documentation: ug
---
# Week Numbers

MonthCalendarAdv control can display unique week numbers for all the weeks in a year. This section discusses the properties which can customize the appearance of the week numbers.

## Foreground Settings

By default, week numbers will not be shown in the calendar. ShowWeekNumbers property should be set to true to display the week numbers. The font and fore color can be set using the below properties.

_Table167: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
WeekFont</td><td>
Gets or sets the font of the week numbers column.</td></tr>
<tr>
<td>
WeekTextColor</td><td>
Gets or sets the text color for week numbers column.</td></tr>
</table>




{% highlight c# %}

this.monthCalendarAdv1.ShowWeekNumbers = true;

this.monthCalendarAdv1.WeekFont = new System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));

this.monthCalendarAdv1.WeekTextColor = System.Drawing.Color.Blue;



{% endhighlight  %}
{% highlight vbnet %}



Me.monthCalendarAdv1.ShowWeekNumbers = True

Me.monthCalendarAdv1.WeekFont = New System.Drawing.Font("Courier New", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CByte((0))) 

Me.monthCalendarAdv1.WeekTextColor = System.Drawing.Color.Blue 

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img149.jpeg) 



## Gradient Background

By default the week numbers column has a gradient background. To customize the background manually, use WeekInterior property. 




{% highlight c# %}


this.monthCalendarAdv1.WeekInterior = new Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue);



{% endhighlight  %}
{% highlight vbnet %}



Me.monthCalendarAdv1.WeekInterior = New Syncfusion.Drawing.BrushInfo(Syncfusion.Drawing.GradientStyle.Vertical, System.Drawing.Color.AliceBlue, System.Drawing.Color.LightSteelBlue) 

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img150.jpeg) 
