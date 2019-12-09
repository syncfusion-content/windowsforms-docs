---
layout: post
title: Identify the current selected date | WindowsForms | Syncfusion
description: how to identify the current selected date at run time?
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# How to identify the current selected date at run time?

The MonthCalendarAdv gives an array of selected dates. If you want to get only one date, choose the first element from that array. Also, set [AllowMultipleSelection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~AllowMultipleSelection.html) property to `false`. The [DateSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~DateSelected_EV.html) Event is fired after the user had completed the selection.

{% tabs %}

{% highlight C# %}

private void monthCalendarAdv1_DateSelected(object sender,EventArgs e)

{

   // DateSelected event is fired and selected dates will be displayed.

  MessageBox.Show("Selected Date: " + monthCalendarAdv1.SelectedDates[0].ToString());

}




{% endhighlight %}

{% highlight VB %}


Private Sub monthCalendarAdv1_DateSelected(ByVal sender As Object, ByVal e As EventArgs)



   ' DateSelected event is fired and selected dates will be displayed.

MessageBox.Show("Selected Date: " + monthCalendarAdv1.SelectedDates[0].ToString()) 

End Sub


{% endhighlight %}

{% endtabs %}

![Current selected date identified](FAQ_images/Overview_img179.jpeg)
