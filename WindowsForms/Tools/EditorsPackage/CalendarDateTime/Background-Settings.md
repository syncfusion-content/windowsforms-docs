---
layout: post
title: Background Settings
description: background settings
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Background Settings

Background image for the MonthCalendarAdv is specified in BackgroundImage property.



{% highlight c# %}

this.monthCalendarAdv1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("monthCalendarAdv1.BackgroundImage")));

this.monthCalendarAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;


{% endhighlight  %}
{% highlight vbnet %}




Me.monthCalendarAdv1.BackgroundImage = DirectCast((resources.GetObject("monthCalendarAdv1.BackgroundImage")), System.Drawing.Image) 

Me.monthCalendarAdv1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch 

{% endhighlight  %}

![](CalendarDateTime_images/Overview_img138.jpeg) 



See Also

Border Styles, Visual Settings