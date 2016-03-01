---
layout: post
title: How to identify the current selected date at run time? | Windows Forms | Syncfusion
description: how to identify the current selected date at run time?
platform: windowsforms
control: CalendarDateTime
documentation: ug
---
# How to identify the current selected date at run time?

The MonthCalendarAdv gives an array of selected dates. So if u want to get only one date choose the first element from that array. Also set AllowMultipleSelection property to false. The DateSelected Event is fired after the user had completed the selection.



{% highlight c#  %}

private void monthCalendarAdv1_DateSelected(object sender,EventArgs e)

{

   // DateSelected event is fired and selected dates will be displayed.

  MessageBox.Show("Selected Date: " + monthCalendarAdv1.SelectedDates[0].ToString());

}




{% endhighlight  %}
{% highlight vbnet  %}


Private Sub monthCalendarAdv1_DateSelected(ByVal sender As Object, ByVal e As EventArgs)



   ' DateSelected event is fired and selected dates will be displayed.

MessageBox.Show("Selected Date: " + monthCalendarAdv1.SelectedDates[0].ToString()) 

End Sub


{% endhighlight  %}
![](FAQ_images/Overview_img179.jpeg) 
