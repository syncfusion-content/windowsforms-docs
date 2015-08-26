---
layout: post
title: Scroll Buttons
description: scroll buttons
platform: windowsforms
control: CalendarDateTime 
documentation: ug
---
# Scroll Buttons

Scroll Button images

The default scroll button images can be replaced with custom images using the LeftScrollButtonImage and RightScrollButtonImage properties. The properties related to scroll buttons are as follows.

_Table172: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv  Properties</th><th>
Description</th></tr>
<tr>
<td>
LeftScrollButtonImage</td><td>
Specifies Image for left scroll button.</td></tr>
<tr>
<td>
RightftScrollButtonImage</td><td>
Specifies Image for right scroll button.</td></tr>
<tr>
<td>
StretchScrollImage</td><td>
Specifies whether the image for scroll buttons is stretched to fit the size of the scroll button.</td></tr>
<tr>
<td>
ScrollButtonSize</td><td>
Specifies the size of the scroll buttons.</td></tr>
</table>




{% highlight c#  %}

this.monthCalendarAdv1.LeftScrollButtonImage = ((System.Drawing.Image)(resources.GetObject("monthCalendarAdv1.LeftScrollButtonImage")));

this.monthCalendarAdv1.RightScrollButtonImage = ((System.Drawing.Image)(resources.GetObject("monthCalendarAdv1.RightScrollButtonImage")));

this.monthCalendarAdv1.ScrollButtonSize = new System.Drawing.Size(30, 25);

this.monthCalendarAdv1.StretchScrollImage = false;


{% endhighlight %}
{% highlight vbnet  %}




Me.monthCalendarAdv1.LeftScrollButtonImage = DirectCast((resources.GetObject("monthCalendarAdv1.LeftScrollButtonImage")), System.Drawing.Image) 

Me.monthCalendarAdv1.RightScrollButtonImage = DirectCast((resources.GetObject("monthCalendarAdv1.RightScrollButtonImage")), System.Drawing.Image) 

Me.monthCalendarAdv1.ScrollButtonSize = New System.Drawing.Size(30, 25) 

Me.monthCalendarAdv1.StretchScrollImage = False 

{% endhighlight   %}

![](CalendarDateTime_images/Overview_img159.jpeg) 

