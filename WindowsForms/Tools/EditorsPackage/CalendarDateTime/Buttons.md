---
layout: post
title: Buttons
description: Buttons
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# Buttons

The MonthCalendarAdv control contains the below buttons. 

* LeftScrollButton, 
* RightScrollButton, 
* 'Today' button and 
* 'None' button.

To know about the placement of these buttons in the control, refer MonthCalendarAdv topic. Left and Right scroll buttons at the top of the control can have custom images. See Scroll Buttons for details.

Today and None buttons are displayed at the bottom of the calendar and they can be customized to set background image and font styles. This section will discuss the properties which controls the appearance and behavior of the MonthCalendarAdv.

_Table171: Property Table_

<table>
<tr>
<th>
MonthCalendarAdv Properties</th><th>
Description</th></tr>
<tr>
<td>
TodayButton</td><td>
Clicking this button at run time will move the focus to today's date in the calendar.</td></tr>
<tr>
<td>
NoneButton</td><td>
Clicking this button at run time, will remove the focus of the date in the calendar.</td></tr>
<tr>
<td>
BottomHeight</td><td>
The height of the bottom which contains the Today and None buttons are changed using this property. Default value is 20.</td></tr>
</table>

## Customizing Today and None Buttons

The "Today" and "None" buttons are like Essential Tools ButtonAdv controls and they support all the properties of ButtonAdv control. You can access those properties using MonthCalendarAdv.NoneButton.Visible which controls the visibility (for example).

![](CalendarDateTime_images/Overview_img157.jpeg) 





{% highlight c#  %}

//Hides the Today and None Buttons

monthCalendarAdv1.TodayButton.Visible=false;

monthCalendarAdv1.NoneButton.Visible=false;




{% endhighlight   %}
{% highlight vbnet  %}


'Hides the Today and None Buttons

monthCalendarAdv1.TodayButton.Visible=False

monthCalendarAdv1.NoneButton.Visible=False


{% endhighlight  %}
![](CalendarDateTime_images/Overview_img158.jpeg) 



See Also

ButtonAdv, Scroll Buttons