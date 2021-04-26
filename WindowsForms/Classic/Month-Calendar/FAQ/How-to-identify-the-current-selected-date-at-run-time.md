---
layout: post
title: Identify the current selected date | WindowsForms | Syncfusion
description: Learn about How to Identify the Current Selected Date at Run Time support in Syncfusion Windows Forms MonthCalendarAdv(Classic) control and more details.
platform: WindowsForms
control: CalendarDateTime
documentation: ug
---
# How to Identify the Current Selected Date at Run Time in Windows Forms MonthCalendarAdv(Classic)

The MonthCalendarAdv gives an array of selected dates. If you want to get only one date, choose the first element from that array. Also, set [AllowMultipleSelection](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html#Syncfusion_Windows_Forms_Tools_MonthCalendarAdv_AllowMultipleSelection) property to `false`. The [DateSelected](https://help.syncfusion.com/cr/windowsforms/Syncfusion.Windows.Forms.Tools.MonthCalendarAdv.html) Event is fired after the user had completed the selection.

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
