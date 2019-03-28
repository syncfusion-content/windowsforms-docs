---
layout: post
title: DateChanged event usage | WindowsForms | Syncfusion
description: which event will raise when the date in the datetimepickeradv is changed?
platform: WindowsForms
control: Calendar
documentation: ug
---
# Which event will raise when the date in the DateTimePickerAdv is changed?

Calendar [DateChanged](https://help.syncfusion.com/cr/cref_files/windowsforms/Syncfusion.Tools.Windows~Syncfusion.Windows.Forms.Tools.MonthCalendarAdv~DateChanged_EV.html) event is raised when a date in the DateTimePickerAdv is changed using the keys, or using the mouse.

{% highlight C#  %}
this.dateTimePickerAdv1.Calendar.DateChanged += new EventHandler(Calendar_DateChanged);
void Calendar_DateChanged(object sender, EventArgs e)
{
Console.WriteLine("Date Changed");
}
{% endhighlight   %}
{% highlight VB  %}
Me.dateTimePickerAdv1.Calendar.DateChanged += New EventHandler(Calendar_DateChanged)
Private Sub Calendar_DateChanged(ByVal sender As Object, ByVal e As EventArgs)
Console.WriteLine("Date Changed")
End Sub
{% endhighlight  %}